import os
import re
import json as j

from json_extractor import simplify_json
import time
import json
import config
import glob
import traceback
import text_processor
import task_dispatcher
import page_reproducer
import device_operator
import copy
from call_graph_parser import CallGraphParser
from run_logger import logger
from app_info import AppInfo


def get_page_json():
    """
    Retrieves and simplifies the JSON hierarchy of the Android device.
    """
    for i in range(0, config.MAX_RETRY_TIMES):
        json_page = device_operator.device.dump_hierarchy()
        if len(json_page['children']) > 0:
            break
    return simplify_json(json_page)


def get_test_intents(test_file_dir):
    """
    Reads and returns the test intent from a text file.
    """
    test_file = open(test_file_dir, "r")
    test_intents = test_file.read()

    return test_intents


def extract_widgets(json_data):
    results = []

    def recurse(items):
        if isinstance(items, list):
            for item in items:
                recurse(item)
        elif isinstance(items, dict):
            if all(k in items for k in ['id', 'x', 'y', 'desc']):
                control_funs = items['control']
                results.append({
                    'id': items['id'],
                    'text': items['text'],
                    'type': items['type'],
                    'index': items['index'],
                    'x': items['x'],
                    'y': items['y'],
                    'width': items['width'],
                    'height': items['height'],
                    'desc': items['desc'],
                    'control': control_funs
                })
            if 'children' in items and items['children']:
                recurse(items['children'])

    recurse(json_data)
    return results


def remove_duplicates(dict_list):
    unique_list = []

    seen = set()

    for item in dict_list:
        key = (
            item['id'],
            item['text'],
            item['type'],
            item['width'],
            item['height'],
            item['desc'],
            tuple(item['control'])
        )

        if key not in seen:
            seen.add(key)
            unique_list.append(item)

    return unique_list


def get_pages_intentions(previous_page_json, cgp, target_app_info:AppInfo):
    global d
    d = device_operator.d
    current_page_json = '[]'
    for cnt in range(config.MAX_RETRY_TIMES):
        current_page_json = get_page_json()
        if current_page_json == '[]':
            if cnt == config.MAX_RETRY_TIMES - 2:
                page_reproducer.recover()
            if cnt == config.MAX_RETRY_TIMES - 1:
                raise RuntimeError("dump hierarchy empty")
            logger.info("dump hierarchy empty, begin to reproduce current page")
            page_reproducer.reproduce(d)
        else:
            break
    current_page_data = j.loads(current_page_json)

    current_page_widgets = remove_duplicates(extract_widgets(current_page_data))
    # logger.info("-----------")
    logger.info(
        "begin to extract context information for all widgets in the GUI interface: {}".format(current_page_widgets))
    logger.info("widgets number: {}".format(len(current_page_widgets)))
    current_page_widgets_with_cgp_semantics = []
    for i in range(len(current_page_widgets)):
        item = current_page_widgets[i]
        item['id'] = item['id'].replace(f'{target_app_info.packagename}:id/', '')
        id = item['id']

        if id == '':
            widget_info = item['desc']
            if widget_info == "":
                widget_info = item['text']
            if widget_info == "":
                widget_info = "widget id empty, type:{} coordinates:({}, {})" \
                    .format(item['type'], str(item['x']), str(item['y']))
        else:
            widget_info = "id:{}".format(id)
            if item['desc'] != "":
                widget_info += ", desc:{}".format(item['desc'])
            if item['text'] != "":
                widget_info += ", text:{}".format(item['text'])

        if widget_info == "":
            continue

        item['widget_info'] = widget_info
        activity_name, _ = cgp.get_activity_name(d.app_current()['activity'])
        interaction_semantic_dict = cgp.graph.get(activity_name, {}).get(id, {})
        for interaction in interaction_semantic_dict:
            semantic = interaction_semantic_dict[interaction]
            item['interaction'] = interaction
            item['semantic'] = semantic
            current_page_widgets_with_cgp_semantics.append(copy.deepcopy(item))
        if len(interaction_semantic_dict) == 0:
            current_page_widgets_with_cgp_semantics.append(copy.deepcopy(item))

    _, previous_activity_name = get_previous_activity_from_stack(target_app_info.packagename)
    current_page_intent = task_dispatcher.analyze_widget_contextual_semantics(previous_page_json, json.dumps(current_page_widgets_with_cgp_semantics), previous_activity_name)
    logger.info("current page's intentions: " + current_page_intent)
    return current_page_intent, current_page_json


def get_cur_action(markdown_text):
    """
    Extract the current action and code block from markdown text.
    """
    return text_processor.extract_select_action(markdown_text)


def get_cur_code(markdown_text):
    markdown_text = markdown_text.replace("python", "")
    markdown_text = markdown_text.replace("Python", "")
    markdown_text = markdown_text.replace("'···'", "")
    code = text_processor.extract_response(markdown_text)
    if code == '':
        code_ind1 = markdown_text.find("···\n")
        code_ind2 = -1
        code = ""
        if code_ind1 != -1:
            code_ind2 = markdown_text[code_ind1 + 4:].find("\n···")
            code = markdown_text[code_ind1 + 4: code_ind1 + 4 + code_ind2]
    logger.info("list of executable codes: " + code)

    return code


def update_actions(actions, cur_action):
    """
    Appends the current action to the list of actions.
    """
    if actions == "":
        actions = cur_action
    else:
        actions = actions + "\n" + cur_action


    return actions


def exec_cur_code(codes, cur_actions):
    """
    Executes the current code block if it's not empty and doesn't contain the word "assert."
    """
    exec_actions = text_processor.unique_list(cur_actions.splitlines())
    cnt = 0
    success_cnt = 0
    action_states = []
    previous_exec_action = ""
    for code in text_processor.unique_list(codes.splitlines()):
        if code.startswith("# ") or code.strip() == "":
            continue
        if cnt >= len(exec_actions):
            exec_action = previous_exec_action
        else:
            exec_action = exec_actions[cnt]
        cnt += 1
        if code.strip() != "" and "assert" not in code:
            action_state = None
            code = code.replace("long_click()", "long_click(1)")
            for i in range(0, config.MAX_RETRY_TIMES):
                try:
                    if exec_action.strip() in ["DONE", "NOT FOUND"]:
                        code = "pass"
                    device_operator.exec_code(code)
                    success_cnt += 1
                    logger.info("exec code success: {}".format(code))
                    action_state = (exec_action, 'Exec_Success', "Exec_Success")
                    break
                except Exception as e:
                    logger.info("exec code fail: {}, count: {}".format(code, str(i + 1)))
                    logger.info(e)
                    if i == config.MAX_RETRY_TIMES - 1:
                        action_state = (exec_action, 'Exec_Fail', str(e))
            if cnt <= len(exec_actions):
                action_states.append(action_state)
        else:
            if code.strip() != "" and cnt <= len(exec_actions):
                action_states.append((exec_action, 'Exec_Success', "Exec_Success"))
        previous_exec_action = exec_action
    return action_states, success_cnt


def sort_key(path):
    match = re.search(r'(\d+)\.\w+$', path)
    return int(match.group(1)) if match else float('inf')


def get_test_case_files(directory):
    java_files = glob.glob(os.path.join(directory, '**', '*.java'), recursive=True)
    kotlin_files = glob.glob(os.path.join(directory, '**', '*.kt'), recursive=True)
    json_files = glob.glob(os.path.join(directory, '**', '*.json'), recursive=True)
    return sorted(java_files + kotlin_files + json_files, key=sort_key)


def select_event_and_execute(markdown_file, test_semantics, actions, pages_intentions, target_app_info:AppInfo):
    """
    This function orchestrates a single step of the testing process.
    It fetches the JSON intention, matches the test semantics with it,
    writes the results to a markdown file, executes code if necessary,
    and updates the list of actions.
    """
    problematic_event, selected_failure_reasons = "", ""
    problematic_codes, codes_failure_reasons = "", ""
    success_cnt = None
    for _ in range(config.MAX_RETRY_TIMES):
        select_result = task_dispatcher.select_event(test_semantics, actions, pages_intentions, problematic_event, selected_failure_reasons)
        cur_action = get_cur_action(select_result)

        for __ in range(config.MAX_RETRY_TIMES):

            script = task_dispatcher.generate_script(cur_action, target_app_info.packagename, problematic_codes, codes_failure_reasons)

            executable_codes = get_cur_code(script)
            action_states, success_cnt = exec_cur_code(executable_codes, cur_action)

            validate_script_info, codes = task_dispatcher.validate_script(action_states)
            if not validate_script_info.get('has_issue', True):
                break
            problematic_codes, codes_failure_reasons = codes, validate_script_info['analysis']
            page_reproducer.reproduce(retreat_quantity=success_cnt)

        # temp_actions = actions
        actions_with_state = text_processor.concat_action_states(action_states, cur_action)
        #
        # temp_actions = update_actions(temp_actions, actions_with_state)
        validate_selected_event_info = task_dispatcher.validate_event(test_semantics, cur_action, actions, get_page_json())
        if validate_selected_event_info.get('component_selection_correct', False):
            break
        problematic_event, selected_failure_reasons = actions_with_state, validate_selected_event_info['analysis']
        page_reproducer.reproduce(retreat_quantity=success_cnt)

    text_processor.generate_markdown_procedure(markdown_file, pages_intentions, select_result +'\n' + script)
    actions_with_state = text_processor.concat_action_states(action_states, cur_action)
    logger.info("updating new actions:\n {}".format(cur_action))
    actions = update_actions(actions, actions_with_state)
    logger.info("-----------")
    logger.info("current executed actions:\n {}".format(actions))
    return actions


def begin_operate(markdown_file, test_semantics, target_app_info:AppInfo):
    """
    The main entry point of the script. It runs the testing process using a loop until a termination condition is met.
    """
    try:
        actions = ""
        text_processor.generate_markdown_test_semantic(markdown_file, test_semantics)

        cgp = assemble_call_graph(target_app_info)

        previous_page = ""
        while "DONE" not in actions and "NOT FOUND" not in actions:
            pages_intentions, previous_page = get_pages_intentions(previous_page, cgp, target_app_info)
            actions = select_event_and_execute(markdown_file, test_semantics, actions, pages_intentions, target_app_info)
        text_processor.generate_markdown_result(markdown_file, actions)
    except Exception as e:
        raise e
    finally:
        markdown_file.flush()


def get_previous_activity_from_stack(package_name):
    try:
        get_activity_stack_cmd = f'adb -s {config.device_name} shell dumpsys activity activities | grep -E "Hist.*{package_name}"'
        activity_stack = os.popen(get_activity_stack_cmd).read()

        pattern = r"\* Hist #\d+: ActivityRecord{\S+ u\d+ ([\w.]+)/([\w.]+) t\d+}"

        matches = re.findall(pattern, activity_stack)

        if len(matches) >= 2:
            package_name, activity_name = matches[1]  # 第二个元素，即栈顶下面的 Activity
            return package_name, activity_name
        else:
            return "", ""
    except Exception as e:
        return "", ""


def assemble_call_graph(target_app_info):
    global cgp_dict
    if target_app_info.app_number in cgp_dict:
        cgp = cgp_dict[target_app_info.app_number]
    else:
        logger.info("extracting call graph...")
        cgp = CallGraphParser(target_app_info.app_number)
        cgp_dict[target_app_info.app_number] = cgp

        for key in cgp.raw_graph:
            if '<?xml' in cgp.raw_graph[key]:
                layout_xml_semantic = task_dispatcher.analyze_layout_xml_semantic(cgp.raw_graph[key])
                cgp.raw_graph[key] = layout_xml_semantic

        if len(cgp.raw_graph) != 0:
            graph_widget_semantics = task_dispatcher.analyze_graph_widget_semantic(cgp.raw_graph)
            for graph_widget_semantic in graph_widget_semantics.split('\n'):
                if '|' not in graph_widget_semantic:
                    continue
                parts = graph_widget_semantic.split('|')
                if len(parts) != 4:
                    continue
                activity = parts[0]
                component = parts[1]
                interaction = parts[2]
                functionality = parts[3]
                cgp.assemble_graph(activity, component, interaction, functionality)
    return cgp


d = None
cgp_dict = {}


def migrate(source_test_case_path, markdown_file, package_name, target_app_info:AppInfo, device_number):
    device_operator.setup(device_number, package_name)
    device_operator.activate_device()
    start_time = time.time()
    global d
    d = device_operator.d

    logger.info("-----------")
    # get a11_b11 of ./dataset/result/craftdroid/a1-Browser/a11_b11 as Semantics file name
    test_semantics_file_path = (os.path.dirname(markdown_file.name) + "/"
                                + os.path.basename(os.path.dirname(markdown_file.name)) + "_Semantics_AutoTM.txt")
    test_semantics = task_dispatcher.get_test_semantics(test_semantics_file_path,
                                                        text_processor.read_file(source_test_case_path))
    logger.info("source_test_case_path: {}, semantics: {}".format(source_test_case_path, test_semantics))
    logger.info("-----------")

    device_operator.activate_device()
    device_operator.stop_app(package_name)
    device_operator.start_app(package_name)

    try:
        begin_operate(markdown_file, test_semantics, target_app_info)
    except Exception as e:
        logger.info("error occurred, error info: {}".format(e.__str__()))
        error_stack = traceback.format_exc()
        logger.info("error stack: {}".format(error_stack))
        text_processor.generate_markdown_exception(markdown_file, error_stack)
    finally:
        device_operator.stop_app(package_name)

        end_time = time.time()
        logger.info("time-consuming /s: {}".format(str(end_time - start_time)))

        markdown_file.flush()
        markdown_file.close()
        page_reproducer.clear()


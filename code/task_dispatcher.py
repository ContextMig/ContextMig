"""
call agents
"""

import config
import time
import os
import json
import text_processor
import agents.test_semantic_analyzer
import agents.event_contextual_semantic_analyzer
import agents.event_selector
import agents.test_script_generator
import agents.graph_widget_semantic_analyzer
import agents.layout_semantic_analyzer
import agents.widget_contextual_semantic_analyzer
import agents.event_selector_validator
import agents.test_script_validator
from run_logger import logger
from json_extractor import is_json

gpt_4 = config.openai_api_config


def request_agent(request_str, local_contest):
    i = 0

    while i < config.MAX_AGENT_RETRY_TIMES:
        try:
            exec(request_str, {}, local_contest)
        except Exception as ex:
            i += 1

            if "maximum context length is 819" in ex.__str__() and "gpt_4" in local_contest:
                gpt_4.model = "gpt-4-32k"
                local_contest["gpt_4"] = gpt_4
                logger.info("8192 tokens is not enough, switch to 32k model")
            else:
                logger.info("agent_error, retrying, error info: {}".format(ex.__str__()))
            logger.info("agent_error, sleeping " + str(3 * i) + " s, retry times: {}".format(i))
            time.sleep(3 * i)
            if i == config.MAX_AGENT_RETRY_TIMES:
                logger.info("retrying max reached, error info: {}".format(ex.__str__()))
                raise ex
            continue

        break
    gpt_4.model = config.model
    return local_contest['response']


def get_test_semantics(file_path, source_test_code):
    # logger.info("test_semantic_analyzer_agent processing...")
    if os.path.exists(file_path):
        with open(file_path, 'r') as file:
            test_semantics = file.read()
    else:
        local_contest = {'agents': agents, 'gpt_4': gpt_4, 'source_test_code': source_test_code}
        test_semantics = request_agent('response = agents.test_semantic_analyzer.analyze(gpt_4, source_test_code)',
                                       local_contest)
        with open(file_path, 'w') as file:
            file.write(test_semantics)
    return test_semantics


# def analyze_widget_contextual_info(json, next_page_json, previous_page, widget_info, widget_control):
#     # logger.info("event_contextual_semantic_analyzer processing...")
#     local_contest = {'agents': agents, 'gpt_4': gpt_4, 'previous_page': previous_page,
#                      'widget_info': widget_info, 'json': json, 'next_page_json': next_page_json, 'widget_control': widget_control}
#     widget_intent = request_agent(
#         'response = agents.event_contextual_semantic_analyzer.analyze(gpt_4, previous_page, widget_info, json, next_page_json, widget_control)',
#         local_contest)
#     widget_intent = text_processor.extract_response(widget_intent)
#     logger.info("intention: {}".format(widget_intent.strip()))
#     return widget_intent


def analyze_widget_contextual_semantics(previous_page, current_page, previous_activity_name):
    logger.info("widget_contextual_semantic_analyzer processing...")
    local_contest = {'agents': agents, 'gpt_4': gpt_4, 'previous_page': previous_page,
                     'previous_activity_name': previous_activity_name,
                     'current_page': current_page}
    res = request_agent(
        'response = agents.widget_contextual_semantic_analyzer.analyze(gpt_4, previous_page, current_page, previous_activity_name)',
        local_contest)
    widget_intent = text_processor.extract_response(res)
    if widget_intent.strip() == "":
        widget_intent = res
    # logger.info("intention: {}".format(widget_intent.strip()))
    return widget_intent


def analyze_layout_xml_semantic(layout_xml):
    local_contest = {'agents': agents, 'gpt_4': gpt_4, 'layout_xml': layout_xml}
    res = request_agent(
        'response = agents.layout_semantic_analyzer.analyze(gpt_4, layout_xml)',
        local_contest)
    return res


def analyze_graph_widget_semantic(graph_widget: dict):
    local_contest = {'agents': agents, 'gpt_4': gpt_4, 'graph_widget': json.dumps(graph_widget)}
    res = request_agent(
        'response = agents.graph_widget_semantic_analyzer.analyze(gpt_4, graph_widget)',
        local_contest)
    return res


def select_event(test_semantics, actions, pages_intentions, problematic_event, failure_reasons):
    """
    Uses the GPT-4 model to match the test semantics with the Page JSON intention.
    """
    logger.info("-----------")
    logger.info("event_selector processing...")
    if actions == "":
        actions = "The first operation has no executed actions"
    local_contest = {'agents': agents, 'gpt_4': gpt_4, 'test_semantics': test_semantics, 'actions': actions,
                     'pages_intentions': pages_intentions, 'problematic_event': problematic_event, 'failure_reasons': failure_reasons}
    select_result = request_agent(
        'response = agents.event_selector.select(gpt_4, test_semantics, actions, pages_intentions, problematic_event, failure_reasons)',
        local_contest)
    logger.info("select_result: {}".format(select_result))
    logger.info("-----------")

    return select_result


def generate_script(cur_action, package_name, problematic_codes, failure_reasons):
    """
    generate script via test_script_generator
    """
    # logger.info("-----------")
    logger.info("test_script_generator processing...")
    local_contest = {'agents': agents, 'gpt_4': gpt_4, 'cur_action': cur_action, 'package_name': package_name, 'problematic_codes': problematic_codes, 'failure_reasons': failure_reasons}
    script = request_agent(
        'response = agents.test_script_generator.generate(gpt_4, "d", cur_action, package_name, problematic_codes, failure_reasons)',
        local_contest)
    logger.info("script: {}".format(script))
    return script


def validate_script(action_states):
    codes, feedbacks = [], []
    for action_state in action_states:
        code = action_state[0]
        state = action_state[1]
        fail_reason = action_state[2]
        codes.append(code)
        feedbacks.append(state + "|" + fail_reason)
    # logger.info("-----------")
    logger.info("test_script_validator processing...")
    local_contest = {'agents': agents, 'gpt_4': gpt_4, 'codes': json.dumps(codes), 'feedbacks': json.dumps(feedbacks)}
    for _ in range(config.MAX_RETRY_TIMES):
        validate_info = request_agent(
            'response = agents.test_script_validator.validate(gpt_4, codes, feedbacks)',
            local_contest)
        validate_info = validate_info.replace("```json", "").replace("```", "")
        if is_json(validate_info):
            break
    logger.info("validate script info: {}".format(validate_info))
    return json.loads(validate_info), json.dumps(codes)


def validate_event(test_semantics, target_event, executed_sequence, current_environment):

    # logger.info("-----------")
    logger.info("event_selector_validator processing...")
    local_contest = {'agents': agents, 'gpt_4': gpt_4, 'test_semantics': test_semantics, 'target_event': target_event,
                     'executed_sequence': executed_sequence, 'current_environment': current_environment}
    for _ in range(config.MAX_RETRY_TIMES):
        validate_info = request_agent(
            'response = agents.event_selector_validator.validate(gpt_4, test_semantics, target_event, executed_sequence, current_environment)',
            local_contest)
        validate_info = validate_info.replace("```json", "").replace("```", "")
        if is_json(validate_info):
            break

    logger.info("validate event info: {}".format(validate_info))
    return json.loads(validate_info)

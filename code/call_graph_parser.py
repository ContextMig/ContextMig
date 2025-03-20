from collections import defaultdict

import pydot
import os
from layout_parser import get_layout_xml_content, get_layout_id_name


class CallGraphParser:

    def __init__(self, apk_name):
        self.apk_name = apk_name
        self.candidate_graph = {}
        self.raw_graph = self.get_graph_from_dot_file()
        # {activity：{widget_info: {operation：function}}}
        self.graph = {}

    def get_activity_name(self, activity_full_name):
        activity_name = activity_full_name.split(':')[0]
        return activity_name.split('.')[-1], activity_full_name.replace(activity_name + ":", "")

    def get_graph_from_dot_file(self):
        apk_folder = os.path.join('../dataset/android_reverse_resource', self.apk_name)
        graphs = pydot.graph_from_dot_file(os.path.join(apk_folder, 'atm/atm.gv'))
        # key: source_activity & widget, value: target_activity
        activity_dict = {}
        for edge in graphs[0].get_edges():
            widget_info = edge.get_attributes()['label'].replace('"', '')
            # if 'SYMBOLIC' in widget_info:
            #     # GUI, IPC, SIMPLE, SYMBOLIC
            #     continue
            if "Root" in edge.get_source():
                continue
            widget_id = widget_info.replace('GUI (', '').replace(')', '')
            activity_full_name = edge.get_destination().replace('"', '')
            target_activity, _ = self.get_activity_name(activity_full_name)
            base_path = "../dataset/android_reverse_resource/" + self.apk_name
            layout_xml_content = get_layout_xml_content(target_activity, base_path)

            source_activity, operation = self.get_activity_name(edge.get_source().replace('"', ''))
            value = activity_full_name if layout_xml_content is None else layout_xml_content
            if source_activity == target_activity:
                value = activity_full_name
            key = source_activity + "|" + operation

            if widget_id.isdigit():
                widget_id = get_layout_id_name(int(widget_id), base_path + "/res/values/public.xml")
            else:
                self.candidate_graph[key] = value
                continue
            if widget_id is None:
                self.candidate_graph[key] = value
                continue
            key = key + "|" + widget_id
            activity_dict[key] = value
        return activity_dict

    def assemble_graph(self, activity, widget_info, operation, function):
        if activity not in self.graph:
            widget_function_dict = {operation: function}
            self.graph[activity] = {widget_info: widget_function_dict}
        else:
            widget_info_dict = self.graph[activity]
            if widget_info not in widget_info_dict:
                widget_info_dict[widget_info] = {operation: function}
            else:
                widget_function_dict = widget_info_dict[widget_info]
                if operation not in widget_function_dict:
                    widget_function_dict[operation] = function






if __name__ == '__main__':
    cgp = CallGraphParser('s3')
    # hex(16908332)

    cgp.assemble_graph("MainActivity", "ok", "click", "confrim")
    cgp.assemble_graph("MainActivity", "ok", "longclick", "doubleConfrim")
    cgp.assemble_graph("MainActivity", "canel", "click", "cancelOperation")

    pass

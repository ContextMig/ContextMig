"""
When the page rollback fails, the reproducer restores the page
"""
import time
from json_extractor import simplify_json, _AndroidDevice, get_android_hierarchy

operation_collector = ""


def collect(operation):
    global operation_collector
    operation_collector += operation + '\n'


def reproduce(d=None, retreat_quantity=None):
    global operation_collector
    executed_codes = operation_collector.splitlines()
    if retreat_quantity is not None:
        executed_codes = executed_codes[:-retreat_quantity] if retreat_quantity > 0 else executed_codes
        operation_collector = "\n".join(executed_codes)

    # executed_codes = operation_collector.splitlines()
    for code in executed_codes:
        try:
            exec(code)
            if "enter" in code or "start" in code:
                time.sleep(3)
            else:
                time.sleep(1)
        except Exception as ex:
            pass


def recover():
    """
    recover to start page
    """
    global operation_collector
    executed_codes = operation_collector.splitlines()
    new_lines = ""
    for code in executed_codes:
        new_lines += code + '\n'
        if "app_start(" in code:
            break
    operation_collector = new_lines


def clear():
    global operation_collector
    operation_collector = ""

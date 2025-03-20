"""
interact with the device
"""
import os
import time
import page_reproducer
from json_extractor import simplify_json, _AndroidDevice, get_android_hierarchy

device = None
d = None
device_name = None
package_name = None


def setup(device_number, package):
    global device_name
    global package_name
    device_name = device_number
    package_name = package


def activate_device():
    global device
    global d
    global device_name
    global package_name
    device = _AndroidDevice(device_name, package_name)
    d = device.d
    d.implicitly_wait(5)


def start_app(launch_activity):
    # global device_name
    # start_app_cmd = "adb -s " + device_name + " shell am start -n " + launch_activity
    # os.system(start_app_cmd)
    # time.sleep(5)
    # page_reproducer.collect(f'os.system("{start_app_cmd}")')
    global d
    d.app_start(launch_activity)
    time.sleep(5)
    page_reproducer.collect(f'd.app_start("{launch_activity}", stop=True)')


def stop_app(package_name):
    # global device_name
    # stop_app_cmd = "adb -s " + device_name + " shell am force-stop " + package_name
    # os.system(stop_app_cmd)
    # time.sleep(5)
    # page_reproducer.collect(f'os.system("{stop_app_cmd}")')
    global d
    d.app_stop(package_name)
    time.sleep(3)
    d.press('home')
    page_reproducer.collect(f'd.app_stop("{package_name}")')
    page_reproducer.collect("d.press('home')")


def exec_code(code):
    exec(code)
    time.sleep(3)
    page_reproducer.collect(code)

#
# def test(package_name):
#     global d
#     # start_app(package_name)
#     # d(resourceId="org.secuso.privacyfriendlytodolist:id/fab_new_task").click()
#     # time.sleep(1)
#     xml = get_android_hierarchy(d, "org.secuso.privacyfriendlytodolist")
#     print(xml)
#     d.click(55, 162, 1)
#     time.sleep(3)

# def clear_test_a23(package_name):
#     global d
#     d.app_start("org.secuso.privacyfriendlytodolist", stop=True)
#     time.sleep(1)
#
#     try:
#         d(text="Sample Todo").long_click(1)
#         time.sleep(0.5)
#         d(text="Delete To-Do Task").click(1)
#         time.sleep(0.5)
#     except Exception as e:
#         pass
# def clear_test_a24(package_name):
#     clear_test_to_a24_only_1()
#     global d
#     d.app_start("kdk.android.simplydo", stop=True)
#     time.sleep(1)
#     d.implicitly_wait(10)
#
#     for i in range(1):
#         try:
#             d(text="Sample Todo").long_click(1)
#             time.sleep(0.5)
#             d(text="Delete").click(1)
#             time.sleep(0.5)
#             d(text="Yes").click(1)
#             time.sleep(0.5)
#         except Exception as e:
#             pass


def get_page_json():
    """
    Retrieves and simplifies the JSON hierarchy of the Android device.
    """

    # logger.info("dump hierarchy ...")
    global device
    for i in range(0, 10):
        time.sleep(1)
        activate_device()
        json_page = device.dump_hierarchy()
        if len(json_page['children']) > 0:
            break

    # logger.info("hierarchy_page_json: " + str(json_page))

    # logger.info("hierarchy dumped.")

    return simplify_json(json_page)
#
# def clear_test_a24_1(package_name):
#     global d
#     clear_test_to_a24_only_1()
#     d.app_start("kdk.android.simplydo", stop=True)
#     time.sleep(1)
#
#     for i in range(3):
#         try:
#
#             pre_json = get_page_json()
#             d(text="Sample Todo").long_click(1)
#             time.sleep(3)
#             after_json = get_page_json()
#             pass
#         except Exception as e:
#             pass
# #
# def clear_test_to_a24_only_1():
#     global d
#     d.app_start("kdk.android.simplydo", stop=True)
#     time.sleep(1)
#
#     for i in range(15):
#         xml = get_android_hierarchy(d, "kdk.android.simplydo")
#         pre_json = simplify_json(xml)
#         c = pre_json.count("Sample")
#         if c == 0:
#             return
#
#         for i in range(c - 1):
#             try:
#                 d(text="Sample Todo").long_click(1)
#                 time.sleep(0.5)
#                 d(text="Delete").click(1)
#                 time.sleep(0.5)
#                 d(text="Yes").click(1)
#                 time.sleep(0.5)
#             except Exception as e:
#                 pass
#
#     page_reproducer.reproduce(d)
#
#     xml = get_android_hierarchy(d, "kdk.android.simplydo")
#     pre_json = simplify_json(xml)
#     c = pre_json.count("Sample")
#     if c == 2:
#         for i in range(2):
#             try:
#                 d(text="Sample Todo").long_click(1)
#                 time.sleep(0.5)
#                 d(text="Delete").click(1)
#                 time.sleep(0.5)
#                 d(text="Yes").click(1)
#                 time.sleep(0.5)
#             except Exception as e:
#                 pass
#     page_reproducer.reproduce(d)
#
# def clear_test_a22(package_name):
#     clear_test_to_a22_only_1()
#     global d
#     package = "douzifly.list"
#     d.app_start(package, stop=True)
#     time.sleep(3)
#
#     for i in range(1):
#         try:
#
#             d.swipe(35, 99, 35 + 256, 99)
#             time.sleep(2)
#             d(text="DELETE").click()
#             time.sleep(2)
#             # d(text="Yes").click(1)
#             # time.sleep(0.5)
#         except Exception as e:
#             pass
#
# def clear_test_to_a22_only_1():
#     global d
#     package = 'douzifly.list'
#     d.app_start(package, stop=True)
#     time.sleep(1)
#
#     for i in range(15):
#         activate_device()
#         xml = get_android_hierarchy(d, package)
#         pre_json = simplify_json(xml)
#         c = pre_json.count("Sample")
#         if c == 0:
#             page_reproducer.reproduce(d)
#             return
#
#         for i in range(c - 1):
#             try:
#                 d.swipe(35, 99, 35 + 256, 99)
#                 time.sleep(2)
#                 d(text="DELETE").click()
#                 time.sleep(2)
#             except Exception as e:
#                 pass
#
#     page_reproducer.reproduce(d)
#
#     activate_device()
#     xml = get_android_hierarchy(d, package)
#     pre_json = simplify_json(xml)
#     c = pre_json.count("Sample")
#     if c >= 1:
#         for i in range(c):
#             try:
#                 d.swipe(35, 99, 35 + 256, 99)
#                 time.sleep(2)
#                 d(text="DELETE").click()
#                 time.sleep(2)
#             except Exception as e:
#                 pass
#     page_reproducer.reproduce(d)
#
# def clear_test_a21(package_name):
#     clear_test_to_a21_only_1()
#     global d
#     package = "com.rubenroy.minimaltodo"
#     d.app_start(package)
#     time.sleep(3)
#
#     for i in range(1):
#         try:
#             d.swipe(35, 99, 35 + 256, 99)
#             time.sleep(5)
#             # d(text="Yes").click(1)
#             # time.sleep(0.5)
#         except Exception as e:
#             pass
#
# def clear_test_to_a21_only_1():
#     global d
#     package = 'com.rubenroy.minimaltodo'
#     d.app_start(package, stop=True)
#     time.sleep(1)
#
#     for i in range(15):
#         activate_device()
#         xml = get_android_hierarchy(d, package)
#         pre_json = simplify_json(xml)
#         c = pre_json.count("Sample")
#         if c == 0:
#             page_reproducer.reproduce(d)
#             return
#
#         for i in range(c - 1):
#             try:
#                 d.swipe(35, 99, 35 + 256, 99)
#                 time.sleep(3)
#             except Exception as e:
#                 pass
#
#     d.press('home')
#     time.sleep(5)
#     page_reproducer.reproduce(d)
#
#     activate_device()
#     xml = get_android_hierarchy(d, package)
#     pre_json = simplify_json(xml)
#     c = pre_json.count("Sample")
#     if c >= 1:
#         for i in range(c):
#             try:
#                 d.swipe(35, 99, 35 + 256, 99)
#                 time.sleep(3)
#             except Exception as e:
#                 pass
#     d.press('home')
#     time.sleep(5)
#     page_reproducer.reproduce(d)
#
# def clear_test_a23(package_name):
#     clear_test_to_a23_only_1()
#     global d
#     package = "org.secuso.privacyfriendlytodolist"
#     d.app_start(package)
#     time.sleep(3)
#
#     for i in range(1):
#         try:
#             d(text="Sample Todo").long_click(1)
#             time.sleep(0.5)
#             d(text="Delete To-Do Task").click()
#             time.sleep(0.5)
#         except Exception as e:
#             pass
#
# def clear_test_to_a23_only_1():
#     global d
#     package = 'org.secuso.privacyfriendlytodolist'
#     d.app_start(package, stop=True)
#     time.sleep(1)
#
#     for i in range(15):
#         activate_device()
#         xml = get_android_hierarchy(d, package)
#         pre_json = simplify_json(xml)
#         c = pre_json.count("Sample Todo")
#         if c == 0:
#             page_reproducer.reproduce(d)
#             return
#
#         for i in range(c - 1):
#             try:
#                 d(text="Sample Todo").long_click(1)
#                 time.sleep(0.5)
#                 d(text="Delete To-Do Task").click()
#                 time.sleep(0.5)
#             except Exception as e:
#                 pass
#
#     d.press('home')
#     time.sleep(5)
#     page_reproducer.reproduce(d)
#
#     activate_device()
#     xml = get_android_hierarchy(d, package)
#     pre_json = simplify_json(xml)
#     c = pre_json.count("Sample Todo")
#     if c >= 1:
#         for i in range(c):
#             try:
#                 d(text="Sample Todo").long_click(1)
#                 time.sleep(0.5)
#                 d(text="Delete To-Do Task").click()
#                 time.sleep(0.5)
#             except Exception as e:
#                 pass
#     d.press('home')
#     time.sleep(5)
#     page_reproducer.reproduce(d)
#
# def clear_test_a25(package_name):
#     clear_test_to_a25_only_1()
#     global d
#     package = "com.woefe.shoppinglist"
#     d.app_start(package)
#     time.sleep(3)
#
#     for i in range(1):
#         try:
#             d.swipe(20, 92, 204, 122)
#             time.sleep(1)
#         except Exception as e:
#             pass
#
# def clear_test_to_a25_only_1():
#     global d
#     package = 'com.woefe.shoppinglist'
#     d.app_start(package, stop=True)
#     time.sleep(1)
#
#     for i in range(15):
#         activate_device()
#         xml = get_android_hierarchy(d, package)
#         pre_json = simplify_json(xml)
#         c = pre_json.count("Sample Todo")
#         if c == 0:
#             page_reproducer.reproduce(d)
#             return
#
#         for i in range(c - 1):
#             try:
#                 d.swipe(20, 92, 204, 122)
#                 time.sleep(1)
#                 xml = get_android_hierarchy(d, package)
#                 post_json = simplify_json(xml)
#                 pass
#             except Exception as e:
#                 pass
#
#     d.press('home')
#     time.sleep(5)
#     page_reproducer.reproduce(d)
#
#     activate_device()
#     xml = get_android_hierarchy(d, package)
#     pre_json = simplify_json(xml)
#     c = pre_json.count("Sample Todo")
#     if c >= 1:
#         for i in range(c):
#             try:
#                 d.swipe(35, 99, 35 + 256, 99)
#                 time.sleep(1)
#             except Exception as e:
#                 pass
#     d.press('home')
#     time.sleep(5)
#     page_reproducer.reproduce(d)
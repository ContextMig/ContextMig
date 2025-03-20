import os
import re

SET_CONTENT_VIEW_REGEX = re.compile(
    r'invoke-virtual \{\w+, (\w+)\}, .*?->setContentView\(I\)V|'  # Activity: setContentView(R.layout.xxx)
    r'invoke-virtual \{\w+, (\w+), \w+, \w+\}, .*?->inflate\(I.*?\)Landroid/view/View;|'  # LayoutInflater.inflate(R.layout.xxx)
    r'invoke-virtual \{\w+, \w+\}, .*?->inflate\(Landroid/view/LayoutInflater;\).*?'  # ViewBinding.inflate()
)
CONST_LAYOUT_ID_REGEX = re.compile(r'const(?:/4|/16|)?\s+([pv]\d+),\s+(0x7f[0-9a-fA-F]+)')
ACTIVITY_NAME_REGEX = re.compile(r'\.class.*?L([\w/]+);')



def find_smali_file(activity_name, smali_dir):
    for root, _, files in os.walk(smali_dir):
        for file in files:
            if file.endswith(".smali"):
                smali_path = os.path.join(root, file)
                with open(smali_path, "r", encoding="utf-8") as f:
                    for line in f:
                        match = ACTIVITY_NAME_REGEX.search(line)
                        if match:
                            class_path = match.group(1).replace("/", ".")
                            if activity_name in class_path:
                                return smali_path
    return None


def extract_set_contentview_layout(smali_file):
    with open(smali_file, "r", encoding="utf-8") as f:
        lines = f.readlines()

    layout_id = None
    for i, line in enumerate(lines):
        match = SET_CONTENT_VIEW_REGEX.search(line)
        if match:
            var_name = match.group(1)
            for j in range(i - 5, i):
                if j >= 0:
                    const_match = CONST_LAYOUT_ID_REGEX.search(lines[j])
                    if const_match:
                        layout_id = const_match.group(2)
                        break
    return layout_id


def parse_r_layout_mapping(public_xml_path):
    r_layout_mapping = {}
    with open(public_xml_path, "r", encoding="utf-8") as f:
        xml_content = f.read()

    layout_pattern = re.compile(r'<public\s+type="layout"\s+name="([\w\d_]+)"\s+id="(0x7f[0-9a-fA-F]+)"')
    for match in layout_pattern.finditer(xml_content):
        layout_name, layout_id = match.groups()
        r_layout_mapping[layout_id] = layout_name
    return r_layout_mapping


def parse_r_name_mapping(public_xml_path):
    r_layout_mapping = {}
    with open(public_xml_path, "r", encoding="utf-8") as f:
        xml_content = f.read()

    layout_pattern = re.compile(r'<public\s+type="id"\s+name="([\w\d_]+)"\s+id="(0x7f[0-9a-fA-F]+)"')
    for match in layout_pattern.finditer(xml_content):
        layout_name, layout_id = match.groups()
        r_layout_mapping[layout_id] = layout_name
    return r_layout_mapping


def find_layout_xml(layout_name, layout_dir):
    xml_file_path = os.path.join(layout_dir, f"{layout_name}.xml")
    if os.path.exists(xml_file_path):
        return xml_file_path
    return None


def get_layout_xml_content(activity_name, base_path):

    smali_dir = base_path + "/smali"  # smali dir
    public_xml_path = base_path + "/res/values/public.xml"  # res/values/public.xml path
    layout_dir = base_path + "/res/layout"  # ar res/layout dir


    xml_content = None

    # 1. find Activity correspond to smali file
    smali_file = find_smali_file(activity_name, smali_dir)
    if not smali_file:
        return xml_content


    # 2. get setContentView correspond to layout ID
    layout_id = extract_set_contentview_layout(smali_file)
    if not layout_id:
        return xml_content

    # 3. analyze public.xml，get layout ID correspond to layout name
    r_layout_mapping = parse_r_layout_mapping(public_xml_path)
    layout_name = r_layout_mapping.get(layout_id)
    if not layout_name:
        return xml_content


    # 4.  find  xml file in res/layout
    xml_path = find_layout_xml(layout_name, layout_dir)
    if xml_path:
        with open(xml_path, 'r', encoding='utf-8') as file:
            xml_content = file.read()
    return xml_content


def get_layout_id_name(id, public_xml_path):
    id = hex(id)

    # analyze public.xml，get layout ID correspond to layout name
    r_name_mapping = parse_r_name_mapping(public_xml_path)
    return r_name_mapping.get(id)

if __name__ == "__main__":
    activity_name = "MainActivity"
    base_path = "/Users/wangyongjiang/PycharmProjects/CraftDroid/sa_info/chan.android.app.pocketnote/"

    #
    layout_xml_content = get_layout_xml_content(activity_name, base_path)

    name = get_layout_id_name(2131296271, "")
    pass


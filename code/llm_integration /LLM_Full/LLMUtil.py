import os
import json
import gpt_agent



class LLMUtil:

    @staticmethod
    def calculate_similarity_score(old_tokenized_sequence, new_tokenized_sequence, attribute_name):
        template = """
## **Task Description**
You are a UI automation testing expert, and your task is to calculate **the similarity of two UI components on specific attributes**.  
Your input is **a text sequence that has been tokenized**, and you only need to compute their semantic similarity and return the matching score.

---

## **Input Data**
1. Tokenized sequence of the source component (Old Widget):
{old_tokenized_sequence}
2. Tokenized sequence of the target component (New Widget):
{new_tokenized_sequence}
3. Attribute to Compare:
{attribute_name}

## **Calculation Logic**
1. Calculation Logic
- Compute the cosine similarity of the embeddings of old_tokenized_sequence and new_tokenized_sequence
Obtain base_score = cosine_similarity(embedding_1, embedding_2)

2. Adjust Similarity Score
- High Match (0.9 - 1.0):
	base_score > 0.85, and the length difference between the two sequences is minimal.
	Example: ["Login"] vs ["Sign", "In"] → 0.95
- Strong Match (0.8 - 0.9):
	base_score > 0.75, but with minor differences in expression, or old_tokenized_sequence is a subset of new_tokenized_sequence.
	Example: ["Please enter", "password"] vs ["Enter", "your", "password"] → 0.85
- Moderate Match (0.6 - 0.8):
	base_score > 0.6, and some vocabulary matches, but the expression differs significantly.
	Example: ["Submit"] vs ["Confirm", "Submit"] → 0.7
- Low Match (0.4 - 0.6):
	base_score > 0.4, but most vocabulary does not match, with only a few shared concepts.
	Example: ["Next"] vs ["Continue"] → 0.5
- Almost No Match (0.0 - 0.4):
	base_score < 0.4, with almost no semantic relevance.
	Example: ["Search"] vs ["Cancel"] → 0.2
3. Compute Final Matching Score
- final_score = (base_score + semantic adjustment) / 2
- Ensure the final matching score considers semantics, word order, and sentence structure.

## **Output Format**
Please return in the following JSON structure:
{
  "attribute": "{attribute_name}",
  "similarity_score": 0.85,
  "reason": "The tokenized sequences of the source and target components are highly similar on `{attribute_name}`, resulting in a high score."
}

## **Example**
### Input
 "old_tokenized_sequence": ["Login"],
 "new_tokenized_sequence": ["Sign", "In"],
 "attribute_name": "text"
### Output
{
  "attribute": "text",
  "similarity_score": 0.95,
  "reason": "‘Login’ and ‘Sign In’ are highly semantically similar."
}
        """
        prompt = template.replace('{old_tokenized_sequence}', old_tokenized_sequence)\
            .replace('{new_tokenized_sequence}', new_tokenized_sequence)\
            .replace('{attribute_name}', attribute_name)

        match_result = gpt_agent.send(prompt)
        return int(json.loads(match_result)['similarity_score'])


    @staticmethod
    def assemble_widget_semantics(widget):
        template = """
You are a professional UI component semantic analysis assistant. Your task is to analyze an Android UI component from a target application and extract its semantic information.

## **Input Data**
The following is the JSON of the target Android component: {target_component_json}

1. Identify the basic type of the component:
   - The `class` determines the basic functionality of the component, such as:
     - `android.widget.EditText` → Input field
     - `android.widget.Button` → Button
     - `android.view.View` → General view component (could be a label, navigation element, etc.)

2. Parse the component's text information:
   - `text`: The text displayed on the component, which may provide key semantic information.
   - `content-desc`: Accessibility description, usually a supplement to `text`, sometimes containing more detailed information.
   - `layout_name/layout_oId/oId`: Component layout information.

3. Consider contextual information:
   - `parent_text`: If the parent component has text, it may provide the scope of the component’s function.
   - `sibling_text`: The text of sibling components may help infer the function of this component.

4. Infer the interaction mode of the component:
   - `clickable`: If `true`, it indicates that the component is clickable and could be a button or hyperlink.
   - `password`: If `true`, it indicates that the component is used for password input.
   - `action`: Describes the component's behavior in UI interactions, such as `click`, `send_keys_and_enter`, etc.

5. Reference activity & package name:
   - `package`: The package name of the app that the component belongs to. For example, `com.android.browser` indicates that it belongs to a browser application.
   - `activity`: The interface where the component is located, which may help infer its function.

6. Utilize the component's resource information:
   - `resource-id`: The unique identifier of the component, usually named according to its function.

## **Output Format**
Return the extracted semantic information in the following JSON format:
{
  "semantic_description": "This component is a URL address bar input field that allows users to enter or edit a URL.",
  "reason": "The component's class is 'android.widget.EditText', indicating an input field. The text is empty, but the content description provides detailed information, indicating that it is used for URL input."
}
        """
        prompt = template.replace('{target_component_json}', json.dumps(widget))

        match_result = gpt_agent.send(prompt)
        widget_semantic = json.loads(match_result)['semantic_description']
        if widget.get('text', '').strip() == "":
            widget['text'] = widget_semantic
        elif widget.get('content-desc', '').strip() == "":
            widget['content-desc'] = widget_semantic
        else:
            widget['text'] += widget_semantic
        return widget


    @staticmethod
    def assemble_source_test_semantics(test_seq, test_file):
        template = """
        You are a professional UI component semantic analysis assistant. Your task is to analyze the JSON sequence of Android test cases and extract semantic information for each component.

## **Analysis Steps**
1. **Generate a unique component identifier (`component_id`)**:
   - If `resource-id` exists, then `component_id = resource-id`.
   - If `resource-id` is empty, then `component_id = class + "_" + text + "_" + content-desc` (excluding empty values).
   - If multiple components have the same `resource-id`, the combination of `package` and `activity` can be used to generate a unique identifier.

2. **Identify the basic type of the component**:
   - The `class` determines the basic functionality of the component, such as:
     - `android.widget.EditText` → Input field
     - `android.widget.Button` → Button
     - `android.view.View` → General view component (could be a label, navigation element, etc.)

3. **Parse the component's text information**:
   - `text`: The text displayed on the component, which may provide key semantic information.
   - `content-desc`: Accessibility description, usually a supplement to `text`, sometimes containing more detailed information.

4. **Consider contextual information**:
   - `parent_text`: If the parent component has text, it may provide the scope of the component’s function.
   - `sibling_text`: The text of sibling components may help infer the function of this component.

5. **Infer the interaction mode of the component**:
   - `clickable`: If `true`, it indicates that the component is clickable and could be a button or hyperlink.
   - `password`: If `true`, it indicates that the component is used for password input.
   - `action`: Describes the component's behavior in UI interactions, such as `click`, `send_keys_and_enter`, etc.

6. **Reference activity & package name**:
   - `package`: The package name of the app that the component belongs to. For example, `com.android.browser` indicates that it belongs to a browser application.
   - `activity`: The interface where the component is located, which may help infer its function.

## **Output Format**
Return an array of JSON objects, each containing the extracted semantic information for a component:
```json
[
  {
    "component_id": "<Unique identifier derived from resource-id>",
    "semantic_description": "This component is a URL address bar input field that allows users to enter or edit a URL and press the Enter key to search.",
    "reason": "The component's class is 'android.widget.EditText', indicating an input field. The text displays a URL, suggesting it is used for URL input. The content description is empty, but the action includes 'send_keys_and_enter', indicating that the user can enter a URL and press Enter."
  },
  {
    "component_id": "<Unique identifier derived from class|text|content-desc>",
    "semantic_description": "This component is a title element on a webpage, displaying the site name and possibly acting as a navigation link.",
    "reason": "The component's class is 'android.view.View', a general view component. The content description provides the webpage title 'Donald Bren School of Information and Computer Sciences', indicating that the component displays the site name. Although it is clickable, there is no clear interaction behavior, suggesting it might be a navigation element."
  },
  ...
]

## **Example**
### **Input (Enhanced Test Case JSON)**
[
  {
    "class": "android.widget.Button",
    "resource-id": "com.android.chrome:id/search_button",
    "text": "Search",
    "content-desc": "Search button",
    "clickable": "true",
    "password": "false",
    "parent_text": "",
    "sibling_text": "URL input field",
    "stepping_events": [],
    "package": "com.android.chrome",
    "activity": ".MainActivity",
    "event_type": "gui",
    "score": 0.4251983411023456,
    "action": [
      "click"
    ]
  },
  {
    "class": "android.widget.TextView",
    "resource-id": "",
    "text": "Breaking News: Revolutionizes Healthcare",
    "content-desc": "",
    "clickable": "true",
    "password": "false",
    "parent_text": "",
    "sibling_text": "",
    "stepping_events": [],
    "package": "com.example.news",
    "activity": ".NewsActivity",
    "event_type": "oracle",
    "score": 0.3892765192348102,
    "action": [
      "click"
    ]
  }
]
### **Output**

[
  {
    "component_id": "com.android.chrome:id/search_button",
    "semantic_description": "This component is a search button that allows users to initiate a search action.",
    "reason": "The component's class is 'android.widget.Button', indicating it is a button. The text and content description both indicate it is a search button. It is clickable, confirming its interactive nature."
  },
  {
    "component_id": "android.widget.TextView|Breaking News: Revolutionizes Healthcare|",
    "semantic_description": "This component is a clickable article title, likely used for navigating to the full news article.",
    "reason": "The component's class is 'android.widget.TextView', which typically represents text content. The text 'Breaking News: AI Revolutionizes Healthcare' suggests it is a news headline. The component is clickable, indicating it might lead to the full article."
  }
]


## **Input Data**
The following is the enhanced JSON of the Android test case: {test_case_json}


Notes:
1. Return only the response in json format and nothing else
2. When id is empty, component_id you should return class|text|content-desc
3. The phrase length of the semantic_description should not be longer than five
"""

        if "LLM" in json_file or os.path.exists(json_file.replace(".json", "_LLM.json")):
            return

        prompt = template.replace('{test_case_json}', json.dumps(test_seq))
        match_result = gpt_agent.send(prompt)
        match_result = match_result.replace("```json", "").replace("```", "")

        def find_elements(data, resource_id=None, class_name=None, text=None, content_desc=None):
            if resource_id:
                return [element for element in data if element.get("resource-id") == resource_id]
            else:
                return [
                    element for element in data
                    if element.get("class") == class_name and element.get("text") == text and element.get(
                        "content-desc") == content_desc
                ]

        test_seq_semantics = json.loads(match_result)
        for step_semantic in test_seq_semantics:
            target_resource_id, target_class, target_text, target_content_desc = None, None, None, None
            if "|" in step_semantic['component_id']:
                parts = step_semantic['component_id'].split("|")
                target_class = parts[0]
                target_text = parts[1]
                target_content_desc = parts[2]
            else:
                target_resource_id = step_semantic['component_id']

            # Find elements
            matching_elements = find_elements(test_seq, target_resource_id, target_class, target_text, target_content_desc)

            for e in matching_elements:
                widget_semantic = step_semantic['semantic_description']
                if e.get('text', '').strip() == "":
                    e['text'] = widget_semantic
                elif e.get('content-desc', '').strip() == "":
                    e['content-desc'] = widget_semantic
                else:
                    e['text'] += ' ' + widget_semantic



if __name__ == '__main__':
    def find_json_files(base_dir, keyword="base"):
        matching_files = []
        for root, _, files in os.walk(base_dir):
            for file in files:
                if file.endswith(".json") and keyword in os.path.join(root, file):
                    matching_files.append(os.path.join(root, file))
        return matching_files


    base_directory = "test_repo"
    json_files = find_json_files(base_directory)

    for json_file in json_files:
        try:
            with open(json_file, "r", encoding="utf-8") as f:
                json_data = json.load(f)
                print(f"Processing file: {json_file}")
                LLMUtil.assemble_source_test_semantics(json_data, json_file)
                with open(json_file.replace(".json", "_LLM.json"), "w", encoding="utf-8") as f:
                    json.dump(json_data, f, indent=2, ensure_ascii=False)
        except Exception as e:
            print(f"Error reading {json_file}: {e}")
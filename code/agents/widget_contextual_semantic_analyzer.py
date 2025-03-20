import openai

def analyze(gpt, previous_json, current_page, previous_activity_name):
    openai.api_key = gpt.key
    openai.api_base = gpt.api_base

    response = openai.ChatCompletion.create(
        model = gpt.model,
        messages=[
            {
                "role": "system",
                "content": "You are currently conducting a test case migration for the Android app, You hope to identify all proper elements and describe their possible intentions for me, in order to provide a basis for path matching of subsequent event sequences."
            },
            {
                "role": "user", 
                "content":"""
We are working on semantic extraction for Android components. I will provide a JSON list of components and previous page json with the following structure:
### Input Description
**Previous Page JSON**:
- JSON data describing the GUI elements on the page preceding the current interaction.

**Current Page JSON**:
- JSON data for the current page, detailing the GUI elements including the target widget below:
```json
[
  {
    "id": items["id"],
    "text": items["text"],
    "type": items["type"],
    "index": items["index"],
    "x": items["x"],
    "y": items["y"],
    "width": items["width"],
    "height": items["height"],
    "desc": items["desc"],
    "widget_info": widget_info,
    "interaction": interaction,
    "semantic": semantic
  }, 
  ...
]
1. interaction: Represents how the user interacts with this component. This field may be absent, but if present, it will only have one of the following four values:
- click
- longClick
- swipe_to_right
- swipe_to_left
2. semantic: Represents the possible semantic meaning of this component. Your task is to focus on this field and infer its semantics by considering the component's id, text, and other relevant information. Note that this field may also be absent.
3. widget_info: Contains additional metadata about the component, such as its ID, description, text, and type.

# Output Format
For swipe interactions, include both the starting (from) and ending (to) coordinates in the purpose.

structure：
element: The component type (e.g., android.widget.ImageButton).
id: The component's unique identifier.
coordinates: The (x, y) position of the component.
action: The interaction type (click, longClick, swipe_to_right, swipe_to_left).
value: The content of the component's text/desc field. If the text/desc field is empty, set this as NULL.
purpose: A brief semantic description of the action and its expected effect.

Only extract semantics for the specified widgets below (by Widget ID) and structure your output as follows:
~~~
ACTION (element, id, coordinates, action, value): purpose
~~~





# Example Input
**Previous Page JSON**:
```json
{
    "elements": [
        {
            "id": "back_button",
            "type": "android.widget.Button",
            "x": 10,
            "y": 10,
            "control": [
                "clickable"
            ],
            "desc": "Go back"
        },
        ...
    ]
}
```

**Current Page JSON**:
```json
[{
	'id': '',
	'text': '',
	'type': 'android.widget.ImageButton',
	'index': 0,
	'x': 0,
	'y': 72,
	'width': 168,
	'height': 168,
	'desc': 'Open navigation drawer',
	'control': ['clickable'],
	'widget_info': 'Open navigation drawer'
}, {
	'id': 'imageview_sort',
	'text': '',
	'type': 'android.widget.TextView',
	'index': 0,
	'x': 792,
	'y': 84,
	'width': 144,
	'height': 144,
	'desc': 'Sort',
	'control': ['clickable', 'longClickable'],
	'widget_info': 'id:imageview_sort, desc:Sort'
}, {
	'id': 'imageview_delete',
	'text': '',
	'type': 'android.widget.TextView',
	'index': 1,
	'x': 936,
	'y': 84,
	'width': 144,
	'height': 144,
	'desc': 'Delete',
	'control': ['clickable', 'scroll'],
	'widget_info': 'id:imageview_delete, desc:Delete',
  	'interaction': 'swipe_to_right'
    'semantic': 'delete the list component'
}]

# Example Output
~~~
ACTION (android.widget.ImageButton, , (0, 72), click, "Open navigation drawer"): Click on this button to open the navigation drawer, revealing additional menu options. This does not navigate to a new page but expands a side menu.
ACTION (android.widget.TextView, imageview_sort, (792, 84), click, "Sort"): Click on this button to open a sorting menu, allowing the user to sort shopping list items. Long click might provide additional sorting options.
ACTION (android.widget.TextView, imageview_delete, (272, 28), swipe_to_right, "Delete"): Swipe to right. from:[0, 80] to:[320, 144] to delete the list. The page after swiping this control is the delete list page, which has a delete button with id "autotm.test:id/delete_button" and a delete item component with id "autotm.test:id/delete_item".
~~~

# Additional Notes
1. If both control and interaction fields are present, the interaction type from interaction takes priority.
2. Even if a component has an empty control field, it still requires semantic extraction, assuming the default interaction type is click.
3. The number of components after extracting semantics must be the same as the number of components provided.

Below is the previous page JSON and component JSON data that requires semantic extraction. Ensure that the number of responses matches the number of components in the given JSON list:

# Previous Page JSON:
"""+previous_json+"""

# Previous Activity Name:
"""+previous_activity_name+"""

# Current Page JSON:
"""+current_page
             },
        ],
        temperature=1,
    )
    return list(response.choices)[0].to_dict()["message"]['content']


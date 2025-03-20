import openai

def analyze(gpt, graph_widget):
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
We are analyzing the invocation relationships of Android Activities.
Below is a Python dictionary in JSON format, where the key is SourceActivity|InteractionMethod|ComponentNameX, and the value is TargetActivity or the page content corresponding to TargetActivity. This indicates that interacting with component X in the source Activity will navigate to a new target Activity. Of course, there are cases where the source Activity and target Activity are the same, meaning no new page is generated, and the operation is performed on the current page, such as swiping left to delete a component.
Please summarize the semantics(function) of each component, i.e., its corresponding functionality, in one simple sentence per component.

**Example:**
**Input:**
json
{
    "BrowserActivity$86| void onClick(android.view.View)|action_ok": "de.baumann.browser.Activity.BrowserActivity$86$1: void onClick(android.view.View)",
    "BrowserActivity$86| void onItemLongClick(android.view.View)|action_dialog": "de.baumann.browser.Activity.BrowserActivity$86$2: void onClick(android.view.View)",
    "MainActivity| void onSwipedLeft(android.view.View)|action_delete": "de.baumann.browser.Activity.BrowserActivity$86$2: void delete(android.view.View)"
}
**Output:**
BrowserActivity|action_ok|click|Confirm  
BrowserActivity|action_dialog|longClick|Open Dialog  
MainActivity|action_delete|swipe_to_left|Delete List Item

The interaction method must be selected from four options: click, longClick, swipe_to_right, swipe_to_left. Not swipe
if interaction is create, the interaction method should be click.

This time, the input to analyze is:
"""+graph_widget
             },
        ],
        temperature=1,
    )
    return list(response.choices)[0].to_dict()["message"]['content']


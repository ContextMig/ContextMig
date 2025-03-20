import openai


def validate(gpt, test_semantics, target_event, executed_sequence, current_environment):
    openai.api_key = gpt.key
    openai.api_base = gpt.api_base

    response = openai.ChatCompletion.create(
        model=gpt.model,
        messages=[
            {"role": "system",
             "content": "You are a project manager. You understand Android software and its operating logic. You are conducting test case migration between applications of the same type. You can examine past behaviors, judge whether they are correct based on the current environment, and make the next decision correctly. You are not an indecisive person, but you are still willing to make multiple attempts for a better success rate. You can take a different path to achieve your goals, but the methods must be effective rather than unrealistic fantasies. You are a person who respects the facts and will not confuse black and white. You will carefully examine every detail given, especially the Executed action sequence, and if it does not align with logic, you will think about the reasons behind it. You understand  natural language and can judge its structure, meaning, and correlation well"},
            {"role": "user", "content":
                """
You are an expert in uiautomator2 framework and test case migration for Android applications. 

### Requirements:
- You should determine which step of the test migration you are currently on based on the source test case semantics and the sequence of actions on target app already executed. Then, based on the provided intentions of the current page, decide which selected components are correct or not. 
- Multiple steps in the source test case may be combined into one step in the target app; Similarly, a step in the source test case can be broken down into multiple steps in the target application. That is, several source test case steps may correspond to a different number of action steps in the target app. You can choose appropriate combining actions of source test case to a step of target app based on inputs information.
- Please remember that although the source app and the target app belong to the same category, their operational logic may differ. For instance, an delete task operation that is a click in the source app might be a swipe in the target app; a function that can be completed with a single UI action in the source app might require multiple actions in the target app. 
- The operations on widgets don't necessarily have to match; your highest priority in matching should be functional similarity (from the actions and purposes of current page's intentions), followed by similarity in the type of action.
- You should be adaptive to workflow differences between applications, meaning that test steps may not match one-to-one, and execution logic might differ.
- You will carefully examine every detail, especially the Executed action sequence, to infer the current progress and determine the next correct step.
- Your decisions should be based on logical reasoning, functional intent, and past execution steps, rather than strict UI matching.
- If the executed sequence deviates from the expected path, you should analyze whether it is an alternative but valid approach or an incorrect deviation.
- You are a fact-driven, detail-oriented, and logical expert who will not make arbitrary assumptions but is also open to adaptive solutions
- You should prioritize functional equivalence over exact UI gestures. If the source test case specifies an action (e.g., swipe right to delete), but the target application achieves the same functionality with a different interaction (e.g., long press + delete button), consider it a valid alternative.
- If the exact action does not exist in the target application, determine if an alternative interaction achieves the same functional outcome. Your decision should be based on the intended effect of the action rather than strict UI gesture matching.

### Your Task
Your task is to determine whether the selected target component is correct based on the provided semantic information from the source test case, target component details, previously executed events and assertions, and the current App environment. 

### Input Information:

1. **Semantic information of the source test case**
2. **Target Component Information:** Detailed information about the currently selected component for operation. Format below:
    - ASSERT (element, id, coordinates, oracle):purpose': Provide an assertion to verify if an action has been implemented according to the description.
    - ACTION (element, id, coordinates, action, value):purpose': Indicate which UI element to interact with (click, long click, input). For input actions, use 'Input' (NULL to clear input; "" to enter a random string). For other actions, the value should be NULL.
    - RETURN:purpose': Describe the purpose of going back in the navigation flow.
3. **Executed Events and Assertions:** The sequence of events and assertions that have already been executed on the target app.
4. **Current App Environment:** Information including the current activity name and UI layout structure.

### Your Output:
Provide your judgment on component selection strictly in the following JSON format:

{
  "component_selection_correct": true or false,
  "analysis": "A detailed explanation about whether the target component selection is correct. If incorrect, clearly analyze the reasons by referencing source test semantics, executed events, execution sequences, and current environment."
}

Please adhere strictly to the provided format and instructions.

### Semantic information of the source test case:
""" + test_semantics + """

### Target Component Information:
""" + target_event + """

### Executed Events and Assertions:
""" + executed_sequence + """

### Current App Environment:
""" + current_environment +
"""

- You **must ignore workflow differences** between the source and target applications.
- Even if the sequence of actions differs, focus only on whether the intended function is successfully executed.
- The number of steps in the target app does not need to match the source test case exactly.
- If multiple actions in the target app achieve the same function as a single action in the source app, accept it as valid.
- Likewise, if a single action in the target app achieves what multiple steps did in the source app, it is valid.
- You **must prioritize functional equivalence over gesture similarity**.
- If a target app achieves the same effect (e.g., deleting an item) through a different interaction (e.g., long press instead of swipe), **consider it correct**.
- **Do not reject an interaction simply because the method differs from the source test case**.
- The key requirement is that the action **successfully performs the intended function**, regardless of differences in gestures or workflow.
- If the source test case specifies a swipe to delete, but the target app only supports long press to delete, consider it **functionally equivalent**.
- If the target app does not support the exact action in the source test case, determine the closest alternative that achieves the same result.
- The current app environment should guide action selection. If a different gesture (e.g., long press) enables deletion, and no swipe action exists, **accept it as the correct action**.
"""

             },
        ],
        temperature=0
        # temperature=0.5
    )
    return list(response.choices)[0].to_dict()["message"]['content']

## a21's b22 to a23

### Semantics of Source Test case
> This test case is testing the functionality of adding a new task in the MinimalToDo app, verifying the presence of the task, and then deleting the task by swiping right.
> 
> The detailed process with serial numbers is as follows:
> 
> 1. ACTION (ImageButton, com.rubenroy.minimaltodo:id/addToDoItemFAB, (), click, NULL) : Click on the 'Add' button to open the task creation screen.
> 2. ACTION (EditText, com.rubenroy.minimaltodo:id/userToDoEditText, (), input, "Sample Todo") : Input the task title 'Sample Todo' into the task title field and hide the keyboard.
> 3. ACTION (ImageButton, com.rubenroy.minimaltodo:id/makeToDoFloatingActionButton, (), click, NULL) : Click on the 'Done' button to save the task.
> 4. ASSERT (TextView, com.rubenroy.minimaltodo:id/toDoListItemTextview, (), wait_until_text_presence, "Sample Todo") : Verify that the task with the title 'Sample Todo' is present within 10 seconds.
> 5. ACTION (TextView, com.rubenroy.minimaltodo:id/toDoListItemTextview, (), swipe_right, NULL) : Swipe right on the task with the title 'Sample Todo' to delete it.
> 6. ASSERT (, , (), wait_until_text_invisible, "Sample Todo") : Verify that the task with the title 'Sample Todo' is no longer visible within 10 seconds.

### Process
#### Contextual Semantics of Widgets
````
The following is the semantic extraction for the provided components.

ACTION (android.widget.ImageButton, , (0, 64), click, "Open menu"): Clicking this button will open a side or drop-down menu with additional navigation or functional options.
ACTION (android.widget.TextView, , (144, 93), click, "To-Do List"): This might be the title of the screen or a static text field displaying "To-Do List", clicking on this won't have any action since it has no interaction associated with it.
ACTION (android.widget.TextView, ac_search, (432, 72), click, "Search"): Clicking on this button opens a search bar or initiates a search function, allowing the user to find specific tasks.
ACTION (android.widget.TextView, ac_add, (544, 72), click, "List"): The action will lead users to the List page or create a new task list.
ACTION (android.widget.ImageView, , (640, 72), click, "More options"): Clicking the button reveals more options or settings. Long click might provide additional options.
ACTION (android.widget.ExpandableListView, exlv_tasks, (0, 176), longClick, NULL): A long click on this view presumably allows the user to select and delete a task from the expanded list.
ACTION (android.widget.RelativeLayout, rl_exlv_task_group_root, (0, 176), click, NULL): Clicking on this view might expand/collapse a list of tasks. Long click might provide additional options such as edit or delete.
ACTION (android.widget.CheckBox, cb_task_done, (30, 214), click, NULL): Toggling this checkbox can likely mark a task as complete or incomplete.
ACTION (android.widget.TextView, tv_exlv_task_name, (110, 196), longClick, "Sample Todo"): A long click on this component presumably allows the user to delete the task named "Sample Todo".
ACTION (android.widget.TextView, tv_exlv_task_deadline, (110, 245), click, "No Deadline"): This is a static field to display the deadline of the task. There's no action associated with it.
ACTION (android.widget.ImageButton, fab_new_task, (576, 1456), click, NULL): Clicking this button presumably navigates the user to a new screen where they can create a new task.
````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.ImageButton, fab_new_task, (576, 1456), click, NULL): Click on the 'Add' button to navigate to the task creation screen.
~~~
Based on the provided information, the UIAutomator2 code in Python for the given action would be:

···
d.click(576, 1456)
···

Here, 'd' is the device variable name and the coordinates (576, 1456) are the location of the 'Add' button on the screen. The 'click' action is performed on these coordinates to navigate to the task creation screen.
````
#### Contextual Semantics of Widgets
````

ACTION (android.widget.TextView, dialog_title, (32, 437), click, NULL): The dialog title which announces "New To-Do task"


ACTION (android.widget.EditText, et_new_task_name, (52, 586), click, "Name"): A field where the user can input the name of their new task with a click or long click interaction.


ACTION (android.widget.EditText, et_new_task_description, (52, 679), click, "Description"): A field where the user can provide a detailed description of their new task with a click or long click interaction.


ACTION (android.widget.TextView, tv_todo_list_deadline, (52, 772), click, "Deadline"): A field which when clicked prompts the user to set a deadline for their new task.


ACTION (android.widget.TextView, tv_todo_list_reminder, (360, 772), click, "Reminder"): A field which when clicked enables the users to set a reminder for their task.


ACTION (android.widget.TextView, new_task_progress, (231, 924), click, "0%"): The progress of the new task, currently set at 0%, which likely increments based on the completion status of sub-tasks.


ACTION (android.widget.TextView, tv_new_task_priority, (265, 1002), click, "Medium"): A field which when clicked prompts the user to set a priority for their task, currently set as "Medium".


ACTION (android.widget.TextView, tv_new_task_listchoose, (265, 1065), click, "Click to select!"): A field which when clicked prompts the user to select a category or list to associate their new task with.


ACTION (android.widget.Button, bt_new_task_cancel, (268, 1130), click, "CANCEL"): A button that when clicked cancels the new task creation process and returns the user to the previous screen.


ACTION (android.widget.Button, bt_new_task_ok, (478, 1130), click, "OKAY"): A button that when clicked saves the new task with all the attributes specified by the user.


````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.EditText, et_new_task_name, (52, 586), input, "Sample Todo"): Input the task title 'Sample Todo' into the task title field.
~~~
Based on the given information, the UIAutomator2 code in Python for the given action would be:

```python
d.click(52, 586)
d(resourceId="org.secuso.privacyfriendlytodolist:id/et_new_task_name").set_text("Sample Todo")
```

This code first clicks on the coordinates (52, 586) where the EditText field is located. Then it sets the text of the EditText field with the id "et_new_task_name" to "Sample Todo".
````
#### Contextual Semantics of Widgets
````

ACTION (android.widget.TextView, dialog_title, (32, 381), click, "New To-Do task"): This is the title of the new task dialog, clicking it has no interaction.
ACTION (android.widget.EditText, et_new_task_name, (52, 530), click, "Sample Todo"): This field is used for the task name. Use it to input the name of the task. Long click might provide additional options like select, paste or copy.
ACTION (android.widget.EditText, et_new_task_description, (52, 623), click, "Description"): This field is used to input the task description. Use it to input the details of the task. Long click might provide additional options like select, paste, or copy.
ACTION (android.widget.TextView, tv_todo_list_deadline, (52, 716), click, "Deadline"): Clicking here might open a calendar or a date/time picker dialog to choose a deadline for the task.
ACTION (android.widget.TextView, tv_todo_list_reminder, (360, 716), click, "Reminder"): Clicking here might open a calendar or a time picker dialog to add a reminder for the task. 
ACTION (android.widget.TextView, tv_task_progress, (62, 832), click, "Progress:"): This field shows the progress of the task. Clicking it probably has no effect.
ACTION (android.widget.TextView, new_task_progress, (231, 868), click, "0%"): This shows the current progress of the task. It probably has no interaction when clicked.
ACTION (android.widget.TextView, tv_new_task_priority_str, (62, 946), click, "Priority:"): This field indicates the priority of the task. It probably has no effect when clicked.
ACTION (android.widget.TextView, tv_new_task_priority, (265, 946), click, "Medium"): Click to choose the priority level of the task. The available options could be “low”, “medium”, and “high”. 
ACTION (android.widget.TextView, tv_new_task_listchoose_str, (62, 1009), click, "List:"): This field shows that user can select a list to add the task to. It probably doesn’t interact when clicked.
ACTION (android.widget.TextView, tv_new_task_listchoose, (265, 1009), click, "Click to select!"): Click here to select the list you'd like this task to appear in.
ACTION (android.widget.Button, bt_new_task_cancel, (268, 1074), click, "CANCEL"): Click on this button to cancel creating this task and return to the previous screen.
ACTION (android.widget.Button, bt_new_task_ok, (478, 1074), click, "OKAY"): Click on this button to save and create this task. It will then be displayed in the selected task list.


````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.Button, bt_new_task_ok, (478, 1074), click, "OKAY"): Click on this button to save and create this task. It will then be displayed in the selected task list.
~~~
Based on the provided information, the UIAutomator2 code in Python for the given action would be:

```python
d.click(478, 1074)
```

This code will perform a click action at the coordinates (478, 1074) on the device screen, which corresponds to the "OKAY" button.
````
#### Contextual Semantics of Widgets
````
ACTION (android.widget.ImageButton, , (0, 64), click, "Open menu"): Click on this button to open the menu side drawer, revealing additional menu options. This button does not navigate to a new page but expands a side menu.
ACTION (android.widget.TextView, , (144, 93), , "To-Do List"): This is a title, which gives the user a hint about the content of the page. No action is associated with it.
ACTION (android.widget.TextView, ac_search, (432, 72), click, "Search"): Click on this button to search for tasks in the to-do list. The page that appears after clicking this control is a search page.
ACTION (android.widget.TextView, ac_add, (544, 72), click, "List"): Click on this button to start a new to-do list. This action navigates the user to a new screen where they can input new task details.
ACTION (android.widget.ImageView, , (640, 72), click, "More options"): Clicking or long pressing on this control will open more options. The user can access additional settings or features from the expanded menu.
ACTION (android.widget.ExpandableListView, exlv_tasks, (0, 176), longClick, ): Long clicking on this listView allows the user to delete selected task. Usually longClick is associated with more options or details of the selected task.
ACTION (android.widget.RelativeLayout, rl_exlv_task_group_root, (0,176), longClick,): LongClick on this component is possibly used to select the whole task group for further actions like deleting, moving, etc.
ACTION (android.widget.CheckBox, cb_task_done, (30,214), click,): Clicking on this checkbox is used to mark a task as done or not done. When checked, the task may be deleted or crossed out.
ACTION (android.widget.TextView, tv_exlv_task_name, (110,196), longClick, "Sample Todo"): LongClick on this component is possibly used to select the particular task for further actions like editing, deleting, etc.  The page after this action is probably task detail page.
ACTION (android.widget.TextView, tv_exlv_task_deadline, (110,245), , "No Deadline"): No action is associated with this, it shows the task status whether there is deadline set for the task.
ACTION (android.widget.ImageButton, fab_new_task, (576, 1456), click,): Clicking this button will create a new task, leading you to the add task page. Information like task name, deadline, reminder etc. can be added to the new task.
````

#### Selected Event(s) and Script
````
~~~
ASSERT (android.widget.TextView, tv_exlv_task_name, (110,196), wait_until_text_presence, "Sample Todo"): Verify that the task with the title 'Sample Todo' is present within 10 seconds.
ACTION (android.widget.TextView, tv_exlv_task_name, (110,196), longClick, NULL): LongClick on the task with the title 'Sample Todo' to initiate its deletion.
~~~
Based on the given actions, the corresponding UIAutomator2 code in Python would be:

```python
# Assertion to verify that the task with the title 'Sample Todo' is present within 10 seconds.
assert d(resourceId="org.secuso.privacyfriendlytodolist:id/tv_exlv_task_name").wait(timeout=10).get_text() == "Sample Todo"

# LongClick on the task with the title 'Sample Todo' to initiate its deletion.
d(resourceId="org.secuso.privacyfriendlytodolist:id/tv_exlv_task_name").long_click(1)
```

Please note that the coordinates (110,196) are not used in this case as the resourceId is unique and non-empty. The coordinates are usually used when the resourceId is not available or not unique.
````
#### Contextual Semantics of Widgets
````
# Extraction

**ACTION** (android.widget.ImageButton, , (0, 64), click, "Open menu"): Clicking this button will open a drop-down or slide-out menu, providing more navigation options to the user.

**ACTION** (android.widget.TextView, , (144, 93), None, "To-Do List"): This component displays the title "To-Do List". It doesn't have any interactions associated with it.

**ACTION** (android.widget.TextView, org.secuso.privacyfriendlytodolist:id/ac_search, (432, 72), click, "Search"): Clicking on this component initiates a search function, either opening a search bar or redirecting to a search page.

**ACTION** (android.widget.TextView, org.secuso.privacyfriendlytodolist:id/ac_add, (544, 72), click, "List"): This component is clickable, possibly triggering an addition or creation operation about the "List".

**ACTION** (android.widget.ImageView, , (640, 72), click, "More options"): Clicking this component will likely open more options for the user. The long-click interaction could either provide alternative options or simply hold the options window on the screen longer.  

**ACTION** (android.widget.ExpandableListView, org.secuso.privacyfriendlytodolist:id/exlv_tasks, (0, 176), longClick, NULL): Long clicking this expandable list view may either provide extra options for managing tasks or trigger a batch operation mode for managing multiple tasks at once. 

**ACTION**(android.widget.ImageButton, org.secuso.privacyfriendlytodolist:id/fab_new_task, (576, 1456), click, NULL): This is a commonly used button known as "floating action button". Clicking on this button tends to initiate a significant action, like creating a new to-do task in this context given its id: "fab_new_task".

**ACTION**(android.widget.LinearLayout, , (328, 220), click, NULL): This is a linear layout container that can respond to clicking events. The precise behavior on click is dependent on the function implemented in the back-end.

**ACTION**(android.widget.TextView, android:id/title, (360, 246), None, "Edit To-Do Task"): This UI element is simply a label for "Edit To-Do Task". It's not associated with user interactions.

**ACTION**(android.widget.TextView, android:id/title, (360, 342), None, "Delete To-Do Task"): This UI element is simply a label for "Delete To-Do Task". It's not associated with user interactions.

````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.TextView, android:id/title, (360, 342), click, NULL): Click on the 'Delete To-Do Task' to delete the task.
ASSERT (, , (), wait_until_text_invisible, "Sample Todo"): Verify that the task with the title 'Sample Todo' is no longer visible within 10 seconds.
DONE
~~~
Based on the given actions, the corresponding UIAutomator2 code in Python would be:

```python
d.click(360, 342)
assert d(text="Sample Todo").wait_gone(timeout=10)
```

Explanation:

1. `d.click(360, 342)`: This line of code performs a click action at the coordinates (360, 342) on the device screen. This corresponds to the action "Click on the 'Delete To-Do Task' to delete the task."

2. `assert d(text="Sample Todo").wait_gone(timeout=10)`: This line of code waits until the text "Sample Todo" is no longer visible on the device screen within 10 seconds. If the text is still visible after 10 seconds, it will raise an AssertionError. This corresponds to the action "Verify that the task with the title 'Sample Todo' is no longer visible within 10 seconds."
````
### Success
````
ACTION (android.widget.ImageButton, fab_new_task, (576, 1456), click, NULL): Click on the 'Add' button to navigate to the task creation screen., Exec_Success

ACTION (android.widget.EditText, et_new_task_name, (52, 586), input, "Sample Todo"): Input the task title 'Sample Todo' into the task title field., Exec_Success

ACTION (android.widget.Button, bt_new_task_ok, (478, 1074), click, "OKAY"): Click on this button to save and create this task. It will then be displayed in the selected task list., Exec_Success

ASSERT (android.widget.TextView, tv_exlv_task_name, (110,196), wait_until_text_presence, "Sample Todo"): Verify that the task with the title 'Sample Todo' is present within 10 seconds., Exec_Success
ACTION (android.widget.TextView, tv_exlv_task_name, (110,196), longClick, NULL): LongClick on the task with the title 'Sample Todo' to initiate its deletion., Exec_Success

ACTION (android.widget.TextView, android:id/title, (360, 342), click, NULL): Click on the 'Delete To-Do Task' to delete the task., Exec_Success
ASSERT (, , (), wait_until_text_invisible, "Sample Todo"): Verify that the task with the title 'Sample Todo' is no longer visible within 10 seconds., Exec_Success
DONE
````

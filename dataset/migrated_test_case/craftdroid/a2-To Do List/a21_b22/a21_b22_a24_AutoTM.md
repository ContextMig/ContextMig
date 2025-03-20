## a21's b22 to a24

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

ACTION (android.widget.TextView, android:id/title, (8, 65), click, NULL): Click on this TextView to possibly edit the title of the app "Simply Do".
ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "New List Name"): This EditText is used for entering the name of a new list. Post interaction, the text field should contain the new List Name.
ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): Clicking this button will add a new list with the name given in the EditText with ID "AddListEditText". 
ACTION (android.widget.ListView, ListsListView, (0, 213), click, NULL): Clicking on this ListView might lead to the context menu for the current page, most likely containing list editing options.
ACTION (android.widget.LinearLayout, , (0, 213), click, NULL): The LinearLayout here seems to be a wrapper for other components. Interacting with it will likely interact with one of its child components.
ACTION (android.widget.TextView, text1, (20, 233), longClick, "nj"): Might delete the selected list or item "nj" on a long click. 
ACTION (android.widget.TextView, text2, (636, 240), click, "(0/0)"): Clicking this TextView element might provide more details about the data represented in the form "(0/0)", perhaps quantity or completed tasks over total tasks.


````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.ImageButton, fab_add, (556, 1428), click, NULL): Click the 'Add' button to open the task creation screen, which corresponds to the first step of the source test case.
~~~
### Output:

Based on the given input, the corresponding UIAutomator2 code in Python would be:

···
d.click(556, 1428)
···
````
#### Contextual Semantics of Widgets
````
# Response

ACTION (android.widget.TextView, android:id/title, (8, 65), click, "Simply Do"): Represents the app title and cannot be interacted with by clicking or long clicking.

ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "New List Name"): Clicking this textbox allows you to enter a new text to edit or add a new list item. This doesn't navigate to a new page but changes the current state of the app.

ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): Clicking this button will add a new list to the app with the name entered in the textbox. This doesn't navigate to a new page but alters the state of the app to display the new list.

ACTION (android.widget.ListView, ListsListView, (0, 213), longClick, NULL): Long clicking on this ListView triggers a Context Menu. This doesn't navigate to a new page but opens up a menu within the current page with additional options.

ACTION (android.widget.LinearLayout, NULL, (0, 213), longClick, NULL): Long clicking on this LinearLayout probably triggers a Context Menu, similar to the ListView action above. 

ACTION (android.widget.TextView, text1, (20, 233), longClick, "nj"): Long Clicking on this TextView might give users option to edit or delete the "nj" item or list.

ACTION (android.widget.TextView, text2, (636, 240), click, "(0/0)"): Represents an informational text and cannot be interacted with by clicking.
````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "Sample Todo"): Input the task title 'Sample Todo' into the task title field.
ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): Click on the 'Add' button to save the task.
~~~
Based on the given actions, the corresponding UIAutomator2 code in Python would be:

```python
d(resourceId="kdk.android.simplydo:id/AddListEditText").set_text("Sample Todo")
d(resourceId="kdk.android.simplydo:id/AddListButton").click()
```

In the above code, we first set the text of the EditText widget with the id "AddListEditText" to "Sample Todo". Then, we click on the Button widget with the id "AddListButton".
````
#### Contextual Semantics of Widgets
````

ACTION (android.widget.TextView, android:id/title, (8, 65), click, "Simply Do"): This is the title bar of the application, though user interaction doesn't perform any action, it provides a reference to the name of application.
ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "New List Name"): User can enter the name of the new list here, indicating the starting of a new task list.
ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): User can click on this button to add the new list to the task list. Once clicked, a new task list with the name entered would be added.
ACTION (android.widget.ListView, ListsListView, (0, 213), click, "(no value)"): User can click on this list to access the tasks in the existing task list. This shows all task lists available and long clicking on any list will open a context menu of actions to perform on that list.
ACTION (android.widget.LinearLayout, , (0, 213), click, "(no value)"): This layout holds the individual task list, user can click to open and long click to perform additional actions. Absence of ID suggests it's a layout component rather than an interactive one.
ACTION (android.widget.TextView, text1, (20, 233), longClick, "nj"): Lets the user perform deletion of the selected task list or item upon long click, wait for user interaction to choose from the options.
ACTION (android.widget.TextView, text2, (636, 240), click, "(0/0)"): This component displays the progress of the current task list, though user interaction doesn't perform any action.
ACTION (android.widget.TextView, text1, (20, 333), longClick, "Sample Todo"): Lets the user perform deletion of the selected task list or item upon long click, wait for user interaction to choose from the options.


````

#### Selected Event(s) and Script
````
~~~
ASSERT (android.widget.TextView, text1, (20, 333), wait_until_text_presence, "Sample Todo"): Verify that the task with the title 'Sample Todo' is present within the application.
ACTION (android.widget.TextView, text1, (20, 333), longClick, "Sample Todo"): Perform a long click on the task with the title 'Sample Todo' to open the context menu for deletion options.
~~~
Based on the provided information, the UIAutomator2 code in Python would be:

```python
# Assertion to verify the presence of the task with the title 'Sample Todo'
assert d(text="Sample Todo").exists

# Perform a long click on the task with the title 'Sample Todo'
d(text="Sample Todo").long_click(1)
```

In the above code, `d` is the device variable name and `text` is the attribute of the UI element. The `exists` method is used to check if the UI element with the specified text attribute exists. The `long_click` method is used to perform a long click on the UI element with the specified text attribute. The parameter `1` in the `long_click` method is the duration of the long click in seconds.
````
#### Contextual Semantics of Widgets
````

ACTION (android.widget.TextView, android:id/title, (352, 626), click, "List Options"): Click on this button to see the list options. There is no action associated yet, so proceeding with default action click.
ACTION (android.widget.LinearLayout, , (320, 702), click, NULL): This LinearLayout with no text or description can be clicked on for interaction. Detailed action can depend on what components it comprises. As there's no control or interaction element present, the default action 'click' is being used.
ACTION (android.widget.TextView, android:id/title, (352, 736), click, "Edit"): Click on this button with text 'Edit' to edit an item or field. There is no action associated yet, so proceeding with default action click.
ACTION (android.widget.TextView, android:id/title, (352, 865), click, "Delete"): Click on this button with text 'Delete' to delete an item or field. There is no action associated yet, so proceeding with default action click.


````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.TextView, android:id/title, (352, 865), click, "Delete"): Click on this button with text 'Delete' to delete the task with the title 'Sample Todo'.
ASSERT (, , (), wait_until_text_invisible, "Sample Todo") : Verify that the task with the title 'Sample Todo' is no longer visible within the application.
~~~
Based on the given actions and assertions, the corresponding UIAutomator2 code in Python would be:

```python
# Click on the 'Delete' button
d(text="Delete").click()

# Verify that the task with the title 'Sample Todo' is no longer visible within the application
assert not d(text="Sample Todo").exists
```

In the above code, `d(text="Delete").click()` is used to click on the button with the text 'Delete'. The `d(text="Sample Todo").exists` checks if the task with the title 'Sample Todo' is visible within the application. The `not` operator is used to assert that the task is no longer visible.
````
#### Contextual Semantics of Widgets
````

ACTION (android.widget.TextView, android:id/alertTitle, (51, 669), click, "Delete?"): This is a title, "Delete?", indicating that the user is about to perform deletion operation, it doesn't have any interactions.
ACTION (android.widget.TextView, android:id/message, (59, 764), click, "Are you sure you want to delete this list?"): This is a prompt message to the user asking for confirmation whether the user is sure to delete the list, it doesn't have any interactions.
ACTION (android.widget.Button, android:id/button1, (35, 907), click, "Yes"): Clicking on this button will confirm the deletion of the list. It is used to perform the deletion operation when the user is sure to delete.
ACTION (android.widget.Button, android:id/button2, (362, 907), click, "No"): Clicking on this button will cancel the deletion operation. It is used when the user decides not to delete the list.


````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.Button, android:id/button1, (35, 907), click, "Yes"): Confirm the deletion of the task 'Sample Todo'. 
ASSERT (, , (), wait_until_text_invisible, "Sample Todo") : Verify that the task with the title 'Sample Todo' is no longer visible within the application.
DONE
~~~
Based on the given actions and assertions, the corresponding UIAutomator2 code in Python would be:

```python
d(resourceId="kdk.android.simplydo:id/button1").click()
assert not d(text="Sample Todo").exists
```

In the above code:

- The first line corresponds to the action of clicking the button to confirm the deletion of the task 'Sample Todo'. The button is identified by its resource ID, which is "kdk.android.simplydo:id/button1".
- The second line corresponds to the assertion of verifying that the task with the title 'Sample Todo' is no longer visible within the application. This is done by checking if a UI element with the text "Sample Todo" exists. If it does not exist, the assertion passes.
````
### Success
````
ACTION (android.widget.ImageButton, fab_add, (556, 1428), click, NULL): Click the 'Add' button to open the task creation screen, which corresponds to the first step of the source test case., Exec_Success

ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "Sample Todo"): Input the task title 'Sample Todo' into the task title field., Exec_Success
ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): Click on the 'Add' button to save the task., Exec_Success

ASSERT (android.widget.TextView, text1, (20, 333), wait_until_text_presence, "Sample Todo"): Verify that the task with the title 'Sample Todo' is present within the application., Exec_Success
ACTION (android.widget.TextView, text1, (20, 333), longClick, "Sample Todo"): Perform a long click on the task with the title 'Sample Todo' to open the context menu for deletion options., Exec_Success

ACTION (android.widget.TextView, android:id/title, (352, 865), click, "Delete"): Click on this button with text 'Delete' to delete the task with the title 'Sample Todo'., Exec_Success
ASSERT (, , (), wait_until_text_invisible, "Sample Todo") : Verify that the task with the title 'Sample Todo' is no longer visible within the application., Exec_Success

ACTION (android.widget.Button, android:id/button1, (35, 907), click, "Yes"): Confirm the deletion of the task 'Sample Todo'. , Exec_Success
ASSERT (, , (), wait_until_text_invisible, "Sample Todo") : Verify that the task with the title 'Sample Todo' is no longer visible within the application., Exec_Success
DONE
````

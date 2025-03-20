## a25's b22 to a24

### Semantics of Source Test case
> This test case is testing the functionality of adding a new item to the shopping list and then removing it by swiping right. The presence and absence of the item are verified.
> 
> The detailed process with serial numbers is as follows:
> 
> 1. ACTION (ImageButton, com.woefe.shoppinglist:id/fab_add, (), click, NULL) : Click on the add button to create a new item in the shopping list.
> 2. ACTION (EditText, com.woefe.shoppinglist:id/new_item_description, (), input, "Sample Todo") : Input the description 'Sample Todo' for the new item.
> 3. ACTION (ImageButton, com.woefe.shoppinglist:id/button_add_new_item, (), click, NULL) : Click on the 'Done' button to add the new item to the shopping list.
> 4. ASSERT (TextView, com.woefe.shoppinglist:id/text_description, (), wait_until_text_presence, "Sample Todo") : Verify that the item with the description 'Sample Todo' is present within 10 seconds.
> 5. ACTION (TextView, com.woefe.shoppinglist:id/text_description, (), swipe_right, NULL) : Swipe right on the item with the description 'Sample Todo' to remove it from the shopping list.
> 6. ASSERT (, , (), wait_until_text_invisible, "Sample Todo") : Verify that the item with the description 'Sample Todo' is not visible within 10 seconds.

### Process
#### Contextual Semantics of Widgets
````

ACTION (android.widget.TextView, android:id/title, (8, 65), click, NULL): Clicking on this button does nothing as it's the header of the current screen titled "Simply Do".
ACTION (android.widget.EditText, AddListEditText, (0, 114), createView, "New List Name"): The user can click or long-click on this field to input the name of the new list. The created list will show up on the page.
ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): This add button, when clicked, triggers the creation of a new list with the name mentioned in the EditText field named "AddListEditText".
ACTION (android.widget.ListView, ListsListView, (0, 213), create, NULL): This is the ListView that displays all the lists that the user has created. Long-clicking on any list will open context menu.
ACTION (android.widget.LinearLayout, , (0, 213), click, NULL): This is an empty LinearLayout that can be clicked or long-clicked but doesn't produce any action.
ACTION (android.widget.TextView, text1, (20, 233), longClick, "Sample List"): The user can long-click on this text field to open a Delete Dialog which allows the deletion of "Sample List".
ACTION (android.widget.TextView, text2, (636, 240), click, "(0/0)"): This TextView provides information about the status of a list, showing how many items are complete out of total. Clicking on it does nothing.


````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.EditText, AddListEditText, (0, 114), createView, "Sample Todo"): Input the description 'Sample Todo' for the new item.
ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): Click on the 'Add' button to create a new item in the shopping list.
~~~
Based on the given actions, the corresponding UIAutomator2 code in Python would be:

```python
d.click(0, 114)
d(resourceId="kdk.android.simplydo:id/AddListEditText").set_text("Sample Todo")
d.click(626, 114)
```

In the above code, we first click on the EditText field at coordinates (0, 114) to focus on it. Then, we set the text of the EditText field with the id "AddListEditText" to "Sample Todo". Finally, we click on the Button at coordinates (626, 114) to add the new item to the shopping list.
````
#### Contextual Semantics of Widgets
````

ACTION (android.widget.TextView, android:id:title, (8, 65), click, "Simply Do"): Click on this component to re-sort the tasks in the 'Simply Do' list. This will not navigate to a new page.

ACTION (android.widget.EditText, AddListEditText, (0, 114), createView, "New List Name"): This component allows the user to input the name of a new list to add. The default value is 'New List Name'. A long click might provide additional options, like pasting from clipboard.

ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): Click on this button to add the list named in the 'AddListEditText' field to the overall list. This will not navigate to a new page.

ACTION (android.widget.ListView, ListsListView, (0, 213), create, NULL): Long click on this list of task items to open the context menu, providing options like 'Delete' and 'Mark as Completed'. This component does not contain textual content.

ACTION (android.widget.LinearLayout, , (0, 213), click, NULL): The user can click or long click on this layout to interact with the task items it contains. This action may open up further options for each task item. 

ACTION (android.widget.TextView, text1, (20, 233), longClick, "Sample List"): Long click on this list item to open the delete dialog, allowing the user to delete this task from the 'Sample List'. 

ACTION (android.widget.TextView, text2, (636, 240), click, "(0/0)"): Click on this list item to view details of the tasks in the 'Sample List' that are complete and incomplete. The format is (completed/uncompleted). A long click might provide additional options like 'Delete All Completed Tasks'. This will not navigate to a new page.

ACTION (android.widget.TextView, text1, (20, 333), longClick, "Sample Todo"): Long click on this task item to open the delete dialog, allowing the user to delete 'Sample Todo' from the 'Sample List'. 


````

#### Selected Event(s) and Script
````
~~~
ASSERT (android.widget.TextView, text1, (20, 333), wait_until_text_presence, "Sample Todo"): Verify that the item with the description 'Sample Todo' is present within 10 seconds.
ACTION (android.widget.TextView, text1, (20, 333), longClick, "Sample Todo"): Long click on this task item to open the delete dialog, allowing the user to delete 'Sample Todo' from the 'Sample List'.
~~~
Based on the given actions, the corresponding UIAutomator2 code in Python would be:

```python
# Assertion to verify that the item with the description 'Sample Todo' is present within 10 seconds.
assert d(text="Sample Todo").wait(timeout=10)

# Long click on this task item to open the delete dialog, allowing the user to delete 'Sample Todo' from the 'Sample List'.
d(text="Sample Todo").long_click(1)
```

Please note that the device variable name is 'd' and the package name is 'kdk.android.simplydo'. The package name is not used in this case as the operations are performed based on the text attribute of the widget.
````
#### Contextual Semantics of Widgets
````

ACTION (android.widget.TextView, android:id/title, (352, 626), click, "List Options"): Clicking this element does not have any action associated. This is the title of the current view and is not interactable, generally used for user to identify the current page in the app.
ACTION (android.widget.LinearLayout, , (320, 702), click, NULL): Clicking on this element triggers an option list for 'List options'. However, this element doesn't have a direct action, the child elements have the actions.
ACTION (android.widget.TextView, android:id:title, (352, 736), click, "Edit"): Clicking this element enables user to edit the selected list. This action might route the user to a new screen where they can make changes to the list.
ACTION (android.widget.TextView, android:id:title, (352, 865), click, "Delete"): Clicking on this element deletes the currently selected list. This action might be irreversible, so you might be presented with a confirmation before the list gets deleted.


````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.TextView, android:id:title, (352, 865), click, "Delete"): Clicking this element deletes the currently selected list. This action might be irreversible, so you might be presented with a confirmation before the list gets deleted.
ASSERT (, , (), wait_until_text_invisible, "Sample Todo") : Verify that the item with the description 'Sample Todo' is not visible within 10 seconds.
~~~
Based on the given actions and assertions, the corresponding UIAutomator2 code in Python would be:

```python
# Clicking the delete button
d.click(352, 865)

# Waiting until the text 'Sample Todo' is not visible
import time
start_time = time.time()
while time.time() - start_time < 10:
    if not d(text="Sample Todo").exists:
        break
    time.sleep(1)
assert not d(text="Sample Todo").exists
```

In the above code, we first perform the click action on the coordinates (352, 865) which corresponds to the delete button. Then, we wait until the text 'Sample Todo' is not visible on the screen. We do this by continuously checking if the text exists on the screen for a duration of 10 seconds. If the text is not found within this duration, we break out of the loop. Finally, we assert that the text 'Sample Todo' does not exist on the screen.
````
#### Contextual Semantics of Widgets
````
# Output
Action (android.widget.TextView, android:id/alertTitle, (51, 669), click, "Delete?"): The text "Delete?" doesn't perform any real action, it is only posed as a question to the user, and it serves to confirm whether the user wants to delete this list.

Action (android.widget.TextView, android:id/message, (59, 764), click, "Are you sure you want to delete this list?"): The text "Are you sure you want to delete this list?" serves to double confirm with the user that they truly intend to delete the list. 

Action (android.widget.Button, android:id/button1, (35, 907), click, "Yes"): Clicking on this button 'Yes' will confirm the action of deleting the list. The operation will directly delete the list from the application.

Action (android.widget.Button, android:id/button2, (362, 907), click, "No"): Clicking on this button 'No' will cancel the delete action. The application will return to the list options page and not delete the list.
````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.Button, android:id/button1, (35, 907), click, "Yes"): Confirm the deletion of the item from the list.
ASSERT (android.widget.TextView, android:id/message, (59, 764), wait_until_text_invisible, "Are you sure you want to delete this list?"): Verify that the deletion confirmation message is not visible within 10 seconds.
DONE
~~~
Based on the given actions and assertions, the corresponding UIAutomator2 code in Python would be:

```python
d(resourceId="kdk.android.simplydo:id/button1").click()
assert d(resourceId="kdk.android.simplydo:id/message").wait_gone(timeout=10)
```

In the above code:

- The first line corresponds to the action of clicking the button with the id "button1" to confirm the deletion of the item from the list.
- The second line corresponds to the assertion of verifying that the deletion confirmation message with the id "message" is not visible within 10 seconds.
````
### Success
````
ACTION (android.widget.EditText, AddListEditText, (0, 114), createView, "Sample Todo"): Input the description 'Sample Todo' for the new item., Exec_Success
ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): Click on the 'Add' button to create a new item in the shopping list., Exec_Success

ASSERT (android.widget.TextView, text1, (20, 333), wait_until_text_presence, "Sample Todo"): Verify that the item with the description 'Sample Todo' is present within 10 seconds., Exec_Success
ACTION (android.widget.TextView, text1, (20, 333), longClick, "Sample Todo"): Long click on this task item to open the delete dialog, allowing the user to delete 'Sample Todo' from the 'Sample List'., Exec_Success

ACTION (android.widget.TextView, android:id:title, (352, 865), click, "Delete"): Clicking this element deletes the currently selected list. This action might be irreversible, so you might be presented with a confirmation before the list gets deleted., Exec_Success
ASSERT (, , (), wait_until_text_invisible, "Sample Todo") : Verify that the item with the description 'Sample Todo' is not visible within 10 seconds., Exec_Success

ACTION (android.widget.Button, android:id/button1, (35, 907), click, "Yes"): Confirm the deletion of the item from the list., Exec_Success
ASSERT (android.widget.TextView, android:id/message, (59, 764), wait_until_text_invisible, "Are you sure you want to delete this list?"): Verify that the deletion confirmation message is not visible within 10 seconds., Exec_Success
DONE
````

## a23's b22 to a24

### Semantics of Source Test case
> This test case is testing the functionality of creating a new task, verifying its creation, and then deleting the task in the Privacy Friendly To-Do List application.
> 
> The detailed process with serial numbers is as follows:
> 
> 1. ACTION (Button, org.secuso.privacyfriendlytodolist:id/btn_skip, (), click, NULL) : Click on the 'Skip' button to bypass any tutorial or introduction screens.
> 2. ACTION (ImageButton, org.secuso.privacyfriendlytodolist:id/fab_new_task, (), click, NULL) : Click on the 'New Task' button to initiate the creation of a new task.
> 3. ACTION (EditText, org.secuso.privacyfriendlytodolist:id/et_new_task_name, (), input, "Sample Todo") : Input the task name 'Sample Todo' into the task name field.
> 4. ACTION (Button, org.secuso.privacyfriendlytodolist:id/bt_new_task_ok, (), click, NULL) : Click on the 'Okay' button to confirm and create the new task.
> 5. ASSERT (TextView, org.secuso.privacyfriendlytodolist:id/tv_exlv_task_name, (), wait_until_text_presence, "Sample Todo") : Verify that the task with the name 'Sample Todo' is present within 10 seconds.
> 6. ACTION (TextView, org.secuso.privacyfriendlytodolist:id/tv_exlv_task_name, (), long_press, NULL) : Long press on the task named 'Sample Todo' to open the task options.
> 7. ACTION (TextView, android:id/title, (), click, NULL) : Click on the 'Delete To-Do Task' option to delete the task.
> 8. ASSERT (, , (), wait_until_text_invisible, "Sample Todo") : Verify that the task with the name 'Sample Todo' is no longer visible within 10 seconds.

### Process
#### Contextual Semantics of Widgets
````

ACTION (android.widget.TextView, android:id/title, (8, 65), click, "Simply Do"): Click on this 'Simply Do' text to view the list details.
ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "New List Name"): Add a name for the new List in the 'New List Name' EditText field. This event might follow the paths--> addlist --> home.
ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): Event of type 'click' to add a new list with the given name. This event might follow the paths--> addlist --> home.
ACTION (android.widget.ListView, ListsListView, (0, 213), click, NULL): Click on this 'ListView' to open context menu, providing additional options related to list manipulation such as sort, delete etc. 
ACTION (android.widget.LinearLayout, , (0, 213), click, NULL): Click or longclick anywhere in this LinearLayout area to bring focus or possibly open menu related to list items.
ACTION (android.widget.TextView, text1, (20, 233), longClick, "nj"): Long click on this 'nj' text item to possibly delete the selected list or item.
ACTION (android.widget.TextView, text2, (636, 240), click, "(0/0)"): Must click on '(0/0)' to see the breakdown information of the list - the number of tasks completed and the total number of tasks.


````

#### Selected Event(s) and Script
````
~~~
ACTION (ImageButton, fab_add, (556, 1428), click, NULL): Click on the 'Add' button to initiate the creation of a new task. This operation corresponds to the second step of the source test case.
~~~
Based on the given information, the UIAutomator2 code in Python for the given action would be:

```python
d.click(556, 1428)
```

This code will perform a click action at the coordinates (556, 1428) on the device screen, which corresponds to the 'Add' button.
````
#### Contextual Semantics of Widgets
````
# Example Output

ACTION (android.widget.TextView, android:id/title, (8, 65), click, "Simply Do"): This label indicates the current application context "Simply Do". It is unclickable and serves only as header/footer title.
ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "New List Name"): This EditText field allows you to input/edit the name of a new list. After entering the name, pressing return key or clicking on the add button will add a new list item.
ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"):  This button allows you to add a new list. Be sure to input the name in the given EditText field before hitting this button. Clicking this button will add the list to the ListView.
ACTION (android.widget.ListView, ListsListView, (0, 213), click, NULL): List view component displaying the available list items. Clicking on an item will open it for detail view and possible actions. This is a long clickable element and clicking long can reveal additional options if present.
ACTION (android.widget.LinearLayout, , (0, 213), click, NULL): A LinearLayout contains child views. Components are in sequence of addition, so child components are similar to the child components from previous page if any.
ACTION (android.widget.TextView, text1, (20, 233), longClick, "nj"): Represents a list item with name 'nj'. Long Clicking this component can create a context menu with additional options for the said list item.
ACTION (android.widget.TextView, text2, (636, 240), click, "(0/0)"): Unclickable text component showing the statistics of list item 'nj', It's unclickable and statically shows the list information. Text (0/0), indicating that this list has no active tasks or items.
````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "Sample Todo"): Input the task name 'Sample Todo' into the task name field. This operation corresponds to the third step of the source test case.
ACTION (android.widget.Button, AddListButton, (626, 114), click, NULL): Click on the 'Add' button to confirm and create the new task. This operation corresponds to the fourth step of the source test case.
ASSERT (android.widget.TextView, text1, (20, 233), wait_until_text_presence, "Sample Todo"): Verify that the task with the name 'Sample Todo' is present within 10 seconds. This operation corresponds to the fifth step of the source test case.
~~~
Based on the given actions and assertions, the corresponding UIAutomator2 code in Python would be:

```python
d(resourceId="kdk.android.simplydo:id/AddListEditText").set_text("Sample Todo")
d(resourceId="kdk.android.simplydo:id/AddListButton").click()
assert d(resourceId="kdk.android.simplydo:id/text1").wait(timeout=10).get_text() == "Sample Todo"
```

Explanation:

1. The first line of code inputs the task name 'Sample Todo' into the task name field. This operation corresponds to the third step of the source test case.
2. The second line of code clicks on the 'Add' button to confirm and create the new task. This operation corresponds to the fourth step of the source test case.
3. The third line of code verifies that the task with the name 'Sample Todo' is present within 10 seconds. This operation corresponds to the fifth step of the source test case.
````
#### Contextual Semantics of Widgets
````
# Output:

ACTION (android.widget.TextView, android:id/title, (8, 65), NULL, "Simply Do"): No action available for this Text View, it just represents the title of the app page.

ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "New List Name"): Provide the name to be given to the new list to be created in this Edit Text field. Afterwards, the user can click on 'Add' button to create a new list with the entered name.

ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): Click this button to create a new list item with the provided name.

ACTION (android.widget.ListView, ListsListView, (0, 213), click, N/A): Click on this ListView to bring up a context menu with operations related to the handling of the lists.

ACTION (android.widget.LinearLayout, , (0, 213), NULL, N/A): No specific semantic action associated with this LinearLayout. It is a container that can contain other View elements within it.

ACTION (android.widget.TextView, text1, (20, 233), longClick, "nj"): Long click this text field which corresponds to a list item, to bring up options for operations that can be done on the list item, such as Delete.

ACTION (android.widget.TextView, text2, (636, 240), NULL, "(0/0)"): No action associated with this Text View, it represents the count of tasks completed out of total tasks in the particular list.

ACTION (android.widget.TextView, text1, (20, 333), longClick, "Sample Todo"): Long click this text field which corresponds to a ToDo item, to bring up options for operations that can be done on the ToDo item, such as Delete. The output for the given component JSON data is now complete.
````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.TextView, text1, (20, 333), longClick, "Sample Todo"): Long press on the task named 'Sample Todo' to open the task options. This operation corresponds to the sixth step of the source test case.
~~~
Based on the given information, the UIAutomator2 code in Python for the action would be:

```python
d.long_click(20, 333, 1)
```

This code will perform a long click on the coordinates (20, 333) on the device screen. The '1' at the end of the function call specifies the duration of the long click in seconds.
````
#### Contextual Semantics of Widgets
````

ACTION (android.widget.TextView, android:id/title, (60, 597), click, "List Options"): By clicking on this textView control, the user can see the list options. This can be important for changing settings or configurations related to the list.
ACTION (android.widget.LinearLayout, , (28, 673), click, NULL): By clicking on this linear layout control, the user can possibly open a submenu or initiate an accessory action. Consider unique factors or situations where this control can be triggered.
ACTION (android.widget.TextView, android:id:title, (60, 707), click, "Edit"): By clicking on this textView control, the user can edit the list. This usually triggers an edit panel where the user can directly modify entries in the list.
ACTION (android.widget.TextView, android:id:title, (60, 836), click, "Delete"): This textView prompts delete action. Clicking it will likely lead to a prompt to confirm deletion. If confirmed, the associated list will be permanently removed.


````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.TextView, android:id/title, (60, 836), click, NULL): Click on the 'Delete' option to initiate the deletion of the task. This operation corresponds to the seventh step of the source test case.
~~~
Based on the given information, the UIAutomator2 code in Python for the given action would be:

```python
d.click(60, 836)
```

This code will perform a click action at the coordinates (60, 836) on the device screen. This corresponds to the 'Delete' option in the application, initiating the deletion of the task.
````
#### Contextual Semantics of Widgets
````
# Example Output
ACTION (android.widget.TextView, android:id/title, (8, 65), click, "Simply Do"): The title “Simply Do” is displayed on this element. Clicking on this might not perform any action due to its nature as a TextView. The true nature of this element might be explored in the actual application.
ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "New List Name"): This field allows you to add a new list by providing the name of the list in the input field. Long-click action is supported meaning that more options may be unveiled upon long pressing this element, such as paste, copy text.
ACTION (android.widget.Button, AddListButton, (626, 114), click, "Add"): This button if clicked, will add a new List as per the name given in the EditText labeled as 'New List Name'. The user does not navigate from this page but updates this current list page with the new list.
````

#### Selected Event(s) and Script
````
~~~
ACTION (android.widget.Button, android:id/button1, (35, 907), click, "Yes"): Click on the 'Yes' button to confirm the deletion of the task. This operation corresponds to the continuation of the seventh step of the source test case.
ASSERT (android.widget.TextView, text1, (20, 233), wait_until_text_invisible, "Sample Todo"): Verify that the task with the name 'Sample Todo' is no longer visible within 10 seconds. This operation corresponds to the eighth step of the source test case.
DONE
~~~
Based on the given actions, the corresponding UIAutomator2 code in Python would be:

```python
d(resourceId="kdk.android.simplydo:id/button1").click()
assert d(resourceId="kdk.android.simplydo:id/text1").wait_gone(timeout=10)
```

Explanation:

1. The first line of code corresponds to the action of clicking on the 'Yes' button to confirm the deletion of the task. The resourceId is constructed by combining the package name with the id provided.

2. The second line of code corresponds to the action of verifying that the task with the name 'Sample Todo' is no longer visible within 10 seconds. The `wait_gone` function is used to wait until the element is not visible on the screen. The timeout parameter is set to 10 seconds.
````
### Success
````
ACTION (ImageButton, fab_add, (556, 1428), click, NULL): Click on the 'Add' button to initiate the creation of a new task. This operation corresponds to the second step of the source test case., Exec_Success

ACTION (android.widget.EditText, AddListEditText, (0, 114), enter_text, "Sample Todo"): Input the task name 'Sample Todo' into the task name field. This operation corresponds to the third step of the source test case., Exec_Success
ACTION (android.widget.Button, AddListButton, (626, 114), click, NULL): Click on the 'Add' button to confirm and create the new task. This operation corresponds to the fourth step of the source test case., Exec_Success
ASSERT (android.widget.TextView, text1, (20, 233), wait_until_text_presence, "Sample Todo"): Verify that the task with the name 'Sample Todo' is present within 10 seconds. This operation corresponds to the fifth step of the source test case., Exec_Success

ACTION (android.widget.TextView, text1, (20, 333), longClick, "Sample Todo"): Long press on the task named 'Sample Todo' to open the task options. This operation corresponds to the sixth step of the source test case., Exec_Success

ACTION (android.widget.TextView, android:id/title, (60, 836), click, NULL): Click on the 'Delete' option to initiate the deletion of the task. This operation corresponds to the seventh step of the source test case., Exec_Success

ACTION (android.widget.Button, android:id/button1, (35, 907), click, "Yes"): Click on the 'Yes' button to confirm the deletion of the task. This operation corresponds to the continuation of the seventh step of the source test case., Exec_Success
ASSERT (android.widget.TextView, text1, (20, 233), wait_until_text_invisible, "Sample Todo"): Verify that the task with the name 'Sample Todo' is no longer visible within 10 seconds. This operation corresponds to the eighth step of the source test case., Exec_Success
DONE
````

import openai

def analyze(gpt, layout_xml):
    openai.api_key = gpt.key
    openai.api_base = gpt.api_base

    response = openai.ChatCompletion.create(
        model = gpt.model,
        messages=[
            {
                "role": "system",
                "content": "You are currently conducting a test case migration for the Android app, You need to identify the corresponding layout XML file for the current Android interface and summarize the functionality of this interface."
            },
            {
                "role": "user", 
                "content":"""
I will provide the layout XML file content of an Android interface. Please summarize the main functionality of this interface in one sentence.
Example:
Input:
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="16dp">

    <!-- Notification toggle -->
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal"
        android:paddingVertical="8dp">

        <TextView
            android:layout_width="0dp"
            android:layout_height="wrap_content"
            android:layout_weight="1"
            android:text="Enable Notifications"
            android:textSize="16sp" />

        <Switch
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:checked="true" />
    </LinearLayout>

    <!-- Theme selection -->
    <Button
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="Change Theme"
        android:layout_marginTop="8dp" />

    <!-- About -->
    <Button
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="About"
        android:layout_marginTop="8dp" />
</LinearLayout>
Output: This is a clean settings page that includes a notification toggle, a theme selection button, and an about button, designed for quick access to basic settings.


This time, the XML file content to analyze is:
"""+layout_xml
             },
        ],
        temperature=1,
    )
    return list(response.choices)[0].to_dict()["message"]['content']


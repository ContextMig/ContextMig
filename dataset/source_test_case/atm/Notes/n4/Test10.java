package chan.android.app.pocketnote;


import android.support.test.espresso.DataInteraction;
import android.support.test.espresso.ViewInteraction;
import android.support.test.rule.ActivityTestRule;
import android.support.test.runner.AndroidJUnit4;
import android.test.suitebuilder.annotation.LargeTest;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

import org.hamcrest.Description;
import org.hamcrest.Matcher;
import org.hamcrest.TypeSafeMatcher;
import org.junit.Ignore;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import static android.support.test.espresso.Espresso.onData;
import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.action.ViewActions.click;
import static android.support.test.espresso.action.ViewActions.closeSoftKeyboard;
import static android.support.test.espresso.action.ViewActions.replaceText;
import static android.support.test.espresso.matcher.ViewMatchers.isDisplayed;
import static android.support.test.espresso.matcher.ViewMatchers.withClassName;
import static android.support.test.espresso.matcher.ViewMatchers.withContentDescription;
import static android.support.test.espresso.matcher.ViewMatchers.withId;
import static android.support.test.espresso.matcher.ViewMatchers.withText;
import static org.hamcrest.Matchers.allOf;
import static org.hamcrest.Matchers.anything;
import static org.hamcrest.Matchers.is;
@Ignore
@LargeTest
@RunWith(AndroidJUnit4.class)
public class NoteTakingTest10 {

    @Rule
    public ActivityTestRule<MainActivity> mActivityTestRule = new ActivityTestRule<>(MainActivity.class);

    @Test
    public void noteTakingTest10() {
        ViewInteraction linearLayout = onView(
                allOf(withContentDescription("Pocket Note, Open"),
                        childAtPosition(
                                allOf(withClassName(is("com.android.internal.widget.ActionBarView")),
                                        childAtPosition(
                                                withClassName(is("com.android.internal.widget.ActionBarContainer")),
                                                0)),
                                0),
                        isDisplayed()));
        linearLayout.perform(click());

        DataInteraction linearLayout2 = onData(anything())
                .inAdapterView(allOf(withId(R.id.main_$_listview_items),
                        childAtPosition(
                                withId(R.id.main_$_linearlayout_container),
                                1)))
                .atPosition(1);
        linearLayout2.perform(click());

        ViewInteraction button = onView(
                allOf(withId(R.id.calendar_$_button_jump), withText("Jump"),
                        childAtPosition(
                                childAtPosition(
                                        withId(R.id.calendar_$_linearlayout_parent),
                                        2),
                                1),
                        isDisplayed()));
        button.perform(click());

        ViewInteraction button2 = onView(
                allOf(withId(android.R.id.button1), withText("OK"),
                        childAtPosition(
                                childAtPosition(
                                        withClassName(is("android.widget.LinearLayout")),
                                        0),
                                2),
                        isDisplayed()));
        button2.perform(click());

    }

    private static Matcher<View> childAtPosition(
            final Matcher<View> parentMatcher, final int position) {

        return new TypeSafeMatcher<View>() {
            @Override
            public void describeTo(Description description) {
                description.appendText("Child at position " + position + " in parent ");
                parentMatcher.describeTo(description);
            }

            @Override
            public boolean matchesSafely(View view) {
                ViewParent parent = view.getParent();
                return parent instanceof ViewGroup && parentMatcher.matches(parent)
                        && view.equals(((ViewGroup) parent).getChildAt(position));
            }
        };
    }
}

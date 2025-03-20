.class public Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralPreferenceFragment"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final SUMMARIES_TO_UPDATE:[Ljava/lang/String;

.field notificationListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1f588681d933a512L    # -4.028706247205367E157

    const-string v2, "org/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment"

    const/16 v3, 0x3a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 99
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "temperature_pref_key"

    aput-object v2, v1, v5

    const-string v2, "hide_desc_pref_key"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "notification_interval_pref_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "language_pref_key"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "theme_pref_key"

    aput-object v3, v1, v2

    iput-object v1, p0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->SUMMARIES_TO_UPDATE:[Ljava/lang/String;

    aput-boolean v4, v0, v5

    .line 130
    new-instance v1, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment$1;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment$1;-><init>(Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->notificationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    aput-boolean v4, v0, v4

    return-void
.end method

.method private entrySummary(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 142
    invoke-virtual {p0, p1}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    .line 143
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    const/16 v0, 0xe

    aput-boolean v3, v1, v0

    return-void
.end method

.method private updateSummary(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 147
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/16 v3, 0xf

    aput-boolean v1, v2, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x1a

    aput-boolean v1, v2, v0

    .line 183
    :goto_1
    const/16 v0, 0x2f

    aput-boolean v1, v2, v0

    return-void

    .line 147
    :sswitch_0
    const-string v3, "temperature_pref_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x10

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x11

    aput-boolean v1, v2, v3

    goto :goto_0

    :sswitch_1
    const-string v3, "hide_desc_pref_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x12

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x13

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "notification_interval_pref_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x14

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/16 v3, 0x15

    aput-boolean v1, v2, v3

    goto :goto_0

    :sswitch_3
    const-string v3, "language_pref_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x16

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    const/16 v3, 0x17

    aput-boolean v1, v2, v3

    goto :goto_0

    :sswitch_4
    const-string v3, "theme_pref_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x18

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    const/16 v3, 0x19

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->entrySummary(Ljava/lang/String;)V

    .line 150
    if-nez p2, :cond_5

    const/16 v0, 0x1b

    aput-boolean v1, v2, v0

    goto :goto_1

    :cond_5
    const/16 v0, 0x1c

    aput-boolean v1, v2, v0

    .line 151
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "org.asdtm.goodweather.action.FORCED_APPWIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v0, 0x1d

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 155
    :pswitch_1
    if-nez p2, :cond_6

    const/16 v0, 0x1e

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x1f

    aput-boolean v1, v2, v0

    .line 156
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "org.asdtm.goodweather.action.FORCED_APPWIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v0, 0x20

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 160
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->entrySummary(Ljava/lang/String;)V

    .line 161
    if-nez p2, :cond_7

    const/16 v0, 0x21

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x22

    aput-boolean v1, v2, v0

    .line 162
    invoke-virtual {p0, p1}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v3, 0x23

    aput-boolean v1, v2, v3

    .line 163
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-static {v3, v0}, Lorg/asdtm/goodweather/service/NotificationService;->setNotificationServiceAlarm(Landroid/content/Context;Z)V

    .line 164
    const/16 v0, 0x24

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 167
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->entrySummary(Ljava/lang/String;)V

    .line 168
    if-nez p2, :cond_8

    const/16 v0, 0x25

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0x26

    aput-boolean v1, v2, v0

    .line 169
    new-instance v0, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;

    invoke-direct {v0}, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;-><init>()V

    const v3, 0x7f080042

    invoke-virtual {v0, v3}, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;->newInstance(I)Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;

    move-result-object v0

    const/16 v3, 0x27

    aput-boolean v1, v2, v3

    .line 170
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "restartApp"

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 171
    const/16 v0, 0x28

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 174
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->entrySummary(Ljava/lang/String;)V

    .line 175
    if-nez p2, :cond_9

    const/16 v0, 0x29

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x2a

    aput-boolean v1, v2, v0

    .line 176
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/asdtm/goodweather/GoodWeatherApp;

    const/16 v3, 0x2b

    aput-boolean v1, v2, v3

    .line 177
    invoke-virtual {v0}, Lorg/asdtm/goodweather/GoodWeatherApp;->reloadTheme()V

    const/16 v3, 0x2c

    aput-boolean v1, v2, v3

    .line 178
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/asdtm/goodweather/GoodWeatherApp;->applyTheme(Landroid/app/Activity;)V

    const/16 v0, 0x2d

    aput-boolean v1, v2, v0

    .line 179
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/asdtm/goodweather/SettingsActivity;->restartApp(Landroid/app/Activity;)V

    const/16 v0, 0x2e

    aput-boolean v1, v2, v0

    goto/16 :goto_1

    .line 147
    :sswitch_data_0
    .sparse-switch
        -0x653c000c -> :sswitch_1
        -0x53c50b52 -> :sswitch_0
        -0x3a432c07 -> :sswitch_4
        -0x15cb78b6 -> :sswitch_3
        0x52aae29 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 110
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 112
    const-string v0, "notification_pref_key"

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 114
    iget-object v2, p0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->notificationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v7, v1, v3

    .line 120
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v7, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x7

    aput-boolean v7, v1, v4

    .line 121
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0x8

    aput-boolean v7, v1, v5

    .line 122
    const/high16 v5, 0x42600000    # 56.0f

    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v0, v5

    .line 124
    .local v0, "topMargin":I
    if-nez v2, :cond_0

    const/16 v3, 0x9

    aput-boolean v7, v1, v3

    .line 127
    :goto_0
    const/16 v3, 0xc

    aput-boolean v7, v1, v3

    return-object v2

    .line 124
    :cond_0
    const/16 v5, 0xa

    aput-boolean v7, v1, v5

    .line 125
    invoke-virtual {v2, v3, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v3, 0xb

    aput-boolean v7, v1, v3

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    const/16 v1, 0x37

    aput-boolean v3, v0, v1

    .line 204
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x38

    aput-boolean v3, v0, v2

    .line 205
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 206
    const/16 v1, 0x39

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 192
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const/16 v0, 0x31

    aput-boolean v7, v2, v0

    .line 193
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v3, 0x32

    aput-boolean v7, v2, v3

    .line 194
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 196
    iget-object v3, p0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->SUMMARIES_TO_UPDATE:[Ljava/lang/String;

    array-length v4, v3

    const/16 v0, 0x33

    aput-boolean v7, v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    const/16 v6, 0x34

    aput-boolean v7, v2, v6

    .line 197
    invoke-direct {p0, v5, v1}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->updateSummary(Ljava/lang/String;Z)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x35

    aput-boolean v7, v2, v5

    goto :goto_0

    .line 199
    :cond_0
    const/16 v0, 0x36

    aput-boolean v7, v2, v0

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 187
    invoke-direct {p0, p2, v2}, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;->updateSummary(Ljava/lang/String;Z)V

    .line 188
    const/16 v1, 0x30

    aput-boolean v2, v0, v1

    return-void
.end method

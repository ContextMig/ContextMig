.class public Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;
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
    name = "WidgetPreferenceFragment"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2de68c12651abbe8L    # -3.16457272770513E87

    const-string v2, "org/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment"

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 209
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setSummary()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 270
    const-string v1, "widget_update_period_pref_key"

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .local v0, "updatePeriodPref":Landroid/preference/Preference;
    move-object v1, v0

    .line 271
    check-cast v1, Landroid/preference/ListPreference;

    const/16 v3, 0x24

    aput-boolean v4, v2, v3

    .line 272
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 273
    const/16 v1, 0x25

    aput-boolean v4, v2, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 214
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 215
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->addPreferencesFromResource(I)V

    .line 216
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 220
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x3

    aput-boolean v7, v1, v3

    .line 221
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v7, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x4

    aput-boolean v7, v1, v4

    .line 222
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x5

    aput-boolean v7, v1, v5

    .line 223
    const/high16 v5, 0x42600000    # 56.0f

    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v0, v5

    .line 225
    .local v0, "topMargin":I
    if-nez v2, :cond_0

    const/4 v3, 0x6

    aput-boolean v7, v1, v3

    .line 228
    :goto_0
    const/16 v3, 0x9

    aput-boolean v7, v1, v3

    return-object v2

    .line 225
    :cond_0
    const/4 v5, 0x7

    aput-boolean v7, v1, v5

    .line 226
    invoke-virtual {v2, v3, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v3, 0x8

    aput-boolean v7, v1, v3

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 264
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    .line 265
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x22

    aput-boolean v3, v0, v2

    .line 266
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 267
    const/16 v1, 0x23

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 256
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    .line 257
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x1e

    aput-boolean v3, v0, v2

    .line 258
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    .line 259
    invoke-direct {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->setSummary()V

    .line 260
    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->$jacocoInit()[Z

    move-result-object v5

    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/16 v1, 0xa

    aput-boolean v4, v5, v1

    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x11

    aput-boolean v4, v5, v1

    .line 252
    .local v0, "fineLocationPermission":I
    :goto_1
    const/16 v1, 0x1c

    aput-boolean v4, v5, v1

    return-void

    .line 233
    .end local v0    # "fineLocationPermission":I
    :sswitch_0
    const-string v1, "widget_theme_pref_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xb

    aput-boolean v4, v5, v1

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    aput-boolean v4, v5, v1

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v1, "widget_update_period_pref_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xd

    aput-boolean v4, v5, v1

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    aput-boolean v4, v5, v1

    move v1, v4

    goto :goto_0

    :sswitch_2
    const-string v1, "widget_update_location_pref_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xf

    aput-boolean v4, v5, v1

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    const/16 v6, 0x10

    aput-boolean v4, v5, v6

    goto :goto_0

    .line 235
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.asdtm.goodweather.action.APPWIDGET_THEME_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-boolean v4, v5, v2

    .line 236
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    const/16 v1, 0x13

    aput-boolean v4, v5, v1

    goto :goto_1

    .line 239
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.asdtm.goodweather.action.APPWIDGET_UPDATE_PERIOD_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-boolean v4, v5, v2

    .line 240
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v1, 0x15

    aput-boolean v4, v5, v1

    .line 241
    invoke-direct {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->setSummary()V

    .line 242
    const/16 v1, 0x16

    aput-boolean v4, v5, v1

    goto :goto_1

    .line 244
    :pswitch_2
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 245
    .restart local v0    # "fineLocationPermission":I
    if-nez v0, :cond_3

    const/16 v1, 0x17

    aput-boolean v4, v5, v1

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x18

    aput-boolean v4, v5, v1

    .line 246
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v6, 0x1020002

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f08006b

    invoke-static {v1, v6, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    const/16 v1, 0x19

    aput-boolean v4, v5, v1

    .line 247
    invoke-virtual {p0, p2}, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/16 v2, 0x1a

    aput-boolean v4, v5, v2

    .line 248
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v1, 0x1b

    aput-boolean v4, v5, v1

    goto/16 :goto_1

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x2d578332 -> :sswitch_2
        0x71019754 -> :sswitch_0
        0x7c575fe6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

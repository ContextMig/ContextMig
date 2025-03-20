.class public Lcom/haringeymobile/ukweather/settings/SettingsActivity;
.super Lcom/haringeymobile/ukweather/ThemedActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$Listener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final LANGUAGE_DEFAULT:Ljava/lang/String; = "device_language"

.field private static final PERSONAL_API_KEY_FRAGMENT_TAG:Ljava/lang/String; = "personal api key fragment"

.field public static final PREF_APP_LANGUAGE:Ljava/lang/String; = "app_language"

.field public static final PREF_APP_THEME:Ljava/lang/String; = "app_theme"

.field public static final PREF_CITY_REMOVAL_MODE:Ljava/lang/String; = "city_removal_mode"

.field public static final PREF_DATA_CACHE_PERIOD:Ljava/lang/String; = "data_cache_period"

.field public static final PREF_FORECAST_DISPLAY_MODE:Ljava/lang/String; = "forecast_display_mode"

.field public static final PREF_PERSONAL_API_KEY:Ljava/lang/String; = "personal_api_key"

.field public static final PREF_TEMPERATURE_SCALE:Ljava/lang/String; = "temperature_scale"

.field public static final PREF_WIND_DIRECTION_DISPLAY:Ljava/lang/String; = "wind_direction_display"

.field public static final PREF_WIND_SPEED_MEASUREMENT_UNIT:Ljava/lang/String; = "wind_speed_measurement_unit"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x54d1e350dab3ed4L

    const-string v2, "com/haringeymobile/ukweather/settings/SettingsActivity"

    const/16 v3, 0x2c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private showEnterPersonalApiKeyDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 93
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    const-string v3, "personal api key fragment"

    const/16 v4, 0x1f

    aput-boolean v5, v2, v4

    .line 94
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;

    .line 95
    .local v1, "personalKeyFragment":Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;
    if-eqz v1, :cond_0

    const/16 v3, 0x20

    aput-boolean v5, v2, v3

    .line 103
    :goto_0
    const/16 v3, 0x25

    aput-boolean v5, v2, v3

    return-void

    .line 95
    :cond_0
    const/16 v3, 0x21

    aput-boolean v5, v2, v3

    .line 96
    new-instance v1, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;

    .end local v1    # "personalKeyFragment":Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;
    invoke-direct {v1}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;-><init>()V

    .restart local v1    # "personalKeyFragment":Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;
    const/16 v3, 0x22

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v3

    .line 98
    const-string v3, "personal api key fragment"

    invoke-virtual {v1, v0, v3}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/16 v3, 0x23

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 99
    :catch_0
    move-exception v3

    const/16 v3, 0x24

    aput-boolean v5, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public onCancelUpdatingPersonalApiKey()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v3, 0x26

    aput-boolean v5, v2, v3

    .line 108
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "personal_api_key"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x27

    aput-boolean v5, v2, v1

    .line 110
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v3, 0x7f0c0062

    const/16 v4, 0x28

    aput-boolean v5, v2, v4

    .line 111
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment;

    .line 112
    .local v0, "preferenceFragment":Landroid/preference/PreferenceFragment;
    const-string v1, "personal_api_key"

    const/16 v3, 0x29

    aput-boolean v5, v2, v3

    .line 113
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/16 v3, 0x2a

    aput-boolean v5, v2, v3

    .line 114
    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    const/16 v1, 0x2b

    aput-boolean v5, v2, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 43
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v5, v2, v5

    .line 44
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->setContentView(I)V

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    .line 46
    const v1, 0x7f0c006a

    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    .line 47
    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    .line 48
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_0

    const/4 v3, 0x5

    aput-boolean v5, v2, v3

    .line 52
    :goto_0
    const v3, 0x7f02007d

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    const/16 v1, 0x8

    aput-boolean v5, v2, v1

    .line 54
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v3, 0x7f0c0062

    new-instance v4, Lcom/haringeymobile/ukweather/settings/SettingsFragment;

    invoke-direct {v4}, Lcom/haringeymobile/ukweather/settings/SettingsFragment;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v3, 0x9

    aput-boolean v5, v2, v3

    .line 55
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    const/16 v1, 0xa

    aput-boolean v5, v2, v1

    .line 57
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v3, 0xb

    aput-boolean v5, v2, v3

    .line 58
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 59
    const/16 v1, 0xc

    aput-boolean v5, v2, v1

    return-void

    .line 49
    :cond_0
    const/4 v3, 0x6

    aput-boolean v5, v2, v3

    .line 50
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v3, 0x7

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 63
    const-string v3, "app_theme"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    aput-boolean v6, v2, v3

    .line 64
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->recreate()V

    const/16 v3, 0xe

    aput-boolean v6, v2, v3

    .line 86
    .local v1, "shouldUsePersonalApiKey":Z
    :goto_0
    const/16 v3, 0x1e

    aput-boolean v6, v2, v3

    return-void

    .line 65
    .end local v1    # "shouldUsePersonalApiKey":Z
    :cond_0
    const-string v3, "app_language"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xf

    aput-boolean v6, v2, v3

    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v4, 0x10

    aput-boolean v6, v2, v4

    .line 67
    const-string v4, "app_language"

    const-string v5, "device_language"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x11

    aput-boolean v6, v2, v3

    .line 70
    const-string v3, "device_language"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    sget-object v0, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->systemLocaleCode:Ljava/lang/String;

    .local v0, "newAppLocaleCode":Ljava/lang/String;
    const/16 v3, 0x12

    aput-boolean v6, v2, v3

    .line 75
    :goto_1
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->updateLocale(Ljava/lang/String;Landroid/content/res/Resources;)V

    const/16 v3, 0x14

    aput-boolean v6, v2, v3

    .line 77
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->recreate()V

    const/16 v3, 0x15

    aput-boolean v6, v2, v3

    .line 78
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->resetActionBarTitle()V

    const/16 v3, 0x16

    aput-boolean v6, v2, v3

    .line 79
    const/16 v3, 0x17

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 73
    .end local v0    # "newAppLocaleCode":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x13

    aput-boolean v6, v2, v3

    goto :goto_1

    .line 79
    :cond_2
    const-string v3, "personal_api_key"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x18

    aput-boolean v6, v2, v3

    goto :goto_0

    :cond_3
    const/16 v3, 0x19

    aput-boolean v6, v2, v3

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v4, 0x1a

    aput-boolean v6, v2, v4

    .line 81
    const-string v4, "personal_api_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 82
    .restart local v1    # "shouldUsePersonalApiKey":Z
    if-nez v1, :cond_4

    const/16 v3, 0x1b

    aput-boolean v6, v2, v3

    goto :goto_0

    :cond_4
    const/16 v3, 0x1c

    aput-boolean v6, v2, v3

    .line 83
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/settings/SettingsActivity;->showEnterPersonalApiKeyDialog()V

    const/16 v3, 0x1d

    aput-boolean v6, v2, v3

    goto/16 :goto_0
.end method

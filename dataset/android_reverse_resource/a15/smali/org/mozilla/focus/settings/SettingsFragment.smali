.class public Lorg/mozilla/focus/settings/SettingsFragment;
.super Lorg/mozilla/focus/settings/BaseSettingsFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private localeUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/mozilla/focus/settings/SettingsFragment;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lorg/mozilla/focus/settings/SettingsFragment;

    invoke-direct {v0}, Lorg/mozilla/focus/settings/SettingsFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f130008

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/settings/SettingsFragment;->addPreferencesFromResource(I)V

    .line 36
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 58
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onPause()V

    .line 59
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f00b5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Lorg/mozilla/focus/settings/PrivacySecuritySettingsFragment;

    invoke-direct {v1}, Lorg/mozilla/focus/settings/PrivacySecuritySettingsFragment;-><init>()V

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/settings/SettingsFragment;->navigateToFragment(Landroid/app/Fragment;)V

    .line 77
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f00bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Lorg/mozilla/focus/settings/SearchSettingsFragment;

    invoke-direct {v1}, Lorg/mozilla/focus/settings/SearchSettingsFragment;-><init>()V

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/settings/SettingsFragment;->navigateToFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f00aa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Lorg/mozilla/focus/settings/MozillaSettingsFragment;

    invoke-direct {v1}, Lorg/mozilla/focus/settings/MozillaSettingsFragment;-><init>()V

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/settings/SettingsFragment;->navigateToFragment(Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lorg/mozilla/focus/settings/BaseSettingsFragment;->onResume()V

    .line 42
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 44
    const v2, 0x7f0f00a6

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/widget/DefaultBrowserPreference;

    .line 45
    .local v0, "preference":Lorg/mozilla/focus/widget/DefaultBrowserPreference;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lorg/mozilla/focus/widget/DefaultBrowserPreference;->update()V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;

    .line 51
    .local v1, "updater":Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;
    const v2, 0x7f0f0095

    invoke-interface {v1, v2}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateTitle(I)V

    .line 52
    const v2, 0x7f080084

    invoke-interface {v1, v2}, Lorg/mozilla/focus/settings/BaseSettingsFragment$ActionBarUpdater;->updateIcon(I)V

    .line 53
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0f00a8

    const/4 v6, 0x1

    .line 82
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->settingsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-boolean v4, p0, Lorg/mozilla/focus/settings/SettingsFragment;->localeUpdated:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, v5}, Lorg/mozilla/focus/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    iput-boolean v6, p0, Lorg/mozilla/focus/settings/SettingsFragment;->localeUpdated:Z

    .line 90
    invoke-virtual {p0, v5}, Lorg/mozilla/focus/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mozilla/focus/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 91
    .local v0, "languagePreference":Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "value":Ljava/lang/String;
    invoke-static {}, Lorg/mozilla/focus/locale/LocaleManager;->getInstance()Lorg/mozilla/focus/locale/LocaleManager;

    move-result-object v2

    .line 96
    .local v2, "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/mozilla/focus/locale/LocaleManager;->resetToSystemLocale(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/mozilla/focus/locale/LocaleManager;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 103
    .local v1, "locale":Ljava/util/Locale;
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lorg/mozilla/focus/locale/LocaleManager;->updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V

    .line 107
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Activity;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f090049

    .line 114
    invoke-static {}, Lorg/mozilla/focus/settings/SettingsFragment;->newInstance()Lorg/mozilla/focus/settings/SettingsFragment;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 117
    .end local v0    # "languagePreference":Landroid/preference/ListPreference;
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v2    # "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 100
    .restart local v0    # "languagePreference":Landroid/preference/ListPreference;
    .restart local v2    # "localeManager":Lorg/mozilla/focus/locale/LocaleManager;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Lorg/mozilla/focus/locale/Locales;->parseLocaleCode(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 101
    .restart local v1    # "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lorg/mozilla/focus/locale/LocaleManager;->setSelectedLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

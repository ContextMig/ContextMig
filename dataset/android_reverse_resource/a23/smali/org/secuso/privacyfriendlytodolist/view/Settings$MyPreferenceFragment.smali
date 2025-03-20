.class public Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyPreferenceFragment"
.end annotation


# instance fields
.field ignoreChanges:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->ignoreChanges:Z

    return-void
.end method

.method private initSummary(Landroid/preference/Preference;)V
    .locals 2

    .line 100
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Landroid/preference/PreferenceGroup;

    const/4 v0, 0x0

    .line 102
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 103
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->initSummary(Landroid/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->updatePrefSummary(Landroid/preference/Preference;)V

    :cond_1
    return-void
.end method

.method private updatePrefSummary(Landroid/preference/Preference;)V
    .locals 1

    .line 111
    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 112
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    .line 113
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f110001

    .line 93
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->initSummary(Landroid/preference/Preference;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_pin_enabled"

    const/4 v2, 0x0

    .line 128
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pref_pin"

    const/4 v3, 0x0

    .line 130
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->ignoreChanges:Z

    const-string v0, "pref_pin_enabled"

    .line 134
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 135
    iput-boolean v2, p0, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->ignoreChanges:Z

    .line 139
    :cond_1
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 121
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 145
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->ignoreChanges:Z

    if-nez v0, :cond_1

    const-string v0, "pref_pin"

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 147
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 151
    iput-boolean v2, p0, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->ignoreChanges:Z

    const-string p1, "pref_pin"

    .line 152
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 153
    iput-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->ignoreChanges:Z

    .line 154
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0e006f

    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "pref_pin_enabled"

    .line 157
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_pin_enabled"

    .line 158
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    iput-boolean v2, p0, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->ignoreChanges:Z

    const-string p1, "pref_pin"

    .line 162
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 163
    iput-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->ignoreChanges:Z

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/Settings$MyPreferenceFragment;->updatePrefSummary(Landroid/preference/Preference;)V

    return-void
.end method

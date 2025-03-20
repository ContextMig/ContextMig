.class public Lcom/woefe/shoppinglist/activity/SettingsFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final KEY_DIRECTORY_LOCATION:Ljava/lang/String; = "FILE_LOCATION"

.field private static final REQUEST_CODE_CHOOSE_DIR:I = 0x7b


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private initSummary(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 86
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    const/4 v0, 0x0

    .line 88
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 89
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->initSummary(Landroid/support/v7/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->updatePreferences(Landroid/support/v7/preference/Preference;)V

    :cond_1
    return-void
.end method

.method private updatePreferences(Landroid/support/v7/preference/Preference;)V
    .locals 3

    const-string v0, "FILE_LOCATION"

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FILE_LOCATION"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    instance-of v0, p1, Landroid/support/v7/preference/EditTextPreference;

    if-eqz v0, :cond_1

    .line 102
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    .line 103
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "FILE_LOCATION"

    .line 67
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 69
    new-instance v0, Lcom/woefe/shoppinglist/activity/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/woefe/shoppinglist/activity/SettingsFragment$1;-><init>(Lcom/woefe/shoppinglist/activity/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "SELECTED_PATH"

    .line 127
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "FILE_LOCATION"

    .line 129
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f100000

    .line 49
    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->addPreferencesFromResource(I)V

    .line 50
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 p1, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->initSummary(Landroid/support/v7/preference/Preference;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onDestroy()V

    .line 82
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "FILE_LOCATION"

    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0, p2}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Lcom/woefe/shoppinglist/activity/SettingsFragment;->updatePreferences(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

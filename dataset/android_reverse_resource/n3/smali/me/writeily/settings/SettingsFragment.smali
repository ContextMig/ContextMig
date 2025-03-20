.class public Lme/writeily/settings/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field context:Landroid/content/Context;

.field mCallback:Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;

.field pinPreference:Landroid/preference/ListPreference;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/settings/SettingsFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2552110a83563354L    # 6.515946239278939E-129

    const-string v2, "me/writeily/settings/SettingsFragment"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/settings/SettingsFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setUpStorageDirPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    const v1, 0x7f0600b1

    invoke-virtual {p0, v1}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/writeily/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    .line 87
    new-instance v2, Lme/writeily/settings/SettingsFragment$3;

    invoke-direct {v2, p0}, Lme/writeily/settings/SettingsFragment$3;-><init>(Lme/writeily/settings/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 100
    invoke-virtual {p0}, Lme/writeily/settings/SettingsFragment;->updateRootDirSummary()V

    .line 101
    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    return-void
.end method

.method private updateLockSummary()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    iget-object v1, p0, Lme/writeily/settings/SettingsFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0600aa

    invoke-virtual {p0, v2}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-boolean v5, v0, v2

    .line 121
    iget-object v2, p0, Lme/writeily/settings/SettingsFragment;->pinPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lme/writeily/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    const/16 v1, 0x16

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 117
    :goto_0
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void

    .line 113
    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    .line 114
    invoke-direct {p0}, Lme/writeily/settings/SettingsFragment;->updateLockSummary()V

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 135
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    const/16 v1, 0x1c

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v1

    .line 139
    move-object v0, p1

    check-cast v0, Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;

    move-object v1, v0

    iput-object v1, p0, Lme/writeily/settings/SettingsFragment;->mCallback:Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/16 v1, 0x1f

    aput-boolean v5, v2, v1

    return-void

    .line 140
    :catch_0
    move-exception v1

    const/16 v1, 0x1d

    aput-boolean v5, v2, v1

    .line 141
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "must implement OnThemeChangedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1e

    aput-boolean v5, v2, v3

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v3, v1, v3

    .line 33
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lme/writeily/settings/SettingsFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 35
    invoke-virtual {p0}, Lme/writeily/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/writeily/settings/SettingsFragment;->context:Landroid/content/Context;

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 36
    const v0, 0x7f0600aa

    invoke-virtual {p0, v0}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/writeily/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lme/writeily/settings/SettingsFragment;->pinPreference:Landroid/preference/ListPreference;

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 37
    invoke-direct {p0}, Lme/writeily/settings/SettingsFragment;->updateLockSummary()V

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 40
    iget-object v0, p0, Lme/writeily/settings/SettingsFragment;->pinPreference:Landroid/preference/ListPreference;

    new-instance v2, Lme/writeily/settings/SettingsFragment$1;

    invoke-direct {v2, p0}, Lme/writeily/settings/SettingsFragment$1;-><init>(Lme/writeily/settings/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 65
    invoke-virtual {p0}, Lme/writeily/settings/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 68
    const v0, 0x7f0600a1

    invoke-virtual {p0, v0}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/writeily/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    .line 69
    new-instance v2, Lme/writeily/settings/SettingsFragment$2;

    invoke-direct {v2, p0}, Lme/writeily/settings/SettingsFragment$2;-><init>(Lme/writeily/settings/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    .line 81
    invoke-direct {p0}, Lme/writeily/settings/SettingsFragment;->setUpStorageDirPreference()V

    .line 83
    const/16 v0, 0xa

    aput-boolean v3, v1, v0

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 126
    iget-object v0, p0, Lme/writeily/settings/SettingsFragment;->mCallback:Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    const/16 v2, 0x17

    aput-boolean v3, v1, v2

    .line 128
    const v2, 0x7f0600b4

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x18

    aput-boolean v3, v1, v0

    .line 131
    :goto_0
    const/16 v0, 0x1b

    aput-boolean v3, v1, v0

    return-void

    .line 128
    :cond_0
    const/16 v0, 0x19

    aput-boolean v3, v1, v0

    .line 129
    iget-object v0, p0, Lme/writeily/settings/SettingsFragment;->mCallback:Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;

    invoke-interface {v0}, Lme/writeily/settings/SettingsFragment$WriteilySettingsListener;->onThemeChanged()V

    const/16 v0, 0x1a

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method public updateRootDirSummary()V
    .locals 6

    .prologue
    const v3, 0x7f0600b1

    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    invoke-virtual {p0, v3}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/writeily/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/16 v2, 0xe

    aput-boolean v5, v0, v2

    .line 105
    iget-object v2, p0, Lme/writeily/settings/SettingsFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0, v3}, Lme/writeily/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lme/writeily/model/Constants;->DEFAULT_WRITEILY_STORAGE_FOLDER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    const/16 v1, 0xf

    aput-boolean v5, v0, v1

    return-void
.end method

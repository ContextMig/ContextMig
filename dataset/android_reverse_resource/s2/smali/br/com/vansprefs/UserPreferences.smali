.class public Lbr/com/vansprefs/UserPreferences;
.super Landroid/preference/PreferenceActivity;
.source "UserPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private listOrdenationAlphabeticalStyle:Landroid/preference/ListPreference;

.field private listOrdenationCheckedStyle:Landroid/preference/ListPreference;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansprefs/UserPreferences;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2a0414d2fa533ff3L    # 2.736177837409903E-106

    const-string v2, "br/com/vansprefs/UserPreferences"

    const/16 v3, 0x29

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansprefs/UserPreferences;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getFistPrefs()V
    .locals 8

    .prologue
    const v7, 0x7f050066

    const v6, 0x7f050065

    const v4, 0x7f050064

    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x8

    aput-boolean v5, v0, v2

    .line 40
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v3, 0x9

    aput-boolean v5, v0, v3

    .line 41
    invoke-virtual {p0, v4}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v3, 0xa

    aput-boolean v5, v0, v3

    .line 42
    invoke-virtual {p0, v6}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v3, 0xb

    aput-boolean v5, v0, v3

    .line 43
    invoke-virtual {p0, v7}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    .line 45
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    const/16 v1, 0xd

    aput-boolean v5, v0, v1

    return-void
.end method

.method public static getItemListAlphabeticalOrdenation(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x1e

    aput-boolean v4, v0, v2

    .line 97
    const v2, 0x7f050062

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public static getItemListCheckedOrdenation(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x1c

    aput-boolean v4, v0, v2

    .line 92
    const v2, 0x7f050063

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public static getShowCheckBox(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v3, v0, v2

    .line 77
    const v2, 0x7f050064

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x17

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static getShowQuantity(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x18

    aput-boolean v3, v0, v2

    .line 82
    const v2, 0x7f050065

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x19

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static getShowUnitValue(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x1a

    aput-boolean v3, v0, v2

    .line 87
    const v2, 0x7f050066

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x1b

    aput-boolean v3, v0, v2

    return v1
.end method

.method private setSummaries()V
    .locals 6

    .prologue
    const v5, 0x7f05001e

    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    iget-object v1, p0, Lbr/com/vansprefs/UserPreferences;->listOrdenationAlphabeticalStyle:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbr/com/vansprefs/UserPreferences;->listOrdenationAlphabeticalStyle:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v1, 0x14

    aput-boolean v4, v0, v1

    .line 72
    iget-object v1, p0, Lbr/com/vansprefs/UserPreferences;->listOrdenationCheckedStyle:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbr/com/vansprefs/UserPreferences;->listOrdenationCheckedStyle:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v1

    .line 25
    invoke-direct {p0}, Lbr/com/vansprefs/UserPreferences;->getFistPrefs()V

    aput-boolean v2, v1, v2

    .line 26
    invoke-virtual {p0}, Lbr/com/vansprefs/UserPreferences;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 29
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lbr/com/vansprefs/UserPreferences;->addPreferencesFromResource(I)V

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 31
    const v0, 0x7f050063

    invoke-virtual {p0, v0}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/vansprefs/UserPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lbr/com/vansprefs/UserPreferences;->listOrdenationCheckedStyle:Landroid/preference/ListPreference;

    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    .line 32
    const v0, 0x7f050062

    invoke-virtual {p0, v0}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/vansprefs/UserPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lbr/com/vansprefs/UserPreferences;->listOrdenationAlphabeticalStyle:Landroid/preference/ListPreference;

    const/4 v0, 0x6

    aput-boolean v2, v1, v0

    .line 34
    const v0, 0x7f050061

    invoke-virtual {p0, v0}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/vansprefs/UserPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 36
    const/4 v0, 0x7

    aput-boolean v2, v1, v0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lbr/com/vansprefs/UserPreferences;->finish()V

    .line 117
    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    return v2
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 60
    invoke-virtual {p0}, Lbr/com/vansprefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 62
    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v1

    .line 103
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f050061

    invoke-virtual {p0, v2}, Lbr/com/vansprefs/UserPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    const/16 v0, 0x23

    aput-boolean v4, v1, v0

    .line 111
    :goto_1
    const/4 v0, 0x0

    const/16 v2, 0x27

    aput-boolean v4, v1, v2

    return v0

    .line 103
    :cond_0
    const/16 v0, 0x21

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v1, v0

    .line 104
    new-instance v0, Lbr/com/vansdialog/CustomDialogAboutApp;

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lbr/com/vansdialog/CustomDialogAboutApp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbr/com/vansdialog/CustomDialogAboutApp;->show()V

    const/16 v0, 0x22

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    const/16 v2, 0x24

    aput-boolean v4, v1, v2

    .line 107
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x25

    aput-boolean v4, v1, v2

    .line 108
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/16 v0, 0x26

    aput-boolean v4, v1, v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 51
    invoke-virtual {p0}, Lbr/com/vansprefs/UserPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    .line 52
    invoke-direct {p0}, Lbr/com/vansprefs/UserPreferences;->setSummaries()V

    .line 53
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansprefs/UserPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-direct {p0}, Lbr/com/vansprefs/UserPreferences;->setSummaries()V

    .line 68
    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

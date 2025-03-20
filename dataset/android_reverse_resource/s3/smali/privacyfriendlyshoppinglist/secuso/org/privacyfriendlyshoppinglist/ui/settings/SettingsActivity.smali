.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$GeneralPreferenceFragment;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x53ea40f78e61bb3dL    # 1.7524290058250234E96

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$1;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity$1;-><init>()V

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Landroid/preference/Preference;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->bindPreferenceSummaryToValue(Landroid/preference/Preference;)V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static bindPreferenceSummaryToValue(Landroid/preference/Preference;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    sget-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    sget-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    aput-boolean v5, v0, v5

    .line 96
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v5, v0, v3

    .line 97
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-boolean v5, v0, v3

    .line 94
    invoke-interface {v1, p0, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 98
    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method protected getNavigationDrawerID()I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 116
    const v1, 0x7f10011c

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    invoke-super {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 105
    const v1, 0x7f04001e

    invoke-virtual {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->setContentView(I)V

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 110
    invoke-virtual {p0, v3, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsActivity;->overridePendingTransition(II)V

    .line 111
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    return-void
.end method

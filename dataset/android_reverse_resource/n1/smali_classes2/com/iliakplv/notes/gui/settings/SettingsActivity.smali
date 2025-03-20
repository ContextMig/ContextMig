.class public Lcom/iliakplv/notes/gui/settings/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final PREFERENCES:I = 0x7f040000


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/settings/SettingsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7d00efcdd12e8bf0L    # -3.039844449935794E-294

    const-string v2, "com/iliakplv/notes/gui/settings/SettingsActivity"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/settings/SettingsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/high16 v3, 0x7f040000

    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/settings/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 17
    invoke-virtual {p0, v3}, Lcom/iliakplv/notes/gui/settings/SettingsActivity;->addPreferencesFromResource(I)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 18
    const/4 v1, 0x0

    invoke-static {p0, v3, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 19
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

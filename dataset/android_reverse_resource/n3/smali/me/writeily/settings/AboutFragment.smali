.class public Lme/writeily/settings/AboutFragment;
.super Landroid/preference/PreferenceFragment;
.source "AboutFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/settings/AboutFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x56941ead2fa789c3L    # 1.1813069443425994E109

    const-string v2, "me/writeily/settings/AboutFragment"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/settings/AboutFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/settings/AboutFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/settings/AboutFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 16
    const/high16 v1, 0x7f050000

    invoke-virtual {p0, v1}, Lme/writeily/settings/AboutFragment;->addPreferencesFromResource(I)V

    .line 17
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

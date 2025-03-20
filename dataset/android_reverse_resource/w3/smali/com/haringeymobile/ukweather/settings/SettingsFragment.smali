.class public Lcom/haringeymobile/ukweather/settings/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/settings/SettingsFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7d9a80e4271faa4aL    # 1.0833247517309038E297

    const-string v2, "com/haringeymobile/ukweather/settings/SettingsFragment"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/settings/SettingsFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 13
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

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 18
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/settings/SettingsFragment;->addPreferencesFromResource(I)V

    .line 19
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

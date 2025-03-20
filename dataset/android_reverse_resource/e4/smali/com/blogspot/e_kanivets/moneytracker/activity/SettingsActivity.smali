.class public Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "SettingsActivity"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x852cd8ae5d15803L    # -3.012630450345267E268

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/SettingsActivity"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    const v1, 0x7f0b0027

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initViews()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 38
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090040

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;

    invoke-direct {v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;-><init>()V

    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 41
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

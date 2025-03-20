.class public abstract Lcom/benoitletondor/easybudgetapp/view/premium/PremiumFragment;
.super Landroid/support/v4/app/Fragment;
.source "PremiumFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/premium/PremiumFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3399ec26233b0807L    # 4.0328961384825686E-60

    const-string v2, "com/benoitletondor/easybudgetapp/view/premium/PremiumFragment"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/premium/PremiumFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/premium/PremiumFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.class public Lcom/benoitletondor/easybudgetapp/view/premium/Premium2Fragment;
.super Lcom/benoitletondor/easybudgetapp/view/premium/PremiumFragment;
.source "Premium2Fragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/premium/Premium2Fragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7ff5800ec6476bcfL

    const-string v2, "com/benoitletondor/easybudgetapp/view/premium/Premium2Fragment"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/premium/Premium2Fragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/premium/Premium2Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/premium/PremiumFragment;-><init>()V

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/premium/Premium2Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    const v1, 0x7f04003c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    aput-boolean v3, v0, v3

    return-object v1
.end method

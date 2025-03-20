.class Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$1;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x426481c02914d6fbL    # 7.046096017027181E11

    const-string v2, "com/benoitletondor/easybudgetapp/view/PremiumActivity$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$1;->$jacocoInit()[Z

    move-result-object v1

    .line 71
    packed-switch p1, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/premium/Premium1Fragment;

    invoke-direct {v0}, Lcom/benoitletondor/easybudgetapp/view/premium/Premium1Fragment;-><init>()V

    aput-boolean v3, v1, v3

    goto :goto_0

    .line 76
    :pswitch_1
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/premium/Premium2Fragment;

    invoke-direct {v0}, Lcom/benoitletondor/easybudgetapp/view/premium/Premium2Fragment;-><init>()V

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 78
    :pswitch_2
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/premium/Premium3Fragment;

    invoke-direct {v0}, Lcom/benoitletondor/easybudgetapp/view/premium/Premium3Fragment;-><init>()V

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

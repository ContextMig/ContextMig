.class Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$1;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7f513b5e59137a09L

    const-string v2, "com/benoitletondor/easybudgetapp/view/WelcomeActivity$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 125
    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$1;->$jacocoInit()[Z

    move-result-object v1

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment;

    invoke-direct {v0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding1Fragment;-><init>()V

    aput-boolean v3, v1, v3

    goto :goto_0

    .line 112
    :pswitch_1
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;

    invoke-direct {v0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;-><init>()V

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 114
    :pswitch_2
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;

    invoke-direct {v0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;-><init>()V

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 116
    :pswitch_3
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment;

    invoke-direct {v0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding4Fragment;-><init>()V

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

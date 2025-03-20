.class Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xf7b31ec737a9b0bL    # -1.033603739303268E234

    const-string v2, "com/benoitletondor/easybudgetapp/view/WelcomeActivity$2"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 129
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 149
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 134
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;->$jacocoInit()[Z

    move-result-object v1

    .line 139
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentStatePagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 140
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->getStatusBarColor()I

    move-result v0

    invoke-static {v2, v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->setStatusBarColor(Landroid/app/Activity;I)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 142
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-static {v0, p1}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->access$100(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;I)V

    .line 143
    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    return-void
.end method

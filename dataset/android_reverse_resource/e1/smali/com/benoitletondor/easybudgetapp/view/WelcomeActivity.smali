.class public Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;
.super Lcom/benoitletondor/easybudgetapp/view/DBActivity;
.source "WelcomeActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ANIMATE_TRANSITION_KEY:Ljava/lang/String; = "animate"

.field public static final CENTER_X_KEY:Ljava/lang/String; = "centerX"

.field public static final CENTER_Y_KEY:Ljava/lang/String; = "centerY"

.field public static final PAGER_DONE_INTENT:Ljava/lang/String; = "welcome.pager.done"

.field public static final PAGER_NEXT_INTENT:Ljava/lang/String; = "welcome.pager.next"

.field public static final PAGER_PREVIOUS_INTENT:Ljava/lang/String; = "welcome.pager.previous"

.field public static final STEP_COMPLETED:I = 0x7fffffff


# instance fields
.field private pager:Landroid/support/v4/view/ViewPager;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3ca4a08036661dd1L    # 1.4312826179409725E-16

    const-string v2, "com/benoitletondor/easybudgetapp/view/WelcomeActivity"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)Landroid/support/v4/view/ViewPager;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/16 v2, 0x1e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->setStep(I)V

    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getStep()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 255
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "onboarding_step"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x1c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private setStep(I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 265
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "onboarding_step"

    invoke-virtual {v1, v2, p1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putInt(Ljava/lang/String;I)V

    .line 266
    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDB()Lcom/benoitletondor/easybudgetapp/model/db/DB;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    const/16 v2, 0x1b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    .line 227
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 228
    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->setResult(I)V

    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    .line 232
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->finish()V

    .line 233
    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 93
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->getStep()I

    move-result v0

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_0

    aput-boolean v4, v1, v4

    .line 98
    :goto_0
    invoke-super {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 99
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->setContentView(I)V

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 101
    const v0, 0x7f0f00a1

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 102
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$1;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 128
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 151
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 154
    const v0, 0x7f0f00a2

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    .line 157
    const-string v2, "welcome.pager.next"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    .line 158
    const-string v2, "welcome.pager.previous"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    .line 159
    const-string v2, "welcome.pager.done"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    .line 161
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;)V

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    .line 202
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/16 v0, 0x10

    aput-boolean v4, v1, v0

    .line 204
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->getStep()I

    move-result v2

    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    .line 207
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    const/16 v0, 0x12

    aput-boolean v4, v1, v0

    .line 210
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentStatePagerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;

    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    .line 211
    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->getStatusBarColor()I

    move-result v0

    invoke-static {p0, v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 212
    const/16 v0, 0x14

    aput-boolean v4, v1, v0

    return-void

    .line 93
    :cond_0
    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 95
    invoke-direct {p0, v5}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->setStep(I)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 217
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    .line 219
    invoke-super {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onDestroy()V

    .line 220
    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    return-void
.end method

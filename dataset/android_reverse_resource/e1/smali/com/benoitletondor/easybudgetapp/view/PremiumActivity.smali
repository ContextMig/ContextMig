.class public Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PremiumActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3bb196d58d9df4e7L    # -1.1219606345994188E21

    const-string v2, "com/benoitletondor/easybudgetapp/view/PremiumActivity"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    aput-boolean v2, v1, v0

    .line 174
    :goto_0
    const/16 v0, 0x10

    aput-boolean v2, v1, v0

    return-void

    .line 170
    :cond_0
    const/16 v0, 0xe

    aput-boolean v2, v1, v0

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xf

    aput-boolean v2, v1, v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 159
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 160
    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 164
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v4, v1, v4

    .line 60
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->setResult(I)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 65
    const v0, 0x7f0f009b

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 66
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$1;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 90
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 93
    const v0, 0x7f0f009c

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 95
    const v0, 0x7f0f009d

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$2;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 104
    const v0, 0x7f0f009e

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    return-void
.end method

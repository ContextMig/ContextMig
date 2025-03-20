.class public abstract Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;
.super Landroid/support/v4/app/Fragment;
.source "OnboardingFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x49e5d7d089102e95L    # -4.4743320130726496E-48

    const-string v2, "com/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v2, "welcome.pager.done"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    .line 84
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 85
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected getDB()Lcom/benoitletondor/easybudgetapp/model/db/DB;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 47
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    if-eqz v1, :cond_0

    aput-boolean v4, v2, v4

    .line 49
    check-cast v0, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;->getDB()Lcom/benoitletondor/easybudgetapp/model/db/DB;

    move-result-object v1

    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    .line 52
    :goto_0
    return-object v1

    .restart local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public abstract getStatusBarColor()I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end method

.method protected next()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v2, "welcome.pager.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 61
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 62
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void
.end method

.method protected next(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "welcome.pager.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v5, v0, v2

    .line 72
    const-string v2, "animate"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x7

    aput-boolean v5, v0, v2

    .line 73
    const-string v2, "centerX"

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x8

    aput-boolean v5, v0, v2

    .line 74
    const-string v2, "centerY"

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x9

    aput-boolean v5, v0, v2

    .line 75
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 76
    const/16 v1, 0xa

    aput-boolean v5, v0, v1

    return-void
.end method

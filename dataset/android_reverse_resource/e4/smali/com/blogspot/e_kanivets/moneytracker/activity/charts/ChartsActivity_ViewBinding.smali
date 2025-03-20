.class public Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ChartsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x60dca775e8a0b15fL    # 3.934097861837251E158

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;Landroid/view/View;)V

    .line 21
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;

    .line 27
    const v0, 0x7f0900d0

    const-string/jumbo v2, "field \'tabLayout\'"

    const-class v3, Landroid/support/design/widget/TabLayout;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 28
    const v0, 0x7f090109

    const-string/jumbo v2, "field \'viewPager\'"

    const-class v3, Landroid/support/v4/view/ViewPager;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 29
    aput-boolean v4, v1, v4

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 34
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;

    .line 35
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-boolean v4, v1, v3

    throw v2

    .line 36
    :cond_0
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;

    .line 38
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 39
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 40
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    return-void
.end method

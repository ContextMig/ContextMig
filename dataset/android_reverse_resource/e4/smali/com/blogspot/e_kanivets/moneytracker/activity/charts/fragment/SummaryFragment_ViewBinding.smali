.class public Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SummaryFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x604d9a1273deccf8L    # -5.360145148120174E-156

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment_ViewBinding"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;

    .line 21
    const v0, 0x7f09007e

    const-string/jumbo v2, "field \'listView\'"

    const-class v3, Landroid/widget/ListView;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->listView:Landroid/widget/ListView;

    .line 22
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 27
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;

    .line 28
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    aput-boolean v4, v1, v4

    throw v2

    .line 29
    :cond_0
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;

    .line 31
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->listView:Landroid/widget/ListView;

    .line 32
    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    return-void
.end method

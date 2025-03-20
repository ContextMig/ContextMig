.class public Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ShortSummaryPresenter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x20a9ae35463c313cL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder_ViewBinding"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;

    .line 22
    const v0, 0x7f0900fc

    const-string/jumbo v2, "field \'tvPeriod\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvPeriod:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f090103

    const-string/jumbo v2, "field \'tvTotalIncome\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotalIncome:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f090102

    const-string/jumbo v2, "field \'tvTotalExpense\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotalExpense:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f090101

    const-string/jumbo v2, "field \'tvTotal\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v0, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    .line 26
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
    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder_ViewBinding;->$jacocoInit()[Z

    move-result-object v1

    .line 31
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;

    .line 32
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    aput-boolean v4, v1, v4

    throw v2

    .line 33
    :cond_0
    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;

    .line 35
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvPeriod:Landroid/widget/TextView;

    .line 36
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotalIncome:Landroid/widget/TextView;

    .line 37
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotalExpense:Landroid/widget/TextView;

    .line 38
    iput-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    .line 39
    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    return-void
.end method

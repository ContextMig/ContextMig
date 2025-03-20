.class public Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;
.super Landroid/support/v4/app/Fragment;
.source "SummaryFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ARG_MONTH_REPORT:Ljava/lang/String; = "arg_month_report"


# instance fields
.field listView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007e
    .end annotation
.end field

.field private monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x683be40f0b87918eL    # -3.443391637197065E-194

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    if-nez p1, :cond_0

    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 71
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    if-nez v1, :cond_1

    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    .line 74
    :goto_1
    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;

    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-direct {v2, v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;-><init>(Landroid/content/Context;Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v1, 0x8

    aput-boolean v5, v0, v1

    goto :goto_1
.end method

.method public static newInstance(Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;)Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;
    .locals 5
    .param p0    # Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 44
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;-><init>()V

    .line 45
    .local v1, "fragment":Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "arg_month_report"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    aput-boolean v4, v2, v4

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 57
    :goto_0
    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "arg_month_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 62
    const v2, 0x7f0b0040

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->initViews(Landroid/view/View;)V

    .line 64
    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.class public Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;
.super Landroid/support/v4/app/Fragment;
.source "GraphFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ARG_MONTH_REPORT:Ljava/lang/String; = "arg_month_report"

.field private static final ARG_NO_DATA_TEXT:Ljava/lang/String; = "arg_no_data_text"


# instance fields
.field barChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090028
    .end annotation
.end field

.field private monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private noDataText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x24bb1d8801d38d83L    # -4.632497436381049E131

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 89
    if-nez p1, :cond_0

    const/4 v3, 0x7

    aput-boolean v6, v2, v3

    .line 109
    .local v0, "barChartConverter":Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;
    .local v1, "barData":Lcom/github/mikephil/charting/data/BarData;
    :goto_0
    return-void

    .line 90
    .end local v0    # "barChartConverter":Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;
    .end local v1    # "barData":Lcom/github/mikephil/charting/data/BarData;
    :cond_0
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 92
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    if-nez v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->barChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->noDataText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setNoDataText(Ljava/lang/String;)V

    const/16 v3, 0x8

    aput-boolean v6, v2, v3

    .line 109
    .restart local v0    # "barChartConverter":Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;
    .restart local v1    # "barData":Lcom/github/mikephil/charting/data/BarData;
    :goto_1
    const/16 v3, 0xa

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 95
    .end local v0    # "barChartConverter":Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;
    .end local v1    # "barData":Lcom/github/mikephil/charting/data/BarData;
    :cond_1
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;

    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-direct {v0, v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;-><init>(Landroid/content/Context;Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;)V

    .line 97
    .restart local v0    # "barChartConverter":Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;
    new-instance v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->getXAxisValueList()Ljava/util/List;

    move-result-object v3

    .line 98
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->getBarDataSetList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 99
    .restart local v1    # "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 101
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->barChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 102
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->barChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setDescription(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->barChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibleXRangeMinimum(F)V

    .line 104
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->barChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleYEnabled(Z)V

    .line 105
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->barChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v4, 0x42080000    # 34.0f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibleXRangeMaximum(F)V

    .line 106
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->barChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightPerDragEnabled(Z)V

    .line 107
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->barChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightPerTapEnabled(Z)V

    const/16 v3, 0x9

    aput-boolean v6, v2, v3

    goto :goto_1
.end method

.method public static newInstance(Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;)Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;
    .locals 5
    .param p0    # Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 49
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;-><init>()V

    .line 50
    .local v1, "fragment":Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "arg_month_report"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    aput-boolean v4, v2, v4

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 64
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;-><init>()V

    .line 65
    .local v1, "fragment":Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "arg_no_data_text"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 78
    :goto_0
    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "arg_month_report"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    .line 76
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "arg_no_data_text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->noDataText:Ljava/lang/String;

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 83
    const v2, 0x7f0b003f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->initViews(Landroid/view/View;)V

    .line 85
    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

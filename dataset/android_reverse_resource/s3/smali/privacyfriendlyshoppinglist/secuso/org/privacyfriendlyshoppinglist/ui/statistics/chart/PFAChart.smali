.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;
.super Ljava/lang/Object;
.source "PFAChart.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ANIMATION_DURATION:I = 0x7d0


# instance fields
.field private cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

.field private chart:Lcom/github/mikephil/charting/charts/BarChart;

.field private context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x606fb0fd5897f71bL    # 3.3992939605615365E156

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart"

    const/16 v3, 0x3f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    aput-boolean v3, v0, v4

    .line 45
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->context:Landroid/content/Context;

    aput-boolean v3, v0, v3

    .line 47
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getChart()Lcom/github/mikephil/charting/charts/BarChart;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 48
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBarShadow(Z)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 49
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 50
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 51
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setMaxVisibleValueCount(I)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 52
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 53
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 54
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 55
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->setupYAxis()V

    .line 56
    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    return-void
.end method

.method private setXlabels(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getValuesSpinner()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/16 v2, 0x29

    aput-boolean v7, v0, v2

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/16 v3, 0x2a

    aput-boolean v7, v0, v3

    .line 112
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/16 v3, 0x2b

    aput-boolean v7, v0, v3

    .line 114
    new-instance v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;

    invoke-direct {v3, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;-><init>([Ljava/lang/String;)V

    const/16 v2, 0x2c

    aput-boolean v7, v0, v2

    .line 115
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v4, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;

    iget-object v5, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->context:Landroid/content/Context;

    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getNumberScale()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    move-result-object v6

    invoke-direct {v4, v5, v3, v1, v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;-><init>(Landroid/content/Context;Lcom/github/mikephil/charting/formatter/AxisValueFormatter;ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;)V

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setMarkerView(Lcom/github/mikephil/charting/components/MarkerView;)V

    const/16 v1, 0x2d

    aput-boolean v7, v0, v1

    .line 117
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    const/16 v2, 0x2e

    aput-boolean v7, v0, v2

    .line 118
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/16 v2, 0x2f

    aput-boolean v7, v0, v2

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    const/16 v2, 0x30

    aput-boolean v7, v0, v2

    .line 120
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    const/16 v2, 0x31

    aput-boolean v7, v0, v2

    .line 121
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    const/16 v2, 0x32

    aput-boolean v7, v0, v2

    .line 122
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/AxisValueFormatter;)V

    .line 123
    const/16 v1, 0x33

    aput-boolean v7, v0, v1

    return-void
.end method

.method private setupYAxis()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getValuesSpinner()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/16 v2, 0x34

    aput-boolean v6, v0, v2

    .line 128
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    const/16 v3, 0x35

    aput-boolean v6, v0, v3

    .line 129
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v7}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    const/16 v3, 0x36

    aput-boolean v6, v0, v3

    .line 130
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V

    const/16 v3, 0x37

    aput-boolean v6, v0, v3

    .line 131
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setSpaceTop(F)V

    const/16 v3, 0x38

    aput-boolean v6, v0, v3

    .line 132
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinValue(F)V

    const/16 v3, 0x39

    aput-boolean v6, v0, v3

    .line 133
    new-instance v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAYAxisLabels;

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->context:Landroid/content/Context;

    iget-object v5, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getNumberScale()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAYAxisLabels;-><init>(Landroid/content/Context;ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;)V

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/AxisValueFormatter;)V

    .line 135
    sget v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->QUANTITY:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0x3a

    aput-boolean v6, v0, v1

    .line 140
    :goto_0
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    const/16 v2, 0x3d

    aput-boolean v6, v0, v2

    .line 141
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 142
    const/16 v1, 0x3e

    aput-boolean v6, v0, v1

    return-void

    .line 135
    :cond_0
    const/16 v1, 0x3b

    aput-boolean v6, v0, v1

    .line 137
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setGranularity(F)V

    const/16 v1, 0x3c

    aput-boolean v6, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public varargs updateChart(Ljava/util/List;Ljava/util/List;[I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->$jacocoInit()[Z

    move-result-object v3

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v2, 0xb

    aput-boolean v10, v3, v2

    .line 61
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->setupYAxis()V

    const/16 v2, 0xc

    aput-boolean v10, v3, v2

    .line 62
    invoke-direct {p0, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->setXlabels(Ljava/util/List;)V

    .line 64
    const/4 v5, 0x0

    const/16 v2, 0xd

    aput-boolean v10, v3, v2

    .line 65
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinValue(F)V

    const/16 v2, 0xe

    aput-boolean v10, v3, v2

    .line 66
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    int-to-float v6, v4

    add-float/2addr v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaxValue(F)V

    const/16 v2, 0xf

    aput-boolean v10, v3, v2

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v1, "yValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/BarEntry;>;"
    float-to-int v0, v5

    const/16 v2, 0x10

    aput-boolean v10, v3, v2

    :goto_0
    int-to-float v2, v0

    int-to-float v6, v4

    add-float/2addr v6, v5

    cmpg-float v2, v2, v6

    if-gez v2, :cond_0

    const/16 v2, 0x11

    aput-boolean v10, v3, v2

    .line 72
    new-instance v6, Ljava/math/BigDecimal;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v2, 0x12

    aput-boolean v10, v3, v2

    .line 73
    new-instance v2, Lcom/github/mikephil/charting/data/BarEntry;

    add-int/lit8 v7, v0, 0x1

    int-to-float v7, v7

    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    invoke-direct {v2, v7, v6}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v2, 0x13

    aput-boolean v10, v3, v2

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getValuesSpinner()Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    const/16 v2, 0x14

    aput-boolean v10, v3, v2

    .line 79
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0x15

    aput-boolean v10, v3, v2

    .line 92
    :goto_1
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v5, ""

    invoke-direct {v2, v1, v5}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v5, 0x1e

    aput-boolean v10, v3, v5

    .line 93
    invoke-virtual {v2, p3}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    const/16 v5, 0x1f

    aput-boolean v10, v3, v5

    .line 95
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x20

    aput-boolean v10, v3, v6

    .line 96
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x21

    aput-boolean v10, v3, v2

    .line 98
    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v2, v5}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    const/16 v5, 0x22

    aput-boolean v10, v3, v5

    .line 99
    new-instance v5, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAValueFormatter;

    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->context:Landroid/content/Context;

    iget-object v7, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v7}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getNumberScale()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAValueFormatter;-><init>(Landroid/content/Context;ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;)V

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/16 v4, 0x23

    aput-boolean v10, v3, v4

    .line 100
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarData;->setValueTextSize(F)V

    const/16 v4, 0x24

    aput-boolean v10, v3, v4

    .line 101
    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    const/16 v4, 0x25

    aput-boolean v10, v3, v4

    .line 102
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    const/16 v2, 0x26

    aput-boolean v10, v3, v2

    .line 104
    :goto_2
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v4, 0x7d0

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    const/16 v2, 0x27

    aput-boolean v10, v3, v2

    .line 105
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->fitScreen()V

    .line 106
    const/16 v2, 0x28

    aput-boolean v10, v3, v2

    return-void

    .line 79
    :cond_1
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v2

    if-gtz v2, :cond_2

    const/16 v2, 0x16

    aput-boolean v10, v3, v2

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0x17

    aput-boolean v10, v3, v2

    .line 81
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const/16 v5, 0x18

    aput-boolean v10, v3, v5

    .line 82
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setValues(Ljava/util/List;)V

    const/16 v2, 0x19

    aput-boolean v10, v3, v2

    .line 84
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    new-instance v5, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAValueFormatter;

    iget-object v6, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->context:Landroid/content/Context;

    iget-object v7, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v7}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getNumberScale()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAValueFormatter;-><init>(Landroid/content/Context;ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;)V

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/16 v2, 0x1a

    aput-boolean v10, v3, v2

    .line 86
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->notifyDataChanged()V

    const/16 v2, 0x1b

    aput-boolean v10, v3, v2

    .line 87
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->notifyDataSetChanged()V

    const/16 v2, 0x1c

    aput-boolean v10, v3, v2

    .line 88
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->chart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    const/16 v2, 0x1d

    aput-boolean v10, v3, v2

    goto/16 :goto_2
.end method

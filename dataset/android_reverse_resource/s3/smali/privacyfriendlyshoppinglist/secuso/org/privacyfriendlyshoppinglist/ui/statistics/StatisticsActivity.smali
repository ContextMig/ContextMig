.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;
.source "StatisticsActivity.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ANIMATION_DURATION:J = 0x1f4L

.field private static final FADE_IN:F = 1.0f

.field private static final FADE_OUT:F


# instance fields
.field private cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

.field private chart:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;

.field private query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

.field private statisticsService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4ee9d0adebf59eeaL    # -3.1390444888328906E-72

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity"

    const/16 v3, 0x3f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->lambda$update$0([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)V

    const/16 v1, 0x3b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;I)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->lambda$update$1([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;I)V

    const/16 v1, 0x3c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$2([Ljava/lang/String;[Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->lambda$setupQuery$2([Ljava/lang/String;[Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;)V

    const/16 v1, 0x3d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$3(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;[Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;[Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->lambda$setupQuery$3([Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;[Ljava/lang/String;)V

    const/16 v1, 0x3e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static synthetic lambda$setupQuery$2([Ljava/lang/String;[Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 115
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->getMaxDate()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    const/16 v1, 0x2c

    aput-boolean v3, v0, v1

    .line 116
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->getMinDate()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 117
    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    return-void
.end method

.method private synthetic lambda$setupQuery$3([Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    aget-object v2, p1, v6

    invoke-virtual {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->setDateTo(Ljava/lang/String;)V

    const/16 v1, 0x25

    aput-boolean v5, v0, v1

    .line 121
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getRangeToTextView()Landroid/widget/TextView;

    move-result-object v1

    aget-object v2, p1, v6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x26

    aput-boolean v5, v0, v1

    .line 122
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getRangeToTextView()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DataToOnClickListener;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getRangeToTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v2, p2, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DataToOnClickListener;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x27

    aput-boolean v5, v0, v1

    .line 124
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    aget-object v2, p3, v6

    invoke-virtual {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->setDateFrom(Ljava/lang/String;)V

    const/16 v1, 0x28

    aput-boolean v5, v0, v1

    .line 125
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getRangeFromTextView()Landroid/widget/TextView;

    move-result-object v1

    aget-object v2, p3, v6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x29

    aput-boolean v5, v0, v1

    .line 126
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getRangeFromTextView()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DataFromOnClickListener;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getRangeFromTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v2, p2, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/DataFromOnClickListener;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x2a

    aput-boolean v5, v0, v1

    .line 128
    invoke-direct {p0, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->setupSpinner(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;)V

    .line 129
    const/16 v1, 0x2b

    aput-boolean v5, v0, v1

    return-void
.end method

.method private static synthetic lambda$update$0([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    const/4 v1, 0x0

    aput-object p1, p0, v1

    const/16 v1, 0x3a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$update$1([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 72
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    aget-object v3, p1, v7

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->getNumberScale()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    move-result-object v3

    invoke-virtual {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->setNumberScale(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;)V

    const/16 v2, 0x2e

    aput-boolean v6, v1, v2

    .line 73
    aget-object v2, p1, v7

    invoke-direct {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->updateChartVisibility(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)V

    const/16 v2, 0x2f

    aput-boolean v6, v1, v2

    .line 75
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->chart:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;

    aget-object v3, p1, v7

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->getData()Ljava/util/List;

    move-result-object v3

    aget-object v4, p1, v7

    invoke-virtual {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->getLabels()Ljava/util/List;

    move-result-object v4

    new-array v5, v6, [I

    aput p2, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;->updateChart(Ljava/util/List;Ljava/util/List;[I)V

    const/16 v2, 0x30

    aput-boolean v6, v1, v2

    .line 76
    aget-object v2, p1, v7

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->getTotal()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getNumberFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->getDoubleAsString(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x31

    aput-boolean v6, v1, v2

    .line 77
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getUnitsTextView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x32

    aput-boolean v6, v1, v2

    .line 79
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getValuesSpinner()Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    sget v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->QUANTITY:I

    if-eq v2, v3, :cond_0

    const/16 v2, 0x33

    aput-boolean v6, v1, v2

    .line 87
    .local v0, "totalAmount":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getTotalTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x38

    aput-boolean v6, v1, v2

    .line 88
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    aget-object v3, p1, v7

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/16 v2, 0x39

    aput-boolean v6, v1, v2

    return-void

    .line 79
    .end local v0    # "totalAmount":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x34

    aput-boolean v6, v1, v2

    .line 82
    const-string v2, ".00"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ",00"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "totalAmount":Ljava/lang/String;
    const/16 v2, 0x35

    aput-boolean v6, v1, v2

    .line 83
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x36

    aput-boolean v6, v1, v3

    .line 84
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getUnitsTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x37

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method private setupQuery(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 109
    new-array v0, v6, [Ljava/lang/String;

    .line 110
    .local v0, "maxDate":[Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const/16 v3, 0x15

    aput-boolean v6, v1, v3

    .line 112
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->statisticsService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;

    invoke-interface {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;->getRange()Lrx/Observable;

    move-result-object v3

    invoke-static {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity$$Lambda$3;->lambdaFactory$([Ljava/lang/String;[Ljava/lang/String;)Lrx/functions/Action1;

    move-result-object v4

    const/16 v5, 0x16

    aput-boolean v6, v1, v5

    .line 113
    invoke-virtual {v3, v4}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v3

    invoke-static {p0, v0, p1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity$$Lambda$4;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;[Ljava/lang/String;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;[Ljava/lang/String;)Lrx/functions/Action0;

    move-result-object v2

    const/16 v4, 0x17

    aput-boolean v6, v1, v4

    .line 118
    invoke-virtual {v3, v2}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x18

    aput-boolean v6, v1, v3

    .line 132
    invoke-virtual {v2}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 133
    const/16 v2, 0x19

    aput-boolean v6, v1, v2

    return-void
.end method

.method private setupSpinner(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;)V
    .locals 5

    .prologue
    const v3, 0x7f040046

    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-boolean v4, v0, v2

    .line 138
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/16 v1, 0x1b

    aput-boolean v4, v0, v1

    .line 139
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getGroupBySpinner()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v1, 0x1c

    aput-boolean v4, v0, v1

    .line 141
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-boolean v4, v0, v2

    .line 142
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/16 v1, 0x1e

    aput-boolean v4, v0, v1

    .line 143
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getValuesSpinner()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    .line 145
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getGroupBySpinner()Landroid/widget/Spinner;

    move-result-object v1

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/GroupBySpinnerOnItemSelectListener;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    invoke-direct {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/GroupBySpinnerOnItemSelectListener;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v1, 0x20

    aput-boolean v4, v0, v1

    .line 146
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getGroupBySpinner()Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->setGroupBy(I)V

    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    .line 148
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getValuesSpinner()Landroid/widget/Spinner;

    move-result-object v1

    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/ValuesSpinnerOnItemSelectListener;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    invoke-direct {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/listeners/ValuesSpinnerOnItemSelectListener;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v1, 0x22

    aput-boolean v4, v0, v1

    .line 149
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getValuesSpinner()Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->setValuesY(I)V

    const/16 v1, 0x23

    aput-boolean v4, v0, v1

    .line 151
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->notifyObservers()V

    .line 152
    const/16 v1, 0x24

    aput-boolean v4, v0, v1

    return-void
.end method

.method private updateChartVisibility(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->getLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    .line 97
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getChart()Lcom/github/mikephil/charting/charts/BarChart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/16 v1, 0x12

    aput-boolean v3, v0, v1

    .line 103
    :goto_0
    const/16 v1, 0x14

    aput-boolean v3, v0, v1

    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-virtual {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;->getChart()Lcom/github/mikephil/charting/charts/BarChart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/16 v1, 0x13

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getNavigationDrawerID()I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    const v1, 0x7f100119

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 40
    invoke-super {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v3, v1, v3

    .line 42
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 44
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 45
    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;

    invoke-virtual {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->statisticsService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 47
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    invoke-direct {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;-><init>()V

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 48
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    invoke-virtual {v0, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->addObserver(Ljava/util/Observer;)V

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 49
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-direct {v0, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 50
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-direct {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;)V

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->chart:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAChart;

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    .line 52
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->cache:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;

    invoke-direct {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->setupQuery(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsCache;)V

    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    .line 54
    invoke-virtual {p0, v4, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->overridePendingTransition(II)V

    .line 55
    const/16 v0, 0xa

    aput-boolean v3, v1, v0

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 67
    .local v0, "middleblue":I
    new-array v2, v6, [Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    const/16 v3, 0xc

    aput-boolean v6, v1, v3

    .line 68
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->statisticsService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;->query:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;

    invoke-interface {v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;->getChartData(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;)Lrx/Observable;

    move-result-object v3

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity$$Lambda$1;->lambdaFactory$([Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)Lrx/functions/Action1;

    move-result-object v4

    const/16 v5, 0xd

    aput-boolean v6, v1, v5

    .line 69
    invoke-virtual {v3, v4}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v3

    invoke-static {p0, v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity$$Lambda$2;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/StatisticsActivity;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;I)Lrx/functions/Action0;

    move-result-object v2

    const/16 v4, 0xe

    aput-boolean v6, v1, v4

    .line 70
    invoke-virtual {v3, v2}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0xf

    aput-boolean v6, v1, v3

    .line 90
    invoke-virtual {v2}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 91
    const/16 v2, 0x10

    aput-boolean v6, v1, v2

    return-void
.end method

.class public Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;
.super Ljava/lang/Object;
.source "BarChartConverter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final expensesTitle:Ljava/lang/String;

.field private final green:I

.field private final incomesTitle:Ljava/lang/String;

.field private final red:I

.field private final report:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2868fea57a264b54L    # -8.852094544709762E113

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->report:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->green:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->red:I

    .line 38
    const v1, 0x7f0e0051

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->incomesTitle:Ljava/lang/String;

    .line 39
    const v1, 0x7f0e0046

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->expensesTitle:Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getBarDataSetList()Ljava/util/List;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->$jacocoInit()[Z

    move-result-object v8

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v4, "incomeList":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v6, 0x4

    aput-boolean v10, v8, v6

    move v2, v7

    :goto_0
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->report:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-interface {v6}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getIncomeList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 58
    new-instance v9, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->report:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-interface {v6}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getIncomeList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F

    move-result v6

    invoke-direct {v9, v6, v2}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FI)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    const/4 v6, 0x5

    aput-boolean v10, v8, v6

    goto :goto_0

    .line 61
    .end local v2    # "i":I
    :cond_0
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->incomesTitle:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 62
    .local v3, "incomeDataSet":Lcom/github/mikephil/charting/data/BarDataSet;
    iget v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->green:I

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/BarDataSet;->setColor(I)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, "expenseList":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v6, 0x6

    aput-boolean v10, v8, v6

    :goto_1
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->report:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-interface {v6}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getExpenseList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v7, v6, :cond_1

    .line 66
    new-instance v9, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->report:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-interface {v6}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getExpenseList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F

    move-result v6

    invoke-direct {v9, v6, v7}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FI)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v2, v7, 0x1

    .restart local v2    # "i":I
    const/4 v6, 0x7

    aput-boolean v10, v8, v6

    move v7, v2

    goto :goto_1

    .line 69
    .end local v2    # "i":I
    :cond_1
    new-instance v0, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->expensesTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v6}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 70
    .local v0, "dataSet2":Lcom/github/mikephil/charting/data/BarDataSet;
    iget v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->red:I

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/data/BarDataSet;->setColor(I)V

    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const/16 v6, 0x8

    aput-boolean v10, v8, v6

    return-object v5
.end method

.method public getXAxisValueList()Ljava/util/List;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->$jacocoInit()[Z

    move-result-object v5

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "MMM yy"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/BarChartConverter;->report:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-interface {v4}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getMonthList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    aput-boolean v7, v5, v7

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 48
    .local v2, "timestamp":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v4, 0x2

    aput-boolean v7, v5, v4

    goto :goto_0

    .line 51
    .end local v2    # "timestamp":J
    :cond_0
    const/4 v4, 0x3

    aput-boolean v7, v5, v4

    return-object v1
.end method

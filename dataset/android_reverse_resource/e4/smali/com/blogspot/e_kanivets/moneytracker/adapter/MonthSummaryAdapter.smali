.class public Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthSummaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final dateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2bbd66bfe2d77d83L    # 5.3768623992478384E-98

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;)V

    .line 48
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    .line 51
    invoke-interface {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getMonthList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getIncomeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 53
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Broken report data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    throw v1

    .line 52
    :cond_0
    invoke-interface {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getIncomeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getExpenseList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    aput-boolean v3, v0, v3

    goto :goto_0

    .line 56
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "MMM, yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 57
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getMonthList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    int-to-long v2, p1

    const/4 v1, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->$jacocoInit()[Z

    move-result-object v12

    .line 78
    if-nez p2, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 81
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    const v11, 0x7f0b0058

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v11, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, "convertView":Landroid/view/View;
    new-instance v10, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;

    invoke-direct {v10, v2}, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    .local v10, "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;
    invoke-virtual {v2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    const/4 v11, 0x7

    const/4 v13, 0x1

    aput-boolean v13, v12, v11

    .line 88
    .end local v2    # "convertView":Landroid/view/View;
    .end local v4    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v10    # "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-interface {v11}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getMonthList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int v11, v11, p1

    add-int/lit8 v3, v11, -0x1

    .line 90
    .local v3, "index":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-interface {v13}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getMonthList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "month":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-interface {v11}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getIncomeList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 92
    .local v8, "totalIncome":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->monthReport:Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    invoke-interface {v11}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;->getExpenseList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 94
    .local v6, "totalExpense":D
    iget-object v11, v10, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v11, v10, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;->tvTotalIncome:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-virtual {v13, v8, v9}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatSignedAmount(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v11, v10, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;->tvTotalExpense:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    neg-double v14, v6

    invoke-virtual {v13, v14, v15}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatSignedAmount(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/16 v11, 0x9

    const/4 v13, 0x1

    aput-boolean v13, v12, v11

    return-object v2

    .line 85
    .end local v3    # "index":I
    .end local v5    # "month":Ljava/lang/String;
    .end local v6    # "totalExpense":D
    .end local v8    # "totalIncome":D
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter$ViewHolder;

    const/16 v13, 0x8

    const/4 v14, 0x1

    aput-boolean v14, v12, v13

    move-object v10, v11

    move-object/from16 v2, p2

    goto :goto_0
.end method

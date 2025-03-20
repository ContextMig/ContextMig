.class public Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "ReportActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final KEY_PERIOD:Ljava/lang/String; = "key_period"

.field private static final TAG:Ljava/lang/String; = "ReportActivity"


# instance fields
.field currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field expandableListView:Landroid/widget/ExpandableListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090060
    .end annotation
.end field

.field private period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

.field rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation
.end field

.field private shortSummaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;

.field spinnerCurrency:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3969b8fd62266d4bL    # -1.1295975515442066E32

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/ReportActivity"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->update(Ljava/lang/String;)V

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private initSpinnerCurrency()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->readAll()Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, "currencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->spinnerCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x7f0b005d

    invoke-direct {v5, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 100
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->spinnerCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v5, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;

    invoke-direct {v5, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 112
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->readDefaultCurrency()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "currency":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v4, 0x8

    aput-boolean v7, v3, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    const/16 v4, 0x9

    aput-boolean v7, v3, v4

    .line 120
    :goto_1
    const/16 v4, 0xc

    aput-boolean v7, v3, v4

    return-void

    .line 115
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->spinnerCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 117
    const/16 v4, 0xa

    aput-boolean v7, v3, v4

    goto :goto_1

    .line 114
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    const/16 v4, 0xb

    aput-boolean v7, v3, v4

    goto :goto_0
.end method

.method private update(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 81
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-direct {v3, v5}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;)V

    .line 82
    .local v3, "reportMaker":Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->recordList:Ljava/util/List;

    invoke-virtual {v3, p1, v5, v6}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->getRecordReport(Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/Period;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;

    move-result-object v2

    .line 84
    .local v2, "report":Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;
    const/4 v0, 0x0

    .line 86
    .local v0, "adapter":Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;
    if-nez v2, :cond_0

    const/4 v5, 0x5

    aput-boolean v7, v4, v5

    .line 91
    :goto_0
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 92
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->shortSummaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->recordList:Ljava/util/List;

    invoke-virtual {v3, p1, v6}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->currencyNeeded(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, p1, v6}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->update(Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;Ljava/lang/String;Ljava/util/List;)V

    .line 93
    const/4 v5, 0x7

    aput-boolean v7, v4, v5

    return-void

    .line 87
    :cond_0
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;

    invoke-direct {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;-><init>(Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;)V

    .line 88
    .local v1, "recordReportConverter":Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;

    .end local v0    # "adapter":Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;
    invoke-direct {v0, p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;-><init>(Landroid/content/Context;Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;)V

    .restart local v0    # "adapter":Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;
    const/4 v5, 0x6

    aput-boolean v7, v4, v5

    goto :goto_0
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    const v1, 0x7f0b0026

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 59
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    .line 60
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;)V

    .line 62
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key_period"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    .line 63
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    .line 67
    :goto_0
    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    invoke-virtual {v0, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->getRecordsForPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->recordList:Ljava/util/List;

    .line 67
    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0
.end method

.method protected initViews()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 74
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->initSpinnerCurrency()V

    .line 76
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;

    invoke-direct {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->shortSummaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;

    .line 77
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->expandableListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;->shortSummaryPresenter:Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->create(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 78
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

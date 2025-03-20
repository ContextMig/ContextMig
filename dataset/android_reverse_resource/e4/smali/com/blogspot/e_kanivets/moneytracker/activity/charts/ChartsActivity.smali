.class public Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "ChartsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field exchangeRateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field tabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d0
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090109
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2bbeaded57b9f4cdL    # -7.399314209634441E97

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setupViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 73
    new-instance v6, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;

    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->exchangeRateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-direct {v6, v8}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;)V

    .line 74
    .local v6, "reportMaker":Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    invoke-virtual {v8}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->readDefaultCurrency()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "currency":Ljava/lang/String;
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    invoke-virtual {v8}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->readAll()Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;"
    invoke-virtual {v6, v1, v5}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->currencyNeeded(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "currencyNeeded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 79
    .local v4, "monthReport":Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x7

    aput-boolean v10, v7, v8

    .line 82
    :goto_0
    if-nez v4, :cond_1

    .line 83
    invoke-virtual {p0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->createRatesNeededList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->newInstance(Ljava/lang/String;)Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;

    move-result-object v3

    .local v3, "graphFragment":Landroid/support/v4/app/Fragment;
    const/16 v8, 0x9

    aput-boolean v10, v7, v8

    .line 88
    .end local v3    # "graphFragment":Landroid/support/v4/app/Fragment;
    :goto_1
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-direct {v0, p0, v8}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 89
    .local v0, "adapter":Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;
    invoke-static {v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;->newInstance(Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;)Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/SummaryFragment;

    move-result-object v8

    const-string/jumbo v9, "Summary"

    invoke-virtual {v0, v8, v9}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v8, "Graph"

    invoke-virtual {v0, v3, v8}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 92
    const/16 v8, 0xb

    aput-boolean v10, v7, v8

    return-void

    .line 79
    .end local v0    # "adapter":Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity$ViewPagerAdapter;
    :cond_0
    invoke-virtual {v6, v1, v5}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->getMonthReport(Ljava/lang/String;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;

    move-result-object v4

    const/16 v8, 0x8

    aput-boolean v10, v7, v8

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;->newInstance(Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;)Lcom/blogspot/e_kanivets/moneytracker/activity/charts/fragment/GraphFragment;

    move-result-object v3

    const/16 v8, 0xa

    aput-boolean v10, v7, v8

    goto :goto_1
.end method


# virtual methods
.method protected createRatesNeededList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const v3, 0x7f0e0045

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x4

    aput-boolean v6, v2, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0e002b

    invoke-virtual {p0, v5}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/4 v4, 0x5

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 69
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-boolean v6, v2, v4

    return-object v3
.end method

.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    const v1, 0x7f0b0021

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 49
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    move-result v0

    .line 50
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;)V

    .line 51
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return v0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 58
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->setupViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 59
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 60
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

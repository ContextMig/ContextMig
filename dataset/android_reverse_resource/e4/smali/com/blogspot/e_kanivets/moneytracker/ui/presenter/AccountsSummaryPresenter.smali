.class public Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;
.super Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;
.source "AccountsSummaryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private green:I

.field rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private red:I

.field private final reportMaker:Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;

.field private view:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2fcc82910dcc67c9L    # -2.256784826372645E78

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->context:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->red:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->green:I

    .line 58
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;)V

    .line 59
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-direct {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->reportMaker:Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public create()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->$jacocoInit()[Z

    move-result-object v5

    .line 63
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0b005e

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->view:Landroid/view/View;

    .line 65
    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->view:Landroid/view/View;

    invoke-direct {v4, v6}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 66
    .local v4, "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->view:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    invoke-virtual {v6}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->readAll()Ljava/util/List;

    move-result-object v1

    .line 70
    .local v1, "currencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, v4, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->spinnerCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->context:Landroid/content/Context;

    const v9, 0x1090003

    invoke-direct {v7, v8, v9, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 73
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    invoke-virtual {v6}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->readDefaultCurrency()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "currency":Ljava/lang/String;
    const/4 v2, 0x0

    aput-boolean v10, v5, v10

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_0

    const/4 v6, 0x2

    aput-boolean v10, v5, v6

    .line 84
    :goto_1
    iget-object v6, v4, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->spinnerCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v7, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1;

    invoke-direct {v7, p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->view:Landroid/view/View;

    const/4 v7, 0x5

    aput-boolean v10, v5, v7

    return-object v6

    .line 76
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 78
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    iget-object v6, v4, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->spinnerCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 80
    const/4 v6, 0x3

    aput-boolean v10, v5, v6

    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    const/4 v6, 0x4

    aput-boolean v10, v5, v6

    goto :goto_0
.end method

.method public update()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->$jacocoInit()[Z

    move-result-object v4

    .line 100
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;

    .line 102
    .local v2, "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;
    iget-object v3, v2, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->spinnerCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    .local v0, "currency":Ljava/lang/String;
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->reportMaker:Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readAll()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->getAccountsReport(Ljava/lang/String;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/account/IAccountsReport;

    move-result-object v1

    .line 105
    .local v1, "report":Lcom/blogspot/e_kanivets/moneytracker/report/account/IAccountsReport;
    if-nez v1, :cond_0

    .line 106
    iget-object v3, v2, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    iget v5, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->red:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v3, v2, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->reportMaker:Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    .line 108
    invoke-virtual {v6}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readAll()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->currencyNeededAccounts(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 107
    invoke-virtual {p0, v0, v5}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->createRatesNeededList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, v2, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->tvCurrency:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x6

    aput-boolean v8, v4, v3

    .line 116
    :goto_0
    const/16 v3, 0xc

    aput-boolean v8, v4, v3

    return-void

    .line 111
    :cond_0
    iget-object v5, v2, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/report/account/IAccountsReport;->getTotal()D

    move-result-wide v6

    cmpl-double v3, v6, v10

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->green:I

    const/4 v6, 0x7

    aput-boolean v8, v4, v6

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v3, v2, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/report/account/IAccountsReport;->getTotal()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatSignedAmount(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v5, v2, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->tvCurrency:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/report/account/IAccountsReport;->getTotal()D

    move-result-wide v6

    cmpl-double v3, v6, v10

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->green:I

    const/16 v6, 0x9

    aput-boolean v8, v4, v6

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v3, v2, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter$ViewHolder;->tvCurrency:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/report/account/IAccountsReport;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0xb

    aput-boolean v8, v4, v3

    goto :goto_0

    .line 111
    :cond_1
    iget v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->red:I

    const/16 v6, 0x8

    aput-boolean v8, v4, v6

    goto :goto_1

    .line 113
    :cond_2
    iget v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;->red:I

    const/16 v6, 0xa

    aput-boolean v8, v4, v6

    goto :goto_2
.end method

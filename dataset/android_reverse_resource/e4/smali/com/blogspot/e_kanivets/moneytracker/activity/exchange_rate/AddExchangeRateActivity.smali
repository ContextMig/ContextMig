.class public Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;
.source "AddExchangeRateActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final KEY_EXCHANGE_RATE:Ljava/lang/String; = "key_exchange_rate"

.field private static final TAG:Ljava/lang/String; = "AddExchangeRateActivity"


# instance fields
.field contentView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090040
    .end annotation
.end field

.field currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field etBuy:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090055
    .end annotation
.end field

.field etSell:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005c
    .end annotation
.end field

.field exchangeRateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private exchangeRatePair:Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private exchangeRatePairValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;",
            ">;"
        }
    .end annotation
.end field

.field formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field spinnerFromCurrency:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c1
    .end annotation
.end field

.field spinnerToCurrency:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c4
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6886ab4eef31af96L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private addExchangeRate()Z
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->$jacocoInit()[Z

    move-result-object v9

    .line 139
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->exchangeRatePairValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;->validate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->spinnerFromCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, "fromCurrency":Ljava/lang/String;
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->spinnerToCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    .local v3, "toCurrency":Ljava/lang/String;
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->etBuy:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 143
    .local v4, "amountBuy":D
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->etSell:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 145
    .local v6, "amountSell":D
    iget-object v10, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->exchangeRateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    invoke-direct/range {v1 .. v7}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;-><init>(Ljava/lang/String;Ljava/lang/String;DD)V

    invoke-virtual {v10, v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->createExchangeRatePair(Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;)Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    aput-boolean v8, v9, v0

    move v0, v8

    :goto_0
    const/16 v1, 0x16

    aput-boolean v8, v9, v1

    .line 148
    :goto_1
    return v0

    .line 145
    :cond_0
    const/16 v1, 0x15

    aput-boolean v8, v9, v1

    goto :goto_0

    .line 148
    .end local v2    # "fromCurrency":Ljava/lang/String;
    .end local v3    # "toCurrency":Ljava/lang/String;
    .end local v4    # "amountBuy":D
    .end local v6    # "amountSell":D
    :cond_1
    const/16 v1, 0x17

    aput-boolean v8, v9, v1

    goto :goto_1
.end method

.method private tryAddExchangeRate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Done Exchange Rate"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 130
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->addExchangeRate()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    .line 135
    :goto_0
    const/16 v1, 0x13

    aput-boolean v3, v0, v1

    return-void

    .line 131
    :cond_0
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Done Exchange Rate"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logEvent(Ljava/lang/String;)Z

    .line 132
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->setResult(I)V

    .line 133
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->finish()V

    const/16 v1, 0x12

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    const v1, 0x7f0b001e

    aput-boolean v2, v0, v2

    return v1
.end method

.method protected initData()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 65
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initData()Z

    move-result v0

    .line 66
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;)V

    .line 68
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "key_exchange_rate"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->exchangeRatePair:Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    .line 70
    const/4 v1, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    return v0
.end method

.method protected initViews()V
    .locals 9

    .prologue
    const v6, 0x7f0b005d

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 75
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->initViews()V

    .line 77
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->contentView:Landroid/view/View;

    invoke-direct {v2, p0, v4}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->exchangeRatePairValidator:Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;

    .line 78
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->readAll()Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "currencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    aput-boolean v8, v3, v2

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->spinnerFromCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, p0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->spinnerToCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, p0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->exchangeRatePair:Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    if-nez v2, :cond_1

    const/4 v2, 0x5

    aput-boolean v8, v3, v2

    .line 108
    :goto_1
    const/16 v2, 0xd

    aput-boolean v8, v3, v2

    return-void

    .line 81
    :cond_0
    const v2, 0x7f0e005a

    invoke-virtual {p0, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->spinnerFromCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setEnabled(Z)V

    .line 83
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->spinnerToCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setEnabled(Z)V

    const/4 v2, 0x4

    aput-boolean v8, v3, v2

    goto :goto_0

    .line 96
    :cond_1
    const/4 v2, 0x6

    aput-boolean v8, v3, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->exchangeRatePair:Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getFromCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x7

    aput-boolean v8, v3, v2

    .line 100
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->exchangeRatePair:Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getToCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x9

    aput-boolean v8, v3, v2

    .line 96
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/16 v2, 0xb

    aput-boolean v8, v3, v2

    goto :goto_2

    .line 98
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->spinnerFromCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    const/16 v2, 0x8

    aput-boolean v8, v3, v2

    goto :goto_3

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->spinnerToCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    const/16 v2, 0xa

    aput-boolean v8, v3, v2

    goto :goto_4

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->etBuy:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->exchangeRatePair:Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getAmountBuy()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatPrecisionNone(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->etSell:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->exchangeRatePair:Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getAmountSell()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatPrecisionNone(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0xc

    aput-boolean v8, v3, v2

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 113
    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 124
    invoke-super {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x10

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 120
    :pswitch_0
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;->tryAddExchangeRate()V

    .line 121
    const/16 v1, 0xf

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x7f090013
        :pswitch_0
    .end packed-switch
.end method

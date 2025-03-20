.class public Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;
.super Ljava/lang/Object;
.source "ExchangeRatePairValidator.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
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

.field tilBuy:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900da
    .end annotation
.end field

.field tilSell:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e0
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6db2007dff9b23c3L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->context:Landroid/content/Context;

    .line 45
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 46
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->initTextWatchers()V

    .line 47
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private initTextWatchers()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->etBuy:Landroid/widget/EditText;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->tilBuy:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->etSell:Landroid/widget/EditText;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->tilSell:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public validate()Z
    .locals 12

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->$jacocoInit()[Z

    move-result-object v8

    .line 51
    const/4 v7, 0x1

    .line 53
    .local v7, "valid":Z
    const/4 v5, 0x0

    .line 54
    .local v5, "fromCurrency":Ljava/lang/String;
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->spinnerFromCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v9}, Landroid/support/v7/widget/AppCompatSpinner;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 55
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->spinnerFromCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v9}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "fromCurrency":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "fromCurrency":Ljava/lang/String;
    const/4 v9, 0x1

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 60
    :goto_0
    const/4 v6, 0x0

    .line 61
    .local v6, "toCurrency":Ljava/lang/String;
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->spinnerToCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v9}, Landroid/support/v7/widget/AppCompatSpinner;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 62
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->spinnerToCurrency:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v9}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "toCurrency":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "toCurrency":Ljava/lang/String;
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 67
    :goto_1
    if-nez v5, :cond_2

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 72
    :goto_2
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/16 v9, 0x9

    const/4 v10, 0x1

    :try_start_0
    aput-boolean v10, v8, v9

    .line 74
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->etBuy:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 77
    .local v0, "amountBuy":D
    const/16 v9, 0xa

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 79
    .end local v0    # "amountBuy":D
    :goto_3
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v9, v0, v10

    if-eqz v9, :cond_5

    const/16 v9, 0xc

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 85
    :goto_4
    const-wide v10, 0x427fffffffc00000L    # 2.199023254528E12

    cmpl-double v9, v0, v10

    if-gtz v9, :cond_6

    const/16 v9, 0xe

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 90
    :goto_5
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/16 v9, 0x10

    const/4 v10, 0x1

    :try_start_1
    aput-boolean v10, v8, v9

    .line 92
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->etSell:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 95
    .local v2, "amountSell":D
    const/16 v9, 0x11

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 97
    .end local v2    # "amountSell":D
    :goto_6
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v9, v2, v10

    if-eqz v9, :cond_7

    const/16 v9, 0x13

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 103
    :goto_7
    const-wide v10, 0x427fffffffc00000L    # 2.199023254528E12

    cmpl-double v9, v2, v10

    if-gtz v9, :cond_8

    const/16 v9, 0x15

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 108
    :goto_8
    const/16 v9, 0x17

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    return v7

    .line 57
    .end local v6    # "toCurrency":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_0

    .line 64
    .restart local v6    # "toCurrency":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_1

    .line 67
    :cond_2
    if-nez v6, :cond_3

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_2

    .line 68
    :cond_4
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->context:Landroid/content/Context;

    const v10, 0x7f0e0070

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 69
    const/4 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_2

    .line 75
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v9, 0xb

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_3

    .line 80
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->tilBuy:Landroid/support/design/widget/TextInputLayout;

    iget-object v10, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->context:Landroid/content/Context;

    const v11, 0x7f0e004b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .restart local v0    # "amountBuy":D
    const/4 v7, 0x0

    const/16 v9, 0xd

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_4

    .line 86
    .end local v0    # "amountBuy":D
    :cond_6
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->tilBuy:Landroid/support/design/widget/TextInputLayout;

    iget-object v10, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->context:Landroid/content/Context;

    const v11, 0x7f0e0088

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v7, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_5

    .line 93
    :catch_1
    move-exception v4

    .line 94
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v9, 0x12

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_6

    .line 98
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->tilSell:Landroid/support/design/widget/TextInputLayout;

    iget-object v10, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->context:Landroid/content/Context;

    const v11, 0x7f0e004b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 99
    const-wide/16 v2, 0x0

    .line 100
    .restart local v2    # "amountSell":D
    const/4 v7, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_7

    .line 104
    .end local v2    # "amountSell":D
    :cond_8
    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->tilSell:Landroid/support/design/widget/TextInputLayout;

    iget-object v10, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ExchangeRatePairValidator;->context:Landroid/content/Context;

    const v11, 0x7f0e0088

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 105
    const/4 v7, 0x0

    const/16 v9, 0x16

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_8
.end method

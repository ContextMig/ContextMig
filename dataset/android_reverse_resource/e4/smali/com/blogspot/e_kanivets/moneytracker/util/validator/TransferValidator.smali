.class public Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;
.super Ljava/lang/Object;
.source "TransferValidator.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;",
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

.field etFromAmount:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090057
    .end annotation
.end field

.field etToAmount:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005e
    .end annotation
.end field

.field spinnerFrom:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c0
    .end annotation
.end field

.field spinnerTo:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c3
    .end annotation
.end field

.field tilFromAmount:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900dc
    .end annotation
.end field

.field tilToAmount:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e2
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2e128724ce60b6b5L    # 9.313814442511932E-87

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->$jacocoData:[Z

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
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->context:Landroid/content/Context;

    .line 45
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 46
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->initTextWatchers()V

    .line 47
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private initTextWatchers()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->etFromAmount:Landroid/widget/EditText;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->tilFromAmount:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->etToAmount:Landroid/widget/EditText;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->tilToAmount:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public validate()Z
    .locals 10

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->$jacocoInit()[Z

    move-result-object v6

    .line 51
    const/4 v1, 0x1

    .line 53
    .local v1, "valid":Z
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->spinnerFrom:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 57
    :goto_0
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->spinnerTo:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 62
    :goto_1
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v7, 0x5

    const/4 v8, 0x1

    :try_start_0
    aput-boolean v8, v6, v7

    .line 64
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->etFromAmount:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 67
    .local v2, "fromAmount":D
    const/4 v7, 0x6

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 69
    .end local v2    # "fromAmount":D
    :goto_2
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v7, v2, v8

    if-eqz v7, :cond_2

    const/16 v7, 0x8

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 75
    :goto_3
    const-wide v8, 0x427fffffffc00000L    # 2.199023254528E12

    cmpl-double v7, v2, v8

    if-gtz v7, :cond_3

    const/16 v7, 0xa

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 80
    :goto_4
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/16 v7, 0xc

    const/4 v8, 0x1

    :try_start_1
    aput-boolean v8, v6, v7

    .line 82
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->etToAmount:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 85
    .local v4, "toAmount":D
    const/16 v7, 0xd

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 87
    .end local v4    # "toAmount":D
    :goto_5
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v7, v4, v8

    if-eqz v7, :cond_4

    const/16 v7, 0xf

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 93
    :goto_6
    const-wide v8, 0x427fffffffc00000L    # 2.199023254528E12

    cmpl-double v7, v4, v8

    if-gtz v7, :cond_5

    const/16 v7, 0x11

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 98
    :goto_7
    const/16 v7, 0x13

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    return v1

    .line 54
    :cond_0
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto/16 :goto_0

    .line 58
    :cond_1
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->context:Landroid/content/Context;

    const v8, 0x7f0e005b

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 59
    const/4 v1, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto/16 :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v7, 0x7

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto :goto_2

    .line 70
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->tilFromAmount:Landroid/support/design/widget/TextInputLayout;

    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->context:Landroid/content/Context;

    const v9, 0x7f0e004b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 71
    const-wide/16 v2, 0x0

    .line 72
    .restart local v2    # "fromAmount":D
    const/4 v1, 0x0

    const/16 v7, 0x9

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto/16 :goto_3

    .line 76
    .end local v2    # "fromAmount":D
    :cond_3
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->tilFromAmount:Landroid/support/design/widget/TextInputLayout;

    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->context:Landroid/content/Context;

    const v9, 0x7f0e0089

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v1, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto/16 :goto_4

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 v7, 0xe

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto :goto_5

    .line 88
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->tilToAmount:Landroid/support/design/widget/TextInputLayout;

    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->context:Landroid/content/Context;

    const v9, 0x7f0e004b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 89
    const-wide/16 v4, 0x0

    .line 90
    .restart local v4    # "toAmount":D
    const/4 v1, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto/16 :goto_6

    .line 94
    .end local v4    # "toAmount":D
    :cond_5
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->tilToAmount:Landroid/support/design/widget/TextInputLayout;

    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/TransferValidator;->context:Landroid/content/Context;

    const v9, 0x7f0e0089

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v1, 0x0

    const/16 v7, 0x12

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto/16 :goto_7
.end method

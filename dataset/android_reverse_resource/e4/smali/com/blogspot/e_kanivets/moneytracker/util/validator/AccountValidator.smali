.class public Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;
.super Ljava/lang/Object;
.source "AccountValidator.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
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

.field etInitSum:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005a
    .end annotation
.end field

.field etTitle:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005d
    .end annotation
.end field

.field spinner:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bd
    .end annotation
.end field

.field tilInitSum:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900de
    .end annotation
.end field

.field tilTitle:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e1
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6bfce9cd6dd995a9L    # -2.834811077709213E-212

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->$jacocoData:[Z

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
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->context:Landroid/content/Context;

    .line 41
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 42
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->initTextWatchers()V

    .line 43
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private initTextWatchers()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->etTitle:Landroid/widget/EditText;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->tilTitle:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->etInitSum:Landroid/widget/EditText;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->tilInitSum:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public validate()Z
    .locals 12

    .prologue
    const v11, 0x7f0e004b

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v10, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->$jacocoInit()[Z

    move-result-object v5

    .line 47
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->etTitle:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "title":Ljava/lang/String;
    const/4 v8, 0x1

    const/4 v9, 0x1

    :try_start_0
    aput-boolean v9, v5, v8

    .line 51
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->etInitSum:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 54
    .local v2, "initSum":D
    const/4 v8, 0x2

    aput-boolean v10, v5, v8

    .line 56
    .end local v2    # "initSum":D
    :goto_0
    const/4 v4, 0x1

    .line 58
    .local v4, "valid":Z
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x4

    aput-boolean v10, v5, v8

    .line 63
    :goto_1
    cmpl-double v6, v2, v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    aput-boolean v10, v5, v6

    .line 69
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x427fffffffc00000L    # 2.199023254528E12

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_2

    const/16 v6, 0x8

    aput-boolean v10, v5, v6

    .line 74
    :goto_3
    const/16 v6, 0xa

    aput-boolean v10, v5, v6

    return v4

    .line 52
    .end local v4    # "valid":Z
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v8, 0x3

    aput-boolean v10, v5, v8

    move-wide v2, v6

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "valid":Z
    :cond_0
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->tilTitle:Landroid/support/design/widget/TextInputLayout;

    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->context:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 60
    const/4 v4, 0x0

    const/4 v8, 0x5

    aput-boolean v10, v5, v8

    goto :goto_1

    .line 64
    :cond_1
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->tilInitSum:Landroid/support/design/widget/TextInputLayout;

    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->context:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 65
    const-wide/16 v2, 0x0

    .line 66
    .restart local v2    # "initSum":D
    const/4 v4, 0x0

    const/4 v6, 0x7

    aput-boolean v10, v5, v6

    goto :goto_2

    .line 70
    .end local v2    # "initSum":D
    :cond_2
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->tilInitSum:Landroid/support/design/widget/TextInputLayout;

    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/AccountValidator;->context:Landroid/content/Context;

    const v8, 0x7f0e008b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 71
    const/4 v4, 0x0

    const/16 v6, 0x9

    aput-boolean v10, v5, v6

    goto :goto_3
.end method

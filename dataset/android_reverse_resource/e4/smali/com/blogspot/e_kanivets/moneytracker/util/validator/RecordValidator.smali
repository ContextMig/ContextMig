.class public Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;
.super Ljava/lang/Object;
.source "RecordValidator.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/blogspot/e_kanivets/moneytracker/util/validator/IValidator",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
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

.field etCategory:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090056
    .end annotation
.end field

.field etPrice:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005b
    .end annotation
.end field

.field etTitle:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005d
    .end annotation
.end field

.field spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900be
    .end annotation
.end field

.field tilCategory:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900db
    .end annotation
.end field

.field tilPrice:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900df
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

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3ce96e10e34c7cb0L    # 2.8232910663437023E-15

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->$jacocoData:[Z

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
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->context:Landroid/content/Context;

    .line 47
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 48
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->initTextWatchers()V

    .line 49
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private initTextWatchers()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etPrice:Landroid/widget/EditText;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilPrice:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etTitle:Landroid/widget/EditText;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilTitle:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etCategory:Landroid/widget/EditText;

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilCategory:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/ClearErrorTextWatcher;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    const/16 v1, 0xd

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

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->$jacocoInit()[Z

    move-result-object v5

    .line 53
    const/4 v4, 0x1

    .line 55
    .local v4, "valid":Z
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etCategory:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    aput-boolean v10, v5, v10

    .line 63
    :goto_0
    const/4 v8, 0x3

    const/4 v9, 0x1

    :try_start_0
    aput-boolean v9, v5, v8

    .line 65
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->etPrice:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 68
    .local v2, "price":D
    const/4 v8, 0x4

    aput-boolean v10, v5, v8

    .line 70
    .end local v2    # "price":D
    :goto_1
    cmpl-double v6, v2, v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    aput-boolean v10, v5, v6

    .line 76
    :goto_2
    const-wide v6, 0x427fffffffc00000L    # 2.199023254528E12

    cmpl-double v6, v2, v6

    if-gtz v6, :cond_2

    const/16 v6, 0x8

    aput-boolean v10, v5, v6

    .line 81
    :goto_3
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->spinnerAccount:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v6}, Landroid/support/v7/widget/AppCompatSpinner;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xa

    aput-boolean v10, v5, v6

    .line 86
    :goto_4
    const/16 v6, 0xc

    aput-boolean v10, v5, v6

    return v4

    .line 58
    :cond_0
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilCategory:Landroid/support/design/widget/TextInputLayout;

    iget-object v9, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->context:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 59
    const/4 v4, 0x0

    const/4 v8, 0x2

    aput-boolean v10, v5, v8

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v8, 0x5

    aput-boolean v10, v5, v8

    move-wide v2, v6

    goto :goto_1

    .line 71
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilPrice:Landroid/support/design/widget/TextInputLayout;

    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->context:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 72
    const-wide/16 v2, 0x0

    .line 73
    .restart local v2    # "price":D
    const/4 v4, 0x0

    const/4 v6, 0x7

    aput-boolean v10, v5, v6

    goto :goto_2

    .line 77
    .end local v2    # "price":D
    :cond_2
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->tilPrice:Landroid/support/design/widget/TextInputLayout;

    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->context:Landroid/content/Context;

    const v8, 0x7f0e008a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v4, 0x0

    const/16 v6, 0x9

    aput-boolean v10, v5, v6

    goto :goto_3

    .line 82
    :cond_3
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/util/validator/RecordValidator;->context:Landroid/content/Context;

    const v7, 0x7f0e005b

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 83
    const/4 v4, 0x0

    const/16 v6, 0xb

    aput-boolean v10, v5, v6

    goto :goto_4
.end method

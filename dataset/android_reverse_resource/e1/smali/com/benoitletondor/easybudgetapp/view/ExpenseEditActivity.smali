.class public Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;
.super Lcom/benoitletondor/easybudgetapp/view/DBActivity;
.source "ExpenseEditActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private amountEditText:Landroid/widget/EditText;

.field private date:Ljava/util/Date;

.field private dateButton:Landroid/widget/Button;

.field private descriptionEditText:Landroid/widget/EditText;

.field private expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

.field private expenseType:Landroid/widget/TextView;

.field private fab:Landroid/support/design/widget/FloatingActionButton;

.field private isRevenue:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x79aff1f8ffed71f7L    # -2.830275820764399E-278

    const-string v2, "com/benoitletondor/easybudgetapp/view/ExpenseEditActivity"

    const/16 v3, 0x5b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;-><init>()V

    .line 84
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->isRevenue:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    const/16 v2, 0x50

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Landroid/support/design/widget/FloatingActionButton;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/16 v2, 0x51

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->isRevenue:Z

    const/16 v2, 0x57

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$202(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;Z)Z
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iput-boolean p1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->isRevenue:Z

    const/16 v1, 0x52

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$300(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setExpenseTypeTextViewLayout()V

    const/16 v1, 0x53

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->validateInputs()Z

    move-result v1

    const/16 v2, 0x54

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$500(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    const/16 v2, 0x55

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$600(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Lcom/benoitletondor/easybudgetapp/model/Expense;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    const/16 v2, 0x56

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$700(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->date:Ljava/util/Date;

    const/16 v2, 0x58

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$702(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->date:Ljava/util/Date;

    const/16 v1, 0x59

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$800(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->updateDateButtonDisplay()V

    const/16 v1, 0x5a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private isEdit()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "expense"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x1b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private setExpenseTypeTextViewLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 268
    iget-boolean v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->isRevenue:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x34

    aput-boolean v3, v1, v0

    .line 270
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expenseType:Landroid/widget/TextView;

    const v2, 0x7f080052

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x35

    aput-boolean v3, v1, v0

    .line 271
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expenseType:Landroid/widget/TextView;

    const v2, 0x7f0e0013

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x36

    aput-boolean v3, v1, v0

    .line 273
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800cb

    const/16 v2, 0x37

    aput-boolean v3, v1, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setTitle(I)V

    const/16 v0, 0x39

    aput-boolean v3, v1, v0

    .line 282
    :goto_1
    const/16 v0, 0x3f

    aput-boolean v3, v1, v0

    return-void

    .line 273
    :cond_0
    const v0, 0x7f0800c9

    const/16 v2, 0x38

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expenseType:Landroid/widget/TextView;

    const v2, 0x7f080071

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x3a

    aput-boolean v3, v1, v0

    .line 278
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expenseType:Landroid/widget/TextView;

    const v2, 0x7f0e0016

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x3b

    aput-boolean v3, v1, v0

    .line 280
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0800ca

    const/16 v2, 0x3c

    aput-boolean v3, v1, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setTitle(I)V

    const/16 v0, 0x3e

    aput-boolean v3, v1, v0

    goto :goto_1

    :cond_2
    const v0, 0x7f0800c8

    const/16 v2, 0x3d

    aput-boolean v3, v1, v2

    goto :goto_2
.end method

.method private setUpButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 211
    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expenseType:Landroid/widget/TextView;

    const/16 v0, 0x2c

    aput-boolean v3, v1, v0

    .line 213
    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    const/16 v2, 0x2d

    aput-boolean v3, v1, v2

    .line 214
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$2;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    iget-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->isRevenue:Z

    if-nez v2, :cond_0

    const/16 v0, 0x2e

    aput-boolean v3, v1, v0

    .line 231
    :goto_0
    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/16 v0, 0x32

    aput-boolean v3, v1, v0

    .line 232
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const/16 v0, 0x33

    aput-boolean v3, v1, v0

    return-void

    .line 225
    :cond_0
    const/16 v2, 0x2f

    aput-boolean v3, v1, v2

    .line 227
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const/16 v0, 0x30

    aput-boolean v3, v1, v0

    .line 228
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setExpenseTypeTextViewLayout()V

    const/16 v0, 0x31

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method private setUpDateButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 313
    const v0, 0x7f0f0087

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->dateButton:Landroid/widget/Button;

    const/16 v0, 0x4a

    aput-boolean v3, v1, v0

    .line 314
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->dateButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->removeButtonBorder(Landroid/widget/Button;)V

    const/16 v0, 0x4b

    aput-boolean v3, v1, v0

    .line 316
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->updateDateButtonDisplay()V

    const/16 v0, 0x4c

    aput-boolean v3, v1, v0

    .line 318
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->dateButton:Landroid/widget/Button;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4;-><init>(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    const/16 v0, 0x4d

    aput-boolean v3, v1, v0

    return-void
.end method

.method private setUpTextFields()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 289
    const v0, 0x7f0f0082

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080035

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getUserCurrency(Landroid/content/Context;)Ljava/util/Currency;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const/16 v0, 0x40

    aput-boolean v7, v1, v0

    .line 291
    const v0, 0x7f0f0081

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    .line 293
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    if-nez v0, :cond_0

    const/16 v0, 0x41

    aput-boolean v7, v1, v0

    .line 299
    :goto_0
    const v0, 0x7f0f0083

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    const/16 v0, 0x45

    aput-boolean v7, v1, v0

    .line 300
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->preventUnsupportedInputForDecimals(Landroid/widget/EditText;)V

    .line 302
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    if-nez v0, :cond_1

    const/16 v0, 0x46

    aput-boolean v7, v1, v0

    .line 306
    :goto_1
    const/16 v0, 0x49

    aput-boolean v7, v1, v0

    return-void

    .line 293
    :cond_0
    const/16 v0, 0x42

    aput-boolean v7, v1, v0

    .line 295
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x43

    aput-boolean v7, v1, v0

    .line 296
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    const/16 v0, 0x44

    aput-boolean v7, v1, v0

    goto :goto_0

    .line 302
    :cond_1
    const/16 v0, 0x47

    aput-boolean v7, v1, v0

    .line 304
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedAmountValue(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x48

    aput-boolean v7, v1, v0

    goto :goto_1
.end method

.method private updateDateButtonDisplay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 346
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v2, 0x4e

    aput-boolean v4, v0, v2

    .line 347
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->dateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->date:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const/16 v1, 0x4f

    aput-boolean v4, v0, v1

    return-void
.end method

.method private validateInputs()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 170
    const/16 v5, 0x1c

    aput-boolean v1, v4, v5

    .line 172
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1d

    aput-boolean v1, v4, v6

    .line 173
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x1e

    aput-boolean v1, v4, v5

    move v0, v1

    .line 179
    .local v0, "ok":Z
    :goto_0
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x21

    aput-boolean v1, v4, v6

    .line 180
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x22

    aput-boolean v1, v4, v6

    .line 189
    :try_start_0
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 190
    .local v2, "value":D
    const-wide/16 v6, 0x0

    cmpg-double v5, v2, v6

    if-lez v5, :cond_2

    const/16 v5, 0x25

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_1
    const/16 v5, 0x28

    aput-boolean v1, v4, v5

    .line 203
    .end local v2    # "value":D
    :goto_2
    const/16 v5, 0x2b

    aput-boolean v1, v4, v5

    return v0

    .line 173
    .end local v0    # "ok":Z
    :cond_0
    const/16 v5, 0x1f

    aput-boolean v1, v4, v5

    .line 175
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08005e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 176
    const/4 v0, 0x0

    .restart local v0    # "ok":Z
    const/16 v5, 0x20

    aput-boolean v1, v4, v5

    goto :goto_0

    .line 180
    :cond_1
    const/16 v5, 0x23

    aput-boolean v1, v4, v5

    .line 182
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08005d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v0, 0x0

    const/16 v5, 0x24

    aput-boolean v1, v4, v5

    goto :goto_2

    .line 190
    .restart local v2    # "value":D
    :cond_2
    const/16 v5, 0x26

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v4, v5

    .line 192
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 193
    const/4 v0, 0x0

    const/16 v5, 0x27

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 196
    .end local v2    # "value":D
    :catch_0
    move-exception v5

    const/16 v5, 0x29

    aput-boolean v1, v4, v5

    .line 198
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080054

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v0, 0x0

    const/16 v5, 0x2a

    aput-boolean v1, v4, v5

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    invoke-super {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v1, v6

    .line 92
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    .line 94
    const v0, 0x7f0f007f

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    .line 96
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 97
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    .line 99
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "date"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->date:Ljava/util/Date;

    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    .line 101
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aput-boolean v6, v1, v0

    .line 110
    :goto_0
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setUpButtons()V

    const/16 v0, 0xf

    aput-boolean v6, v1, v0

    .line 111
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setUpTextFields()V

    const/16 v0, 0x10

    aput-boolean v6, v1, v0

    .line 112
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setUpDateButton()V

    const/16 v0, 0x11

    aput-boolean v6, v1, v0

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setResult(I)V

    const/16 v0, 0x12

    aput-boolean v6, v1, v0

    .line 116
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->willAnimateActivityEnter(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    aput-boolean v6, v1, v0

    .line 118
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1;

    invoke-direct {v0, p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)V

    invoke-static {p0, v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->animateActivityEnter(Landroid/app/Activity;Landroid/animation/Animator$AnimatorListener;)V

    const/16 v0, 0x14

    aput-boolean v6, v1, v0

    .line 133
    :goto_1
    const/16 v0, 0x17

    aput-boolean v6, v1, v0

    return-void

    .line 101
    :cond_0
    const/16 v0, 0x8

    aput-boolean v6, v1, v0

    .line 103
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "expense"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/model/Expense;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    const/16 v0, 0x9

    aput-boolean v6, v1, v0

    .line 104
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRevenue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->isRevenue:Z

    const/16 v0, 0xa

    aput-boolean v6, v1, v0

    .line 105
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->date:Ljava/util/Date;

    const/16 v0, 0xb

    aput-boolean v6, v1, v0

    .line 107
    iget-boolean v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->isRevenue:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0800cb

    const/16 v2, 0xc

    aput-boolean v6, v1, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setTitle(I)V

    const/16 v0, 0xe

    aput-boolean v6, v1, v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0800ca

    const/16 v2, 0xd

    aput-boolean v6, v1, v2

    goto :goto_2

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->setFocus(Landroid/widget/EditText;)V

    const/16 v0, 0x15

    aput-boolean v6, v1, v0

    .line 131
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->showFAB(Landroid/view/View;)V

    const/16 v0, 0x16

    aput-boolean v6, v1, v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 142
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    const/16 v2, 0x18

    aput-boolean v1, v3, v2

    .line 144
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->finish()V

    .line 145
    const/16 v2, 0x19

    aput-boolean v1, v3, v2

    .line 148
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    const/16 v4, 0x1a

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0
.end method

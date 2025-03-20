.class public Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;
.super Lcom/benoitletondor/easybudgetapp/view/DBActivity;
.source "RecurringExpenseEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private amountEditText:Landroid/widget/EditText;

.field private dateButton:Landroid/widget/Button;

.field private dateEnd:Ljava/util/Date;

.field private dateStart:Ljava/util/Date;

.field private descriptionEditText:Landroid/widget/EditText;

.field private expense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

.field private expenseType:Landroid/widget/TextView;

.field private fab:Landroid/support/design/widget/FloatingActionButton;

.field private isRevenue:Z

.field private recurringTypeSpinner:Landroid/widget/Spinner;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6e1bd4d9aaeac4f7L    # -1.743604446278581E-222

    const-string v2, "com/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity"

    const/16 v3, 0x63

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;-><init>()V

    .line 99
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->isRevenue:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    const/16 v2, 0x56

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Landroid/support/design/widget/FloatingActionButton;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/16 v2, 0x57

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1000(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->updateDateButtonDisplay()V

    const/16 v1, 0x61

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$1100(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->dateEnd:Ljava/util/Date;

    const/16 v2, 0x62

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->isRevenue:Z

    const/16 v2, 0x5c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$202(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;Z)Z
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iput-boolean p1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->isRevenue:Z

    const/16 v1, 0x58

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$300(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setExpenseTypeTextViewLayout()V

    const/16 v1, 0x59

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->validateInputs()Z

    move-result v1

    const/16 v2, 0x5a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$500(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    const/16 v2, 0x5b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$600(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->dateStart:Ljava/util/Date;

    const/16 v2, 0x5d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$602(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->dateStart:Ljava/util/Date;

    const/16 v1, 0x60

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$700(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Landroid/widget/Spinner;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->recurringTypeSpinner:Landroid/widget/Spinner;

    const/16 v2, 0x5e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$800(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;I)Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getRecurringTypeFromSpinnerSelection(I)Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    move-result-object v1

    const/16 v2, 0x5f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getRecurringTypeFromSpinnerSelection(I)Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 329
    packed-switch p1, :pswitch_data_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecurringTypeFromSpinnerSelection unable to get value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x4f

    aput-boolean v4, v1, v2

    throw v0

    .line 332
    :pswitch_0
    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->WEEKLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const/16 v2, 0x4b

    aput-boolean v4, v1, v2

    .line 338
    :goto_0
    return-object v0

    .line 334
    :pswitch_1
    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->BI_WEEKLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const/16 v2, 0x4c

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 336
    :pswitch_2
    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->MONTHLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const/16 v2, 0x4d

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 338
    :pswitch_3
    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->YEARLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const/16 v2, 0x4e

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setExpenseTypeTextViewLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 260
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->isRevenue:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x2f

    aput-boolean v3, v0, v1

    .line 262
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expenseType:Landroid/widget/TextView;

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x30

    aput-boolean v3, v0, v1

    .line 263
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expenseType:Landroid/widget/TextView;

    const v2, 0x7f0e0013

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    .line 265
    const v1, 0x7f0800d1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setTitle(I)V

    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    .line 274
    :goto_0
    const/16 v1, 0x36

    aput-boolean v3, v0, v1

    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expenseType:Landroid/widget/TextView;

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x33

    aput-boolean v3, v0, v1

    .line 270
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expenseType:Landroid/widget/TextView;

    const v2, 0x7f0e0016

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x34

    aput-boolean v3, v0, v1

    .line 272
    const v1, 0x7f0800cf

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setTitle(I)V

    const/16 v1, 0x35

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private setUpButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 217
    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expenseType:Landroid/widget/TextView;

    const/16 v0, 0x27

    aput-boolean v3, v1, v0

    .line 219
    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    const/16 v2, 0x28

    aput-boolean v3, v1, v2

    .line 220
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 231
    iget-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->isRevenue:Z

    if-nez v2, :cond_0

    const/16 v0, 0x29

    aput-boolean v3, v1, v0

    .line 237
    :goto_0
    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/16 v0, 0x2d

    aput-boolean v3, v1, v0

    .line 238
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const/16 v0, 0x2e

    aput-boolean v3, v1, v0

    return-void

    .line 231
    :cond_0
    const/16 v2, 0x2a

    aput-boolean v3, v1, v2

    .line 233
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const/16 v0, 0x2b

    aput-boolean v3, v1, v0

    .line 234
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setExpenseTypeTextViewLayout()V

    const/16 v0, 0x2c

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method private setUpDateButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 349
    const v0, 0x7f0f0087

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->dateButton:Landroid/widget/Button;

    const/16 v0, 0x50

    aput-boolean v3, v1, v0

    .line 350
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->dateButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->removeButtonBorder(Landroid/widget/Button;)V

    const/16 v0, 0x51

    aput-boolean v3, v1, v0

    .line 352
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->updateDateButtonDisplay()V

    const/16 v0, 0x52

    aput-boolean v3, v1, v0

    .line 354
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->dateButton:Landroid/widget/Button;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;-><init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const/16 v0, 0x53

    aput-boolean v3, v1, v0

    return-void
.end method

.method private setUpInputs()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 281
    const v0, 0x7f0f0082

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080035

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getUserCurrency(Landroid/content/Context;)Ljava/util/Currency;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const/16 v0, 0x37

    aput-boolean v6, v1, v0

    .line 283
    const v0, 0x7f0f0081

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    .line 285
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    if-nez v0, :cond_0

    const/16 v0, 0x38

    aput-boolean v6, v1, v0

    .line 291
    :goto_0
    const v0, 0x7f0f0083

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    const/16 v0, 0x3c

    aput-boolean v6, v1, v0

    .line 292
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->preventUnsupportedInputForDecimals(Landroid/widget/EditText;)V

    .line 294
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    if-nez v0, :cond_1

    const/16 v0, 0x3d

    aput-boolean v6, v1, v0

    .line 299
    :goto_1
    const v0, 0x7f0f009f

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->recurringTypeSpinner:Landroid/widget/Spinner;

    .line 301
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/16 v2, 0x40

    aput-boolean v6, v1, v2

    .line 302
    const v2, 0x7f0800a7

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    const/16 v2, 0x41

    aput-boolean v6, v1, v2

    .line 303
    const v2, 0x7f0800a5

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    const/16 v2, 0x42

    aput-boolean v6, v1, v2

    .line 304
    const v2, 0x7f0800a6

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const/16 v2, 0x43

    aput-boolean v6, v1, v2

    .line 305
    const/4 v2, 0x3

    const v3, 0x7f0800a8

    invoke-virtual {p0, v3}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x44

    aput-boolean v6, v1, v2

    .line 307
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f040057

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/16 v0, 0x45

    aput-boolean v6, v1, v0

    .line 308
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/16 v0, 0x46

    aput-boolean v6, v1, v0

    .line 309
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->recurringTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 311
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    if-eqz v0, :cond_2

    const/16 v0, 0x47

    aput-boolean v6, v1, v0

    .line 313
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->recurringTypeSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getType()Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Landroid/widget/Spinner;->setSelection(IZ)V

    const/16 v0, 0x48

    aput-boolean v6, v1, v0

    .line 319
    :goto_2
    const/16 v0, 0x4a

    aput-boolean v6, v1, v0

    return-void

    .line 285
    :cond_0
    const/16 v0, 0x39

    aput-boolean v6, v1, v0

    .line 287
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x3a

    aput-boolean v6, v1, v0

    .line 288
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    const/16 v0, 0x3b

    aput-boolean v6, v1, v0

    goto/16 :goto_0

    .line 294
    :cond_1
    const/16 v0, 0x3e

    aput-boolean v6, v1, v0

    .line 296
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedAmountValue(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x3f

    aput-boolean v6, v1, v0

    goto/16 :goto_1

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->recurringTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v8, v7}, Landroid/widget/Spinner;->setSelection(IZ)V

    const/16 v0, 0x49

    aput-boolean v6, v1, v0

    goto :goto_2
.end method

.method private updateDateButtonDisplay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 382
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v2, 0x54

    aput-boolean v4, v0, v2

    .line 383
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->dateButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->dateStart:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 384
    const/16 v1, 0x55

    aput-boolean v4, v0, v1

    return-void
.end method

.method private validateInputs()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 176
    const/16 v5, 0x17

    aput-boolean v1, v4, v5

    .line 178
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    aput-boolean v1, v4, v6

    .line 179
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x19

    aput-boolean v1, v4, v5

    move v0, v1

    .line 185
    .local v0, "ok":Z
    :goto_0
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c

    aput-boolean v1, v4, v6

    .line 186
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x1d

    aput-boolean v1, v4, v6

    .line 195
    :try_start_0
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 196
    .local v2, "value":D
    const-wide/16 v6, 0x0

    cmpg-double v5, v2, v6

    if-lez v5, :cond_2

    const/16 v5, 0x20

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_1
    const/16 v5, 0x23

    aput-boolean v1, v4, v5

    .line 209
    .end local v2    # "value":D
    :goto_2
    const/16 v5, 0x26

    aput-boolean v1, v4, v5

    return v0

    .line 179
    .end local v0    # "ok":Z
    :cond_0
    const/16 v5, 0x1a

    aput-boolean v1, v4, v5

    .line 181
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08005e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 182
    const/4 v0, 0x0

    .restart local v0    # "ok":Z
    const/16 v5, 0x1b

    aput-boolean v1, v4, v5

    goto :goto_0

    .line 186
    :cond_1
    const/16 v5, 0x1e

    aput-boolean v1, v4, v5

    .line 188
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08005d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 189
    const/4 v0, 0x0

    const/16 v5, 0x1f

    aput-boolean v1, v4, v5

    goto :goto_2

    .line 196
    .restart local v2    # "value":D
    :cond_2
    const/16 v5, 0x21

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v4, v5

    .line 198
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v0, 0x0

    const/16 v5, 0x22

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 202
    .end local v2    # "value":D
    :catch_0
    move-exception v5

    const/16 v5, 0x24

    aput-boolean v1, v4, v5

    .line 204
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080054

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 205
    const/4 v0, 0x0

    const/16 v5, 0x25

    aput-boolean v1, v4, v5

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 107
    invoke-super {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v1, v6

    .line 108
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    .line 110
    const v0, 0x7f0f007f

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    .line 112
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 113
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    .line 115
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "dateStart"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->dateStart:Ljava/util/Date;

    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    .line 117
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "expense"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aput-boolean v6, v1, v0

    .line 124
    :goto_0
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setUpButtons()V

    const/16 v0, 0xb

    aput-boolean v6, v1, v0

    .line 125
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setUpInputs()V

    const/16 v0, 0xc

    aput-boolean v6, v1, v0

    .line 126
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setUpDateButton()V

    const/16 v0, 0xd

    aput-boolean v6, v1, v0

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setResult(I)V

    const/16 v0, 0xe

    aput-boolean v6, v1, v0

    .line 130
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->willAnimateActivityEnter(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    aput-boolean v6, v1, v0

    .line 132
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$1;

    invoke-direct {v0, p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V

    invoke-static {p0, v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->animateActivityEnter(Landroid/app/Activity;Landroid/animation/Animator$AnimatorListener;)V

    const/16 v0, 0x10

    aput-boolean v6, v1, v0

    .line 147
    :goto_1
    const/16 v0, 0x13

    aput-boolean v6, v1, v0

    return-void

    .line 117
    :cond_0
    const/16 v0, 0x8

    aput-boolean v6, v1, v0

    .line 119
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "expense"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->expense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    const/16 v0, 0x9

    aput-boolean v6, v1, v0

    .line 121
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setTitle(I)V

    const/16 v0, 0xa

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->descriptionEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->setFocus(Landroid/widget/EditText;)V

    const/16 v0, 0x11

    aput-boolean v6, v1, v0

    .line 145
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->showFAB(Landroid/view/View;)V

    const/16 v0, 0x12

    aput-boolean v6, v1, v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 158
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    const/16 v2, 0x14

    aput-boolean v1, v3, v2

    .line 160
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->finish()V

    .line 161
    const/16 v2, 0x15

    aput-boolean v1, v3, v2

    .line 164
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/DBActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    const/16 v4, 0x16

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0
.end method

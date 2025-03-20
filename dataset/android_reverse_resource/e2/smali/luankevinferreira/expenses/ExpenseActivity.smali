.class public Lluankevinferreira/expenses/ExpenseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ExpenseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private expenseDate:Landroid/widget/TextView;

.field private expenseDescription:Landroid/widget/EditText;

.field private expenseExtra:Lluankevinferreira/expenses/domain/Expense;

.field private expenseType:Landroid/widget/Spinner;

.field private expenseValue:Landroid/widget/EditText;

.field private format:Ljava/text/SimpleDateFormat;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/ExpenseActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x13d855fbaf4b9fbbL    # -9.958122487131525E212

    const-string v2, "luankevinferreira/expenses/ExpenseActivity"

    const/16 v3, 0x55

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/ExpenseActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/ExpenseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private editionMode(Ljava/util/Calendar;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lluankevinferreira/expenses/ExpenseActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 155
    iget-object v0, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseExtra:Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {v0}, Lluankevinferreira/expenses/domain/Expense;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x4a

    aput-boolean v5, v1, v0

    .line 156
    iget-object v0, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseValue:Landroid/widget/EditText;

    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseExtra:Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {v2}, Lluankevinferreira/expenses/domain/Expense;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x4b

    aput-boolean v5, v1, v0

    .line 157
    iget-object v0, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseDescription:Landroid/widget/EditText;

    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseExtra:Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {v2}, Lluankevinferreira/expenses/domain/Expense;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x4c

    aput-boolean v5, v1, v0

    .line 159
    new-instance v0, Lluankevinferreira/expenses/util/SpinnerUtils;

    invoke-direct {v0}, Lluankevinferreira/expenses/util/SpinnerUtils;-><init>()V

    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseType:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Lluankevinferreira/expenses/util/SpinnerUtils;->retrieveAllItems(Landroid/widget/Spinner;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x4d

    aput-boolean v5, v1, v2

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v0, 0x4e

    aput-boolean v5, v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lluankevinferreira/expenses/domain/Type;

    const/16 v3, 0x4f

    aput-boolean v5, v1, v3

    .line 161
    iget-object v3, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseExtra:Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {v3}, Lluankevinferreira/expenses/domain/Expense;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lluankevinferreira/expenses/domain/Type;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v0, 0x50

    aput-boolean v5, v1, v0

    .line 163
    :goto_1
    const/16 v0, 0x53

    aput-boolean v5, v1, v0

    goto :goto_0

    .line 161
    :cond_0
    const/16 v3, 0x51

    aput-boolean v5, v1, v3

    .line 162
    iget-object v3, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lluankevinferreira/expenses/domain/Type;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v0, 0x52

    aput-boolean v5, v1, v0

    goto :goto_1

    .line 164
    :cond_1
    const/16 v0, 0x54

    aput-boolean v5, v1, v0

    return-void
.end method

.method private saveExpense(Lluankevinferreira/expenses/dao/ExpenseDAO;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lluankevinferreira/expenses/ExpenseActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 132
    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->format:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const/16 v3, 0x3c

    aput-boolean v6, v1, v3

    .line 134
    new-instance v3, Lluankevinferreira/expenses/domain/Expense;

    invoke-direct {v3}, Lluankevinferreira/expenses/domain/Expense;-><init>()V

    const/16 v4, 0x3d

    aput-boolean v6, v1, v4

    .line 135
    invoke-virtual {v3, v2}, Lluankevinferreira/expenses/domain/Expense;->setDate(Ljava/util/Date;)V

    const/16 v2, 0x3e

    aput-boolean v6, v1, v2

    .line 136
    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lluankevinferreira/expenses/domain/Expense;->setValue(D)V

    const/16 v2, 0x3f

    aput-boolean v6, v1, v2

    .line 137
    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lluankevinferreira/expenses/domain/Expense;->setDescription(Ljava/lang/String;)V

    const/16 v2, 0x40

    aput-boolean v6, v1, v2

    .line 138
    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lluankevinferreira/expenses/domain/Expense;->setType(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseExtra:Lluankevinferreira/expenses/domain/Expense;

    if-eqz v2, :cond_0

    const/16 v2, 0x41

    aput-boolean v6, v1, v2

    .line 142
    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseExtra:Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {v2}, Lluankevinferreira/expenses/domain/Expense;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lluankevinferreira/expenses/domain/Expense;->setId(J)V

    const/16 v2, 0x42

    aput-boolean v6, v1, v2

    .line 143
    invoke-virtual {p1, v3}, Lluankevinferreira/expenses/dao/ExpenseDAO;->update(Lluankevinferreira/expenses/domain/Expense;)Z

    move-result v0

    .local v0, "result":Z
    const/16 v2, 0x43

    aput-boolean v6, v1, v2

    .line 148
    .end local v0    # "result":Z
    :goto_0
    if-nez v0, :cond_1

    const/16 v2, 0x45

    aput-boolean v6, v1, v2

    .line 152
    :goto_1
    const/16 v2, 0x49

    aput-boolean v6, v1, v2

    return-void

    .line 145
    :cond_0
    invoke-virtual {p1, v3}, Lluankevinferreira/expenses/dao/ExpenseDAO;->insert(Lluankevinferreira/expenses/domain/Expense;)Z

    move-result v0

    const/16 v2, 0x44

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 148
    :cond_1
    const/16 v2, 0x46

    aput-boolean v6, v1, v2

    .line 149
    const v2, 0x7f08004e

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/ExpenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x47

    aput-boolean v6, v1, v2

    .line 150
    sget-object v2, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_OK:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v2}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/ExpenseActivity;->setResult(I)V

    const/16 v2, 0x48

    aput-boolean v6, v1, v2

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lluankevinferreira/expenses/ExpenseActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 111
    .local v0, "id":I
    const v1, 0x7f0f0076

    if-ne v0, v1, :cond_0

    const/16 v1, 0x2c

    aput-boolean v6, v2, v1

    .line 112
    new-instance v1, Lluankevinferreira/expenses/components/DatePickerFragment;

    invoke-direct {v1}, Lluankevinferreira/expenses/components/DatePickerFragment;-><init>()V

    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "datePicker"

    invoke-virtual {v1, v3, v4}, Lluankevinferreira/expenses/components/DatePickerFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/16 v1, 0x2d

    aput-boolean v6, v2, v1

    .line 129
    :goto_0
    const/16 v1, 0x3b

    aput-boolean v6, v2, v1

    :goto_1
    return-void

    .line 113
    :cond_0
    const v1, 0x7f0f0078

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2e

    aput-boolean v6, v2, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2f

    aput-boolean v6, v2, v1

    .line 114
    iget-object v1, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x30

    aput-boolean v6, v2, v1

    .line 115
    iget-object v1, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseValue:Landroid/widget/EditText;

    const v3, 0x7f080048

    invoke-virtual {p0, v3}, Lluankevinferreira/expenses/ExpenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 116
    const/16 v1, 0x31

    aput-boolean v6, v2, v1

    goto :goto_1

    .line 118
    :cond_2
    new-instance v3, Lluankevinferreira/expenses/dao/ExpenseDAO;

    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Lluankevinferreira/expenses/dao/ExpenseDAO;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x32

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v1

    .line 120
    invoke-direct {p0, v3}, Lluankevinferreira/expenses/ExpenseActivity;->saveExpense(Lluankevinferreira/expenses/dao/ExpenseDAO;)V

    const/16 v1, 0x33

    const/4 v4, 0x1

    aput-boolean v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v3}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    .line 126
    const/16 v1, 0x34

    aput-boolean v6, v2, v1

    .line 127
    :goto_2
    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->finish()V

    const/16 v1, 0x3a

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    const/16 v1, 0x35

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v2, v1

    .line 122
    sget-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_ERROR:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v1}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lluankevinferreira/expenses/ExpenseActivity;->setResult(I)V

    const/16 v1, 0x36

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 123
    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f080041

    invoke-virtual {p0, v4}, Lluankevinferreira/expenses/ExpenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x37

    const/4 v4, 0x1

    aput-boolean v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-virtual {v3}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    .line 126
    const/16 v1, 0x38

    aput-boolean v6, v2, v1

    goto :goto_2

    .line 125
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    .line 126
    const/16 v3, 0x39

    aput-boolean v6, v2, v3

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lluankevinferreira/expenses/ExpenseActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v7, v3, v7

    .line 44
    const v2, 0x7f04001a

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/ExpenseActivity;->setContentView(I)V

    const/4 v2, 0x2

    aput-boolean v7, v3, v2

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v2, 0x3

    aput-boolean v7, v3, v2

    .line 47
    new-instance v2, Ljava/util/Locale;

    const v5, 0x7f080046

    invoke-virtual {p0, v5}, Lluankevinferreira/expenses/ExpenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080038

    invoke-virtual {p0, v6}, Lluankevinferreira/expenses/ExpenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-boolean v7, v3, v5

    .line 48
    new-instance v5, Ljava/text/SimpleDateFormat;

    const v6, 0x7f08003b

    invoke-virtual {p0, v6}, Lluankevinferreira/expenses/ExpenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v5, p0, Lluankevinferreira/expenses/ExpenseActivity;->format:Ljava/text/SimpleDateFormat;

    const/4 v2, 0x5

    aput-boolean v7, v3, v2

    .line 50
    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    aput-boolean v7, v3, v2

    .line 53
    :goto_0
    const v2, 0x7f0f0074

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/ExpenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseValue:Landroid/widget/EditText;

    const/16 v2, 0x9

    aput-boolean v7, v3, v2

    .line 54
    const v2, 0x7f0f0075

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/ExpenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseDescription:Landroid/widget/EditText;

    const/16 v2, 0xa

    aput-boolean v7, v3, v2

    .line 55
    const v2, 0x7f0f0077

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/ExpenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseType:Landroid/widget/Spinner;

    const/16 v2, 0xb

    aput-boolean v7, v3, v2

    .line 56
    const v2, 0x7f0f0076

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/ExpenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseDate:Landroid/widget/TextView;

    const/16 v2, 0xc

    aput-boolean v7, v3, v2

    .line 58
    const v2, 0x7f0f0078

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/ExpenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    .local v0, "btnSave":Landroid/widget/Button;
    if-nez v0, :cond_1

    const/16 v2, 0xd

    aput-boolean v7, v3, v2

    .line 62
    :goto_1
    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_2

    const/16 v2, 0x10

    aput-boolean v7, v3, v2

    .line 67
    :goto_2
    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseExtra:Lluankevinferreira/expenses/domain/Expense;

    if-nez v2, :cond_3

    const/16 v2, 0x13

    aput-boolean v7, v3, v2

    .line 70
    :goto_3
    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseDate:Landroid/widget/TextView;

    if-nez v2, :cond_4

    const/16 v2, 0x16

    aput-boolean v7, v3, v2

    .line 74
    :goto_4
    const/16 v2, 0x1a

    aput-boolean v7, v3, v2

    return-void

    .line 50
    .end local v0    # "btnSave":Landroid/widget/Button;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x7

    aput-boolean v7, v3, v2

    .line 51
    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v2, 0x8

    aput-boolean v7, v3, v2

    goto :goto_0

    .line 59
    .restart local v0    # "btnSave":Landroid/widget/Button;
    :cond_1
    const/16 v2, 0xe

    aput-boolean v7, v3, v2

    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0xf

    aput-boolean v7, v3, v2

    goto :goto_1

    .line 63
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    const/16 v2, 0x11

    aput-boolean v7, v3, v2

    .line 64
    sget-object v2, Lluankevinferreira/expenses/enumeration/ExtraType;->EXPENSE:Lluankevinferreira/expenses/enumeration/ExtraType;

    invoke-virtual {v2}, Lluankevinferreira/expenses/enumeration/ExtraType;->getExtraAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lluankevinferreira/expenses/domain/Expense;

    iput-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseExtra:Lluankevinferreira/expenses/domain/Expense;

    const/16 v2, 0x12

    aput-boolean v7, v3, v2

    goto :goto_2

    .line 67
    :cond_3
    const/16 v2, 0x14

    aput-boolean v7, v3, v2

    .line 68
    invoke-direct {p0, v4}, Lluankevinferreira/expenses/ExpenseActivity;->editionMode(Ljava/util/Calendar;)V

    const/16 v2, 0x15

    aput-boolean v7, v3, v2

    goto :goto_3

    .line 70
    :cond_4
    const/16 v2, 0x17

    aput-boolean v7, v3, v2

    .line 71
    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseDate:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x18

    aput-boolean v7, v3, v2

    .line 72
    iget-object v2, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseDate:Landroid/widget/TextView;

    iget-object v5, p0, Lluankevinferreira/expenses/ExpenseActivity;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x19

    aput-boolean v7, v3, v2

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lluankevinferreira/expenses/ExpenseActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 78
    iget-object v1, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseExtra:Lluankevinferreira/expenses/domain/Expense;

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    aput-boolean v0, v2, v1

    .line 79
    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v3, 0x7f100000

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 80
    const/16 v1, 0x1c

    aput-boolean v0, v2, v1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x1d

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lluankevinferreira/expenses/ExpenseActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 89
    .local v0, "id":I
    const v1, 0x7f0f009f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1e

    aput-boolean v6, v2, v1

    .line 104
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x2b

    aput-boolean v6, v2, v3

    return v1

    .line 89
    :cond_0
    const/16 v1, 0x1f

    aput-boolean v6, v2, v1

    .line 90
    new-instance v3, Lluankevinferreira/expenses/dao/ExpenseDAO;

    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Lluankevinferreira/expenses/dao/ExpenseDAO;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x20

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v1

    .line 92
    iget-object v1, p0, Lluankevinferreira/expenses/ExpenseActivity;->expenseExtra:Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {v3, v1}, Lluankevinferreira/expenses/dao/ExpenseDAO;->delete(Lluankevinferreira/expenses/domain/Expense;)Z

    const/16 v1, 0x21

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 93
    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f08004d

    invoke-virtual {p0, v4}, Lluankevinferreira/expenses/ExpenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x22

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 94
    sget-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_OK:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v1}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lluankevinferreira/expenses/ExpenseActivity;->setResult(I)V

    const/16 v1, 0x23

    const/4 v4, 0x1

    aput-boolean v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v3}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    .line 100
    const/16 v1, 0x24

    aput-boolean v6, v2, v1

    .line 101
    :goto_1
    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->finish()V

    const/16 v1, 0x2a

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    const/16 v1, 0x25

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v2, v1

    .line 96
    sget-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_ERROR:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v1}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lluankevinferreira/expenses/ExpenseActivity;->setResult(I)V

    const/16 v1, 0x26

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 97
    invoke-virtual {p0}, Lluankevinferreira/expenses/ExpenseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f080040

    invoke-virtual {p0, v4}, Lluankevinferreira/expenses/ExpenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x27

    const/4 v4, 0x1

    aput-boolean v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-virtual {v3}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    .line 100
    const/16 v1, 0x28

    aput-boolean v6, v2, v1

    goto :goto_1

    .line 99
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    .line 100
    const/16 v3, 0x29

    aput-boolean v6, v2, v3

    throw v1
.end method

.class Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;
.super Landroid/os/AsyncTask;
.source "RecurringExpenseEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveRecurringExpenseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4d648ba3fefb1567L    # 6.761533275561446E64

    const-string v2, "com/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask"

    const/16 v3, 0x50

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 391
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 391
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;-><init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V

    const/16 v1, 0x4f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private flattenExpensesForRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Z
    .locals 11
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v8

    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v0, 0xb

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 423
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$600(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xc

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 425
    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$5;->$SwitchMap$com$benoitletondor$easybudgetapp$model$RecurringExpenseType:[I

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getType()Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xd

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 505
    .local v6, "expenseInserted":Z
    :goto_0
    const/4 v0, 0x1

    const/16 v1, 0x39

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    :goto_1
    return v0

    .line 429
    .end local v6    # "expenseInserted":Z
    :pswitch_0
    const/4 v7, 0x0

    const/16 v0, 0xe

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .restart local v6    # "expenseInserted":Z
    .local v7, "i":I
    :goto_2
    const/16 v0, 0xf0

    if-lt v7, v0, :cond_0

    const/16 v0, 0xf

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 445
    .end local v7    # "i":I
    :goto_3
    const/16 v0, 0x18

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_0

    .line 429
    .restart local v7    # "i":I
    :cond_0
    const/16 v0, 0x10

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 431
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    iget-object v10, v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    new-instance v0, Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getAmount()D

    move-result-wide v2

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V

    invoke-virtual {v10, v0}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    move-result v6

    .line 432
    if-nez v6, :cond_1

    .end local v7    # "i":I
    const/16 v0, 0x11

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 434
    const/4 v0, 0x0

    const-string v1, "Error while inserting expense for recurring expense into DB: persistExpense returned false"

    invoke-static {v0, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    goto :goto_1

    .line 438
    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x13

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 440
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$1100(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x14

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 429
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .restart local v7    # "i":I
    const/16 v0, 0x17

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_2

    .line 440
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$1100(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x15

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_4

    .line 442
    :cond_3
    const/16 v0, 0x16

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_3

    .line 448
    .end local v6    # "expenseInserted":Z
    :pswitch_1
    const/4 v7, 0x0

    const/16 v0, 0x19

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .restart local v6    # "expenseInserted":Z
    .restart local v7    # "i":I
    :goto_5
    const/16 v0, 0xf0

    if-lt v7, v0, :cond_4

    const/16 v0, 0x1a

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 464
    .end local v7    # "i":I
    :goto_6
    const/16 v0, 0x23

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto/16 :goto_0

    .line 448
    .restart local v7    # "i":I
    :cond_4
    const/16 v0, 0x1b

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 450
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    iget-object v10, v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    new-instance v0, Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getAmount()D

    move-result-wide v2

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V

    invoke-virtual {v10, v0}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    move-result v6

    .line 451
    if-nez v6, :cond_5

    .end local v7    # "i":I
    const/16 v0, 0x1c

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 453
    const/4 v0, 0x0

    const-string v1, "Error while inserting expense for recurring expense into DB: persistExpense returned false"

    invoke-static {v0, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;)V

    .line 454
    const/4 v0, 0x0

    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    goto/16 :goto_1

    .line 457
    :cond_5
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x1e

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 459
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$1100(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_6

    const/16 v0, 0x1f

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 448
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .restart local v7    # "i":I
    const/16 v0, 0x22

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_5

    .line 459
    .end local v7    # "i":I
    :cond_6
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$1100(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x20

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_7

    .line 461
    :cond_7
    const/16 v0, 0x21

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_6

    .line 467
    .end local v6    # "expenseInserted":Z
    :pswitch_2
    const/4 v7, 0x0

    const/16 v0, 0x24

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .restart local v6    # "expenseInserted":Z
    .restart local v7    # "i":I
    :goto_8
    const/16 v0, 0x78

    if-lt v7, v0, :cond_8

    const/16 v0, 0x25

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 483
    .end local v7    # "i":I
    :goto_9
    const/16 v0, 0x2e

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto/16 :goto_0

    .line 467
    .restart local v7    # "i":I
    :cond_8
    const/16 v0, 0x26

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 469
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    iget-object v10, v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    new-instance v0, Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getAmount()D

    move-result-wide v2

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V

    invoke-virtual {v10, v0}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    move-result v6

    .line 470
    if-nez v6, :cond_9

    .end local v7    # "i":I
    const/16 v0, 0x27

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 472
    const/4 v0, 0x0

    const-string v1, "Error while inserting expense for recurring expense into DB: persistExpense returned false"

    invoke-static {v0, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    const/16 v1, 0x28

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    goto/16 :goto_1

    .line 476
    :cond_9
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x29

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 478
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$1100(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_a

    const/16 v0, 0x2a

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 467
    :goto_a
    add-int/lit8 v7, v7, 0x1

    .restart local v7    # "i":I
    const/16 v0, 0x2d

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_8

    .line 478
    .end local v7    # "i":I
    :cond_a
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$1100(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x2b

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_a

    .line 480
    :cond_b
    const/16 v0, 0x2c

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_9

    .line 486
    .end local v6    # "expenseInserted":Z
    :pswitch_3
    const/4 v7, 0x0

    const/16 v0, 0x2f

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .restart local v6    # "expenseInserted":Z
    .restart local v7    # "i":I
    :goto_b
    const/16 v0, 0x64

    if-lt v7, v0, :cond_c

    const/16 v0, 0x30

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x31

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 488
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    iget-object v10, v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    new-instance v0, Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getAmount()D

    move-result-wide v2

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V

    invoke-virtual {v10, v0}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    move-result v6

    .line 489
    if-nez v6, :cond_d

    .end local v7    # "i":I
    const/16 v0, 0x32

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 491
    const/4 v0, 0x0

    const-string v1, "Error while inserting expense for recurring expense into DB: persistExpense returned false"

    invoke-static {v0, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;)V

    .line 492
    const/4 v0, 0x0

    const/16 v1, 0x33

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    goto/16 :goto_1

    .line 495
    :cond_d
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0x34

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 497
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$1100(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_e

    const/16 v0, 0x35

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 486
    :goto_c
    add-int/lit8 v7, v7, 0x1

    .restart local v7    # "i":I
    const/16 v0, 0x38

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_b

    .line 497
    .end local v7    # "i":I
    :cond_e
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$1100(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x36

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_c

    .line 499
    :cond_f
    const/16 v0, 0x37

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto/16 :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v3

    .line 401
    array-length v4, p1

    aput-boolean v7, v3, v7

    move v1, v2

    .local v0, "inserted":Z
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, p1, v1

    const/4 v6, 0x2

    aput-boolean v7, v3, v6

    .line 403
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    iget-object v6, v6, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v6, v5}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->addRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Z

    move-result v0

    .line 404
    if-nez v0, :cond_0

    const/4 v1, 0x3

    aput-boolean v7, v3, v1

    .line 406
    const-string v1, "Error while inserting recurring expense into DB: addRecurringExpense returned false"

    invoke-static {v2, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v7, v3, v1

    .line 407
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v7, v3, v2

    .line 417
    :goto_1
    return-object v1

    .line 410
    :cond_0
    invoke-direct {p0, v5}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->flattenExpensesForRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v1, 0x6

    aput-boolean v7, v3, v1

    .line 412
    const-string v1, "Error while flattening expenses for recurring expense: flattenExpensesForRecurringExpense returned false"

    invoke-static {v2, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;)V

    const/4 v1, 0x7

    aput-boolean v7, v3, v1

    .line 413
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-boolean v7, v3, v2

    goto :goto_1

    .line 401
    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x9

    aput-boolean v7, v3, v5

    goto :goto_0

    .line 417
    :cond_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-boolean v7, v3, v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 391
    check-cast p1, [Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->doInBackground([Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x4e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/16 v1, 0x43

    aput-boolean v5, v0, v1

    .line 527
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x44

    aput-boolean v5, v0, v1

    .line 529
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setResult(I)V

    const/16 v1, 0x45

    aput-boolean v5, v0, v1

    .line 530
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->finish()V

    const/16 v1, 0x46

    aput-boolean v5, v0, v1

    .line 547
    :goto_0
    const/16 v1, 0x4c

    aput-boolean v5, v0, v1

    return-void

    .line 534
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080094

    const/16 v3, 0x47

    aput-boolean v5, v0, v3

    .line 535
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    const/16 v3, 0x48

    aput-boolean v5, v0, v3

    .line 536
    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080060

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask$1;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;)V

    const/16 v4, 0x49

    aput-boolean v5, v0, v4

    .line 537
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x4a

    aput-boolean v5, v0, v2

    .line 545
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/16 v1, 0x4b

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 391
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->onPostExecute(Ljava/lang/Boolean;)V

    const/16 v1, 0x4d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v1

    .line 512
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    const/16 v0, 0x3a

    aput-boolean v5, v1, v0

    .line 513
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/16 v0, 0x3b

    aput-boolean v5, v1, v0

    .line 514
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    const v2, 0x7f080096

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    const/16 v0, 0x3c

    aput-boolean v5, v1, v0

    .line 515
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800a4

    const/16 v4, 0x3d

    aput-boolean v5, v1, v4

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v0, 0x3f

    aput-boolean v5, v1, v0

    .line 516
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const/16 v0, 0x40

    aput-boolean v5, v1, v0

    .line 517
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/16 v0, 0x41

    aput-boolean v5, v1, v0

    .line 518
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 519
    const/16 v0, 0x42

    aput-boolean v5, v1, v0

    return-void

    .line 515
    :cond_0
    const v0, 0x7f080095

    const/16 v4, 0x3e

    aput-boolean v5, v1, v4

    goto :goto_0
.end method

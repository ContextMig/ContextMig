.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteRecurringExpenseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final deleteType:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

.field private dialog:Landroid/app/ProgressDialog;

.field private final expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

.field private expensesToRestore:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;"
        }
    .end annotation
.end field

.field private final recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

.field private recurringExpenseToRestore:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x600550e15ee58c5L

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask"

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Lcom/benoitletondor/easybudgetapp/model/Expense;Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;)V
    .locals 3
    .param p1    # Lcom/benoitletondor/easybudgetapp/view/MainActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/benoitletondor/easybudgetapp/model/Expense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1180
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1181
    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    .line 1182
    iput-object p3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    .line 1183
    iput-object p4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->deleteType:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    .line 1184
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$800(Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expensesToRestore:Ljava/util/List;

    const/16 v2, 0x30

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$900(Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;)Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpenseToRestore:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    const/16 v2, 0x31

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v4

    .line 1191
    sget-object v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity$13;->$SwitchMap$com$benoitletondor$easybudgetapp$model$RecurringExpenseDeleteType:[I

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->deleteType:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    invoke-virtual {v5}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    aput-boolean v7, v4, v7

    .line 1256
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v5, 0x1b

    aput-boolean v7, v4, v5

    :goto_1
    return-object v3

    .line 1195
    :pswitch_0
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    iput-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpenseToRestore:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    const/4 v3, 0x2

    aput-boolean v7, v4, v3

    .line 1196
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    invoke-virtual {v3, v5}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getAllExpenseForRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expensesToRestore:Ljava/util/List;

    const/4 v3, 0x3

    aput-boolean v7, v4, v3

    .line 1198
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    invoke-virtual {v3, v5}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->deleteAllExpenseForRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Z

    move-result v1

    .line 1199
    .local v1, "expensesDeleted":Z
    if-nez v1, :cond_0

    const/4 v3, 0x4

    aput-boolean v7, v4, v3

    .line 1201
    const-string v3, "Error while deleting expenses for recurring expense (mode ALL). deleteAllExpenseForRecurringExpense returned false"

    invoke-static {v8, v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;)V

    const/4 v3, 0x5

    aput-boolean v7, v4, v3

    .line 1202
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x6

    aput-boolean v7, v4, v5

    goto :goto_1

    .line 1205
    :cond_0
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    invoke-virtual {v3, v5}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->deleteRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Z

    move-result v2

    .line 1206
    .local v2, "recurringExpenseDeleted":Z
    if-eqz v2, :cond_1

    const/4 v3, 0x7

    aput-boolean v7, v4, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    aput-boolean v7, v4, v3

    .line 1208
    const-string v3, "Error while deleting recurring expense (mode ALL). deleteRecurringExpense returned false"

    invoke-static {v8, v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;)V

    const/16 v3, 0x9

    aput-boolean v7, v4, v3

    .line 1209
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v5, 0xa

    aput-boolean v7, v4, v5

    goto :goto_1

    .line 1216
    .end local v1    # "expensesDeleted":Z
    .end local v2    # "recurringExpenseDeleted":Z
    :pswitch_1
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v6}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getAllExpensesForRecurringExpenseFromDate(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Ljava/util/Date;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expensesToRestore:Ljava/util/List;

    const/16 v3, 0xb

    aput-boolean v7, v4, v3

    .line 1218
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v6}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->deleteAllExpenseForRecurringExpenseFromDate(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Ljava/util/Date;)Z

    move-result v1

    .line 1219
    .restart local v1    # "expensesDeleted":Z
    if-eqz v1, :cond_2

    const/16 v3, 0xc

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xd

    aput-boolean v7, v4, v3

    .line 1221
    const-string v3, "Error while deleting expenses for recurring expense (mode FROM). deleteAllExpenseForRecurringExpenseFromDate returned false"

    invoke-static {v8, v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;)V

    const/16 v3, 0xe

    aput-boolean v7, v4, v3

    .line 1222
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v5, 0xf

    aput-boolean v7, v4, v5

    goto/16 :goto_1

    .line 1229
    .end local v1    # "expensesDeleted":Z
    :pswitch_2
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v6}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getAllExpensesForRecurringExpenseBeforeDate(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Ljava/util/Date;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expensesToRestore:Ljava/util/List;

    const/16 v3, 0x10

    aput-boolean v7, v4, v3

    .line 1231
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->recurringExpense:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v6}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->deleteAllExpenseForRecurringExpenseBeforeDate(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Ljava/util/Date;)Z

    move-result v1

    .line 1232
    .restart local v1    # "expensesDeleted":Z
    if-eqz v1, :cond_3

    const/16 v3, 0x11

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x12

    aput-boolean v7, v4, v3

    .line 1234
    const-string v3, "Error while deleting expenses for recurring expense (mode TO). deleteAllExpenseForRecurringExpenseBeforeDate returned false"

    invoke-static {v8, v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;)V

    const/16 v3, 0x13

    aput-boolean v7, v4, v3

    .line 1235
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v5, 0x14

    aput-boolean v7, v4, v5

    goto/16 :goto_1

    .line 1242
    .end local v1    # "expensesDeleted":Z
    :pswitch_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expensesToRestore:Ljava/util/List;

    const/16 v3, 0x15

    aput-boolean v7, v4, v3

    .line 1243
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expensesToRestore:Ljava/util/List;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x16

    aput-boolean v7, v4, v3

    .line 1245
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v3, v5}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->deleteExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    move-result v0

    .line 1246
    .local v0, "expenseDeleted":Z
    if-eqz v0, :cond_4

    const/16 v3, 0x17

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x18

    aput-boolean v7, v4, v3

    .line 1248
    const-string v3, "Error while deleting expense for recurring expense (mode ONE). deleteExpense returned false"

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;)V

    const/16 v3, 0x19

    aput-boolean v7, v4, v3

    .line 1249
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v5, 0x1a

    aput-boolean v7, v4, v5

    goto/16 :goto_1

    .line 1191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1146
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x2f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v1

    .line 1276
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    const/16 v2, 0x23

    aput-boolean v5, v1, v2

    .line 1278
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x24

    aput-boolean v5, v1, v2

    .line 1281
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$500(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/Date;)V

    const/16 v2, 0x25

    aput-boolean v5, v1, v2

    .line 1282
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$300(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v2

    const v3, 0x7f08009d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 1284
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->expensesToRestore:Ljava/util/List;

    if-nez v2, :cond_0

    const/16 v2, 0x26

    aput-boolean v5, v1, v2

    .line 1296
    :goto_0
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const v3, 0x7f0e0072

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    const/16 v2, 0x29

    aput-boolean v5, v1, v2

    .line 1299
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;

    const/16 v2, 0x2a

    aput-boolean v5, v1, v2

    .line 1300
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 1301
    const/16 v2, 0x2b

    aput-boolean v5, v1, v2

    .line 1306
    .end local v0    # "snackbar":Landroid/support/design/widget/Snackbar;
    :goto_1
    const/16 v2, 0x2d

    aput-boolean v5, v1, v2

    return-void

    .line 1284
    .restart local v0    # "snackbar":Landroid/support/design/widget/Snackbar;
    :cond_0
    const/16 v2, 0x27

    aput-boolean v5, v1, v2

    .line 1286
    const v2, 0x7f0800d5

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    const/16 v2, 0x28

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 1304
    .end local v0    # "snackbar":Landroid/support/design/widget/Snackbar;
    :cond_1
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$400(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    const/16 v2, 0x2c

    aput-boolean v5, v1, v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1146
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->onPostExecute(Ljava/lang/Boolean;)V

    const/16 v1, 0x2e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1263
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x1c

    aput-boolean v4, v0, v1

    .line 1264
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/16 v1, 0x1d

    aput-boolean v4, v0, v1

    .line 1265
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    const/16 v1, 0x1e

    aput-boolean v4, v0, v1

    .line 1266
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    .line 1267
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const/16 v1, 0x20

    aput-boolean v4, v0, v1

    .line 1268
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    .line 1269
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1270
    const/16 v1, 0x22

    aput-boolean v4, v0, v1

    return-void
.end method

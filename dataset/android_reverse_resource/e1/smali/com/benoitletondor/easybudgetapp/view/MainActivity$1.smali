.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7576f4908960cdb7L    # -6.515519221928792E-258

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$1"

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 173
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const v6, 0x7f080060

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->$jacocoInit()[Z

    move-result-object v3

    .line 177
    const-string v1, "intent.expense.deleted"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aput-boolean v7, v3, v7

    .line 179
    const-string v1, "expense"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/benoitletondor/easybudgetapp/model/Expense;

    const/4 v2, 0x2

    aput-boolean v7, v3, v2

    .line 181
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v2, v1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->deleteExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    aput-boolean v7, v3, v2

    .line 183
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->removeExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)I

    move-result v4

    const/4 v2, 0x4

    aput-boolean v7, v3, v2

    .line 184
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$100(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/Date;)V

    const/4 v2, 0x5

    aput-boolean v7, v3, v2

    .line 185
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->refreshView()V

    const/4 v2, 0x6

    aput-boolean v7, v3, v2

    .line 187
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$300(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v5

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRevenue()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f080053

    const/4 v6, 0x7

    aput-boolean v7, v3, v6

    :goto_0
    invoke-static {v5, v2, v8}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    const/16 v5, 0x9

    aput-boolean v7, v3, v5

    .line 188
    const v5, 0x7f0800d5

    new-instance v6, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;

    invoke-direct {v6, p0, v1, v4}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;Lcom/benoitletondor/easybudgetapp/model/Expense;I)V

    invoke-virtual {v2, v5, v6}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    const/16 v1, 0xa

    aput-boolean v7, v3, v1

    .line 204
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const v4, 0x7f0e0072

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    const/16 v1, 0xb

    aput-boolean v7, v3, v1

    .line 206
    const/16 v1, 0x1388

    invoke-virtual {v2, v1}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;

    const/16 v1, 0xc

    aput-boolean v7, v3, v1

    .line 207
    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    .line 208
    const/16 v1, 0xd

    aput-boolean v7, v3, v1

    .line 225
    :goto_1
    const/16 v1, 0x13

    aput-boolean v7, v3, v1

    .line 288
    :goto_2
    const/16 v1, 0x31

    aput-boolean v7, v3, v1

    :goto_3
    return-void

    .line 187
    :cond_0
    const v2, 0x7f080046

    const/16 v6, 0x8

    aput-boolean v7, v3, v6

    goto :goto_0

    .line 211
    :cond_1
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080045

    const/16 v4, 0xe

    aput-boolean v7, v3, v4

    .line 212
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080044

    const/16 v4, 0xf

    aput-boolean v7, v3, v4

    .line 213
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$2;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;)V

    const/16 v4, 0x10

    aput-boolean v7, v3, v4

    .line 214
    invoke-virtual {v1, v6, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    aput-boolean v7, v3, v2

    .line 222
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/16 v1, 0x12

    aput-boolean v7, v3, v1

    goto :goto_1

    .line 226
    :cond_2
    const-string v1, "intent.expense.monthly.deleted"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x14

    aput-boolean v7, v3, v1

    .line 228
    const-string v1, "expense"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/benoitletondor/easybudgetapp/model/Expense;

    const/16 v2, 0x15

    aput-boolean v7, v3, v2

    .line 229
    const-string v2, "deleteType"

    sget-object v4, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->ALL:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    invoke-virtual {v4}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->getValue()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->fromValue(I)Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    move-result-object v0

    .line 231
    .local v0, "deleteType":Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;
    if-nez v0, :cond_3

    const/16 v1, 0x16

    aput-boolean v7, v3, v1

    .line 233
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$400(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    const/16 v1, 0x17

    aput-boolean v7, v3, v1

    .line 234
    const-string v1, "INTENT_RECURRING_EXPENSE_DELETED came with null delete type"

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;)V

    .line 236
    const/16 v1, 0x18

    aput-boolean v7, v3, v1

    goto/16 :goto_3

    .line 239
    :cond_3
    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAssociatedRecurringExpense()Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 v1, 0x19

    aput-boolean v7, v3, v1

    .line 241
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$400(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)V

    const/16 v1, 0x1a

    aput-boolean v7, v3, v1

    .line 242
    const-string v1, "INTENT_RECURRING_EXPENSE_DELETED: Unable to retrieve recurring expense"

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;)V

    .line 244
    const/16 v1, 0x1b

    aput-boolean v7, v3, v1

    goto/16 :goto_3

    .line 248
    :cond_4
    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->TO:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1c

    aput-boolean v7, v3, v2

    .line 266
    :goto_4
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAssociatedRecurringExpense()Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    move-result-object v5

    invoke-direct {v2, v4, v5, v1, v0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Lcom/benoitletondor/easybudgetapp/model/Expense;Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 267
    const/16 v1, 0x24

    aput-boolean v7, v3, v1

    goto/16 :goto_2

    .line 248
    :cond_5
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAssociatedRecurringExpense()Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    move-result-object v4

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->hasExpensesForRecurringExpenseBeforeDate(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x1d

    aput-boolean v7, v3, v2

    goto :goto_4

    :cond_6
    const/16 v1, 0x1e

    aput-boolean v7, v3, v1

    .line 250
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08009a

    const/16 v4, 0x1f

    aput-boolean v7, v3, v4

    .line 251
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const/16 v4, 0x20

    aput-boolean v7, v3, v4

    .line 252
    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080099

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$3;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;)V

    const/16 v4, 0x21

    aput-boolean v7, v3, v4

    .line 253
    invoke-virtual {v1, v6, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x22

    aput-boolean v7, v3, v2

    .line 261
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 263
    const/16 v1, 0x23

    aput-boolean v7, v3, v1

    goto/16 :goto_3

    .line 268
    .end local v0    # "deleteType":Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;
    :cond_7
    const-string v1, "currency.selected"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x25

    aput-boolean v7, v3, v1

    .line 270
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$500(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/Date;)V

    const/16 v1, 0x26

    aput-boolean v7, v3, v1

    goto/16 :goto_2

    .line 272
    :cond_8
    const-string v1, "intent.welcomscreen.show"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x27

    aput-boolean v7, v3, v1

    .line 274
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const-class v4, Lcom/benoitletondor/easybudgetapp/view/WelcomeActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x28

    aput-boolean v7, v3, v2

    .line 275
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const/16 v4, 0x67

    const/4 v5, 0x0

    invoke-static {v2, v1, v4, v5}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 276
    const/16 v1, 0x29

    aput-boolean v7, v3, v1

    goto/16 :goto_2

    .line 277
    :cond_9
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x2a

    aput-boolean v7, v3, v1

    .line 279
    invoke-static {p2}, Lcom/google/android/gms/appinvite/AppInviteReferral;->hasReferral(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0x2b

    aput-boolean v7, v3, v1

    goto/16 :goto_2

    :cond_a
    const/16 v1, 0x2c

    aput-boolean v7, v3, v1

    .line 281
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1, p2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$600(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Landroid/content/Intent;)V

    const/16 v1, 0x2d

    aput-boolean v7, v3, v1

    goto/16 :goto_2

    .line 284
    :cond_b
    const-string v1, "iabStatusChanged"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0x2e

    aput-boolean v7, v3, v1

    goto/16 :goto_2

    :cond_c
    const/16 v1, 0x2f

    aput-boolean v7, v3, v1

    .line 286
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->invalidateOptionsMenu()V

    const/16 v1, 0x30

    aput-boolean v7, v3, v1

    goto/16 :goto_2
.end method

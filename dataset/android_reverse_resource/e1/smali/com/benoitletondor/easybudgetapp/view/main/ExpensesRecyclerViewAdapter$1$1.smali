.class Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;
.super Ljava/lang/Object;
.source "ExpensesRecyclerViewAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x272f950343812d9eL    # 6.115225586408586E-120

    const-string v2, "com/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 187
    packed-switch p2, :pswitch_data_0

    aput-boolean v6, v0, v6

    .line 240
    :goto_0
    const/16 v1, 0x16

    aput-boolean v6, v0, v1

    return-void

    .line 191
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$viewHolder:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    .line 192
    const-string v2, "date"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v6, v0, v2

    .line 193
    const-string v2, "expense"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x4

    aput-boolean v6, v0, v2

    .line 195
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->access$000(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 197
    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 202
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.expense.monthly.deleted"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    .line 203
    const-string v2, "expense"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    .line 204
    const-string v2, "deleteType"

    sget-object v3, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->ONE:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x8

    aput-boolean v6, v0, v2

    .line 205
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->access$000(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 207
    const/16 v1, 0x9

    aput-boolean v6, v0, v1

    goto/16 :goto_0

    .line 212
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.expense.monthly.deleted"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-boolean v6, v0, v2

    .line 213
    const-string v2, "expense"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0xb

    aput-boolean v6, v0, v2

    .line 214
    const-string v2, "deleteType"

    sget-object v3, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->FROM:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0xc

    aput-boolean v6, v0, v2

    .line 215
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->access$000(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 217
    const/16 v1, 0xd

    aput-boolean v6, v0, v1

    goto/16 :goto_0

    .line 222
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.expense.monthly.deleted"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-boolean v6, v0, v2

    .line 223
    const-string v2, "expense"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0xf

    aput-boolean v6, v0, v2

    .line 224
    const-string v2, "deleteType"

    sget-object v3, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->TO:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x10

    aput-boolean v6, v0, v2

    .line 225
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->access$000(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 227
    const/16 v1, 0x11

    aput-boolean v6, v0, v1

    goto/16 :goto_0

    .line 232
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.expense.monthly.deleted"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-boolean v6, v0, v2

    .line 233
    const-string v2, "expense"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x13

    aput-boolean v6, v0, v2

    .line 234
    const-string v2, "deleteType"

    sget-object v3, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->ALL:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x14

    aput-boolean v6, v0, v2

    .line 235
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->access$000(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 237
    const/16 v1, 0x15

    aput-boolean v6, v0, v1

    goto/16 :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

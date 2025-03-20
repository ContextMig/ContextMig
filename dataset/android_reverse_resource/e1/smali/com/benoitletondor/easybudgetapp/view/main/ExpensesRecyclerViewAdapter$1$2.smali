.class Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;
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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x60f723530d1e0b6bL    # -3.536784583878202E-159

    const-string v2, "com/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->$jacocoInit()[Z

    move-result-object v0

    .line 249
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

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

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->$jacocoInit()[Z

    move-result-object v0

    .line 252
    packed-switch p2, :pswitch_data_0

    aput-boolean v6, v0, v6

    .line 274
    :goto_0
    const/16 v1, 0x9

    aput-boolean v6, v0, v1

    return-void

    .line 256
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$viewHolder:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    .line 257
    const-string v2, "date"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v6, v0, v2

    .line 258
    const-string v2, "expense"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x4

    aput-boolean v6, v0, v2

    .line 260
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->access$000(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 262
    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 267
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.expense.deleted"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    .line 268
    const-string v2, "expense"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    .line 269
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->access$000(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 271
    const/16 v1, 0x8

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

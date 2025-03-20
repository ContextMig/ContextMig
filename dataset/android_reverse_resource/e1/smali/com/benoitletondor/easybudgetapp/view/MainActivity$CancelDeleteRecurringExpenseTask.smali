.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelDeleteRecurringExpenseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private final expensesToRestore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;"
        }
    .end annotation
.end field

.field private final recurringExpenseToRestore:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x378904737327bb83L    # 3.5898189269371173E-41

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/List;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V
    .locals 3
    .param p1    # Lcom/benoitletondor/easybudgetapp/view/MainActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;",
            "Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1338
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1339
    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->expensesToRestore:Ljava/util/List;

    .line 1340
    iput-object p3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->recurringExpenseToRestore:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    .line 1341
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/List;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1314
    invoke-direct {p0, p1, p2, p3}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/List;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V

    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v1

    .line 1361
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->recurringExpenseToRestore:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 1369
    :goto_0
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->expensesToRestore:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/model/Expense;

    const/16 v3, 0xe

    aput-boolean v4, v1, v3

    .line 1371
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v3, v0, v4}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    .line 1373
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    .line 1377
    :goto_2
    return-object v0

    .line 1361
    :cond_0
    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 1363
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v0, v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->recurringExpenseToRestore:Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    invoke-virtual {v0, v2}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->addRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 1365
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    goto :goto_2

    .line 1375
    :cond_2
    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    goto :goto_1

    .line 1377
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1314
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1384
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/16 v1, 0x13

    aput-boolean v5, v0, v1

    .line 1386
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    aput-boolean v5, v0, v1

    .line 1389
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$500(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/Date;)V

    const/16 v1, 0x15

    aput-boolean v5, v0, v1

    .line 1390
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$300(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v1

    const v2, 0x7f0800a1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    const/16 v1, 0x16

    aput-boolean v5, v0, v1

    .line 1407
    :goto_0
    const/16 v1, 0x1c

    aput-boolean v5, v0, v1

    return-void

    .line 1394
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800a0

    const/16 v3, 0x17

    aput-boolean v5, v0, v3

    .line 1395
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const/16 v3, 0x18

    aput-boolean v5, v0, v3

    .line 1396
    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080060

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask$1;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;)V

    const/16 v4, 0x19

    aput-boolean v5, v0, v4

    .line 1397
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x1a

    aput-boolean v5, v0, v2

    .line 1405
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/16 v1, 0x1b

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1314
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->onPostExecute(Ljava/lang/Boolean;)V

    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->$jacocoInit()[Z

    move-result-object v0

    .line 1349
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    aput-boolean v4, v0, v4

    .line 1350
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 1351
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 1352
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 1353
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 1354
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 1355
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1356
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void
.end method

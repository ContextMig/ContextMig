.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

.field final synthetic val$amountEditText:Landroid/widget/EditText;

.field final synthetic val$currentBalance:D


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2cf351868bb6affeL    # 3.704536019136267E-92

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$5"

    const/16 v3, 0x22

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Landroid/widget/EditText;D)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 558
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->val$amountEditText:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->val$currentBalance:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->$jacocoInit()[Z

    move-result-object v6

    .line 565
    :try_start_0
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->val$amountEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 567
    .local v4, "newBalance":D
    iget-wide v8, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->val$currentBalance:D

    cmpl-double v3, v4, v8

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    .line 573
    iget-wide v8, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->val$currentBalance:D

    sub-double v8, v4, v8

    const/4 v3, 0x3

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    .line 575
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f08002d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "balanceExpenseTitle":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v7, 0x4

    const/4 v10, 0x1

    aput-boolean v10, v6, v7

    .line 579
    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v7, v7, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v10}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getExpensesForDay(Ljava/util/Date;)Ljava/util/List;

    move-result-object v7

    const/4 v10, 0x5

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 580
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v7, 0x7

    const/4 v10, 0x1

    aput-boolean v10, v6, v7

    move-object v1, v3

    .line 592
    :goto_1
    if-eqz v1, :cond_3

    .line 594
    const/16 v3, 0xb

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    .line 596
    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAmount()D

    move-result-wide v10

    sub-double/2addr v10, v8

    invoke-virtual {v1, v10, v11}, Lcom/benoitletondor/easybudgetapp/model/Expense;->setAmount(D)V

    const/16 v3, 0xc

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    .line 597
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v3, v1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    const/16 v3, 0xd

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    .line 600
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;

    invoke-direct {v2, p0, v1, v8, v9}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;Lcom/benoitletondor/easybudgetapp/model/Expense;D)V

    .line 611
    .local v2, "listener":Landroid/view/View$OnClickListener;
    const/16 v3, 0xe

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    .line 630
    .end local v2    # "listener":Landroid/view/View$OnClickListener;
    :goto_2
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v7}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$500(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/Date;)V

    const/16 v3, 0x12

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    .line 631
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/16 v3, 0x13

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    .line 634
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$300(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v3

    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v7}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08002f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v11, v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedCurrencyString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    const/16 v7, 0x14

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 635
    const v7, 0x7f0800d5

    invoke-virtual {v3, v7, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    const/16 v7, 0x15

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 636
    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    const v8, 0x7f0e0072

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    const/16 v7, 0x16

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 638
    const/16 v7, 0x1388

    invoke-virtual {v3, v7}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;

    const/16 v7, 0x17

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 639
    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    const/16 v3, 0x18

    aput-boolean v12, v6, v3

    .line 659
    .end local v0    # "balanceExpenseTitle":Ljava/lang/String;
    :goto_3
    const/16 v3, 0x21

    aput-boolean v12, v6, v3

    :goto_4
    return-void

    .line 570
    :cond_0
    const/4 v3, 0x2

    aput-boolean v12, v6, v3

    goto :goto_4

    .line 580
    .restart local v0    # "balanceExpenseTitle":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/benoitletondor/easybudgetapp/model/Expense;

    const/16 v10, 0x8

    const/4 v11, 0x1

    aput-boolean v11, v6, v10

    .line 582
    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 585
    .local v1, "expense":Lcom/benoitletondor/easybudgetapp/model/Expense;
    const/16 v3, 0x9

    const/4 v7, 0x1

    aput-boolean v7, v6, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 641
    .end local v0    # "balanceExpenseTitle":Ljava/lang/String;
    .end local v1    # "expense":Lcom/benoitletondor/easybudgetapp/model/Expense;
    :catch_0
    move-exception v3

    const/16 v7, 0x19

    aput-boolean v12, v6, v7

    .line 643
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f08002c

    const/16 v9, 0x1a

    aput-boolean v12, v6, v9

    .line 644
    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08002b

    const/16 v9, 0x1b

    aput-boolean v12, v6, v9

    .line 645
    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080060

    new-instance v9, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$3;

    invoke-direct {v9, p0}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;)V

    const/16 v10, 0x1c

    aput-boolean v12, v6, v10

    .line 646
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const/16 v8, 0x1d

    aput-boolean v12, v6, v8

    .line 654
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/16 v7, 0x1e

    aput-boolean v12, v6, v7

    .line 656
    const-string v7, "An error occurred during balance"

    invoke-static {v7, v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v3, 0x1f

    aput-boolean v12, v6, v3

    .line 657
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/16 v3, 0x20

    aput-boolean v12, v6, v3

    goto :goto_3

    .line 587
    .restart local v0    # "balanceExpenseTitle":Ljava/lang/String;
    :cond_2
    const/16 v10, 0xa

    const/4 v11, 0x1

    :try_start_2
    aput-boolean v11, v6, v10

    goto/16 :goto_0

    .line 614
    :cond_3
    new-instance v3, Lcom/benoitletondor/easybudgetapp/model/Expense;

    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-virtual {v7}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f08002d

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    neg-double v8, v8

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Ljava/lang/String;DLjava/util/Date;)V

    const/16 v7, 0xf

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 615
    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v7, v7, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v7, v3}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    const/16 v7, 0x10

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 618
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$2;

    invoke-direct {v2, p0, v3}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;Lcom/benoitletondor/easybudgetapp/model/Expense;)V

    const/16 v3, 0x11

    const/4 v7, 0x1

    aput-boolean v7, v6, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

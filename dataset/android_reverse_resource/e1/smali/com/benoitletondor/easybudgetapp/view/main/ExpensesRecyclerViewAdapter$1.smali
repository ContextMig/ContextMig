.class Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "ExpensesRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->onBindViewHolder(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

.field final synthetic val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

.field final synthetic val$viewHolder:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5d9286a4665b54ccL    # 5.647787617277534E142

    const-string v2, "com/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;Lcom/benoitletondor/easybudgetapp/model/Expense;Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 175
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    iput-object p3, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$viewHolder:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->$jacocoInit()[Z

    move-result-object v1

    .line 179
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRecurring()Z

    move-result v0

    if-eqz v0, :cond_2

    aput-boolean v4, v1, v4

    .line 181
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->access$000(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 182
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRevenue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080043

    const/4 v3, 0x3

    aput-boolean v4, v1, v3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 183
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRevenue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090003

    const/4 v3, 0x6

    aput-boolean v4, v1, v3

    :goto_1
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;)V

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 242
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 243
    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 279
    :goto_2
    const/16 v0, 0x12

    aput-boolean v4, v1, v0

    return-void

    .line 182
    :cond_0
    const v0, 0x7f080042

    const/4 v3, 0x4

    aput-boolean v4, v1, v3

    goto :goto_0

    .line 183
    :cond_1
    const v0, 0x7f090002

    const/4 v3, 0x7

    aput-boolean v4, v1, v3

    goto :goto_1

    .line 246
    :cond_2
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->access$000(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 247
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRevenue()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080041

    const/16 v3, 0xb

    aput-boolean v4, v1, v3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 248
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRevenue()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f090001

    const/16 v3, 0xe

    aput-boolean v4, v1, v3

    :goto_4
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter$1;)V

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v0, 0x10

    aput-boolean v4, v1, v0

    .line 276
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    goto :goto_2

    .line 247
    :cond_3
    const v0, 0x7f080040

    const/16 v3, 0xc

    aput-boolean v4, v1, v3

    goto :goto_3

    .line 248
    :cond_4
    const/high16 v0, 0x7f090000

    const/16 v3, 0xf

    aput-boolean v4, v1, v3

    goto :goto_4
.end method

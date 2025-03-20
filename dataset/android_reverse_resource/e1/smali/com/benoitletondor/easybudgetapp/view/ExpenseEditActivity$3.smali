.class Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;
.super Ljava/lang/Object;
.source "ExpenseEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setUpButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x67b00d9130772690L

    const-string v2, "com/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 233
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->$jacocoInit()[Z

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$400(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    aput-boolean v6, v1, v6

    .line 259
    :goto_0
    const/16 v2, 0x11

    aput-boolean v6, v1, v2

    return-void

    .line 237
    :cond_0
    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    .line 239
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$500(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x3

    aput-boolean v6, v1, v4

    .line 242
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$600(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Lcom/benoitletondor/easybudgetapp/model/Expense;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x4

    aput-boolean v6, v1, v4

    .line 244
    new-instance v0, Lcom/benoitletondor/easybudgetapp/model/Expense;

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    neg-double v2, v2

    const/4 v5, 0x5

    aput-boolean v6, v1, v5

    :goto_1
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$700(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Ljava/util/Date;

    move-result-object v5

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Ljava/lang/String;DLjava/util/Date;)V

    .local v0, "expenseToSave":Lcom/benoitletondor/easybudgetapp/model/Expense;
    const/4 v2, 0x7

    aput-boolean v6, v1, v2

    .line 254
    .end local v0    # "expenseToSave":Lcom/benoitletondor/easybudgetapp/model/Expense;
    :goto_2
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v2, v0}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    const/16 v2, 0xe

    aput-boolean v6, v1, v2

    .line 256
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->setResult(I)V

    const/16 v2, 0xf

    aput-boolean v6, v1, v2

    .line 257
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->finish()V

    const/16 v2, 0x10

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 244
    :cond_1
    const/4 v5, 0x6

    aput-boolean v6, v1, v5

    goto :goto_1

    .line 248
    :cond_2
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$600(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Lcom/benoitletondor/easybudgetapp/model/Expense;

    move-result-object v0

    const/16 v4, 0x8

    aput-boolean v6, v1, v4

    .line 249
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/benoitletondor/easybudgetapp/model/Expense;->setTitle(Ljava/lang/String;)V

    const/16 v4, 0x9

    aput-boolean v6, v1, v4

    .line 250
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    neg-double v2, v2

    const/16 v4, 0xa

    aput-boolean v6, v1, v4

    :goto_3
    invoke-virtual {v0, v2, v3}, Lcom/benoitletondor/easybudgetapp/model/Expense;->setAmount(D)V

    const/16 v2, 0xc

    aput-boolean v6, v1, v2

    .line 251
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$700(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/benoitletondor/easybudgetapp/model/Expense;->setDate(Ljava/util/Date;)V

    const/16 v2, 0xd

    aput-boolean v6, v1, v2

    goto :goto_2

    .line 250
    :cond_3
    const/16 v4, 0xb

    aput-boolean v6, v1, v4

    goto :goto_3
.end method

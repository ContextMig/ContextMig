.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;

.field final synthetic val$diff:D

.field final synthetic val$persistedExpense:Lcom/benoitletondor/easybudgetapp/model/Expense;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x677de2d7310f3614L    # 3.3289438130791155E190

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$5$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;Lcom/benoitletondor/easybudgetapp/model/Expense;D)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->$jacocoInit()[Z

    move-result-object v0

    .line 601
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->val$persistedExpense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    iput-wide p3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->val$diff:D

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

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->$jacocoInit()[Z

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->val$persistedExpense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->val$persistedExpense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAmount()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->val$diff:D

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/model/Expense;->setAmount(D)V

    aput-boolean v6, v0, v6

    .line 606
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->val$persistedExpense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 608
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$5;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$500(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/Date;)V

    .line 609
    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    return-void
.end method

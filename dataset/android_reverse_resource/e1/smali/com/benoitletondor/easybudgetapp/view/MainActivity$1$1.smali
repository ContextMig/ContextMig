.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;

.field final synthetic val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

.field final synthetic val$position:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x492c45d4636b5fd1L    # -1.382186712346858E-44

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$1$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;Lcom/benoitletondor/easybudgetapp/model/Expense;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 189
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    iput p3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->val$position:I

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

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v1, v2, v4}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;Z)Z

    aput-boolean v4, v0, v4

    .line 195
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getSelectedDate()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->getSelectedDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$100(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/Date;)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 201
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarFragment;->refreshView()V

    .line 202
    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    return-void

    .line 195
    :cond_0
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 197
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/MainActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/MainActivity;)Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->val$expense:Lcom/benoitletondor/easybudgetapp/model/Expense;

    iget v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$1$1;->val$position:I

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/view/main/ExpensesRecyclerViewAdapter;->addExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;I)V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

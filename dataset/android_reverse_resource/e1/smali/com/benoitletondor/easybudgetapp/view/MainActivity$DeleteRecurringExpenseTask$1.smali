.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5c3fc08e68e3f127L    # -1.74641422085074E-136

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;->$jacocoInit()[Z

    move-result-object v0

    .line 1287
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;

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

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;->$jacocoInit()[Z

    move-result-object v0

    .line 1291
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->this$0:Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->access$800(Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;->access$900(Lcom/benoitletondor/easybudgetapp/view/MainActivity$DeleteRecurringExpenseTask;)Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;-><init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity;Ljava/util/List;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Lcom/benoitletondor/easybudgetapp/view/MainActivity$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1292
    aput-boolean v6, v0, v6

    return-void
.end method

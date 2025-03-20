.class Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;
.super Ljava/lang/Object;
.source "RecurringExpenseEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setUpButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6b79341d5d741873L    # -8.667618993701009E-210

    const-string v2, "com/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 239
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->$jacocoInit()[Z

    move-result-object v6

    .line 243
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$400(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    aput-boolean v8, v6, v8

    .line 251
    :goto_0
    const/16 v0, 0x8

    aput-boolean v8, v6, v0

    return-void

    .line 243
    :cond_0
    const/4 v0, 0x2

    aput-boolean v8, v6, v0

    .line 245
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$500(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v0, 0x3

    aput-boolean v8, v6, v0

    .line 247
    new-instance v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$200(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    neg-double v2, v2

    const/4 v4, 0x4

    aput-boolean v8, v6, v4

    :goto_1
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$600(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v7}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$700(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Landroid/widget/Spinner;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-static {v5, v7}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$800(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;I)Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;-><init>(Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;)V

    const/4 v1, 0x6

    aput-boolean v8, v6, v1

    .line 249
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$3;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;-><init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$1;)V

    new-array v2, v8, [Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$SaveRecurringExpenseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x7

    aput-boolean v8, v6, v0

    goto :goto_0

    .line 247
    :cond_1
    const/4 v4, 0x5

    aput-boolean v8, v6, v4

    goto :goto_1
.end method

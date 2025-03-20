.class Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4$1;
.super Ljava/lang/Object;
.source "ExpenseEditActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x22bd8e950acb48f1L    # -1.757035158302163E141

    const-string v2, "com/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4$1;->$jacocoInit()[Z

    move-result-object v0

    .line 324
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4$1;->$jacocoInit()[Z

    move-result-object v0

    .line 328
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    aput-boolean v3, v0, v3

    .line 330
    invoke-virtual {v1, v3, p2}, Ljava/util/Calendar;->set(II)V

    aput-boolean v3, v0, v2

    .line 331
    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 332
    invoke-virtual {v1, v4, p4}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 334
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$702(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;Ljava/util/Date;)Ljava/util/Date;

    aput-boolean v3, v0, v4

    .line 335
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$800(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)V

    .line 336
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method

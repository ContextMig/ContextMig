.class Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;
.super Ljava/lang/Object;
.source "RecurringExpenseEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->setUpDateButton()V
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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1bef336218da1ca6L

    const-string v2, "com/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;->$jacocoInit()[Z

    move-result-object v0

    .line 355
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

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

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;->$jacocoInit()[Z

    move-result-object v0

    .line 359
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$600(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)Ljava/util/Date;

    move-result-object v2

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4$1;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;)V

    invoke-direct {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;-><init>(Ljava/util/Date;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    aput-boolean v4, v0, v4

    .line 375
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "datePicker"

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/view/DatePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 376
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method

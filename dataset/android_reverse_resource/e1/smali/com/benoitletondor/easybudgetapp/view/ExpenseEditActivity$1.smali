.class Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpenseEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->onCreate(Landroid/os/Bundle;)V
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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x65514ac84c5a633L

    const-string v2, "com/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$000(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->setFocus(Landroid/widget/EditText;)V

    aput-boolean v2, v0, v2

    .line 124
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity$1;->this$0:Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;->access$100(Lcom/benoitletondor/easybudgetapp/view/ExpenseEditActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->showFAB(Landroid/view/View;)V

    .line 125
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

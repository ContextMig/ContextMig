.class Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2;
.super Ljava/lang/Object;
.source "RecurringExpenseEditActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x53d93da23dd4f34aL    # -5.32757052312697E-96

    const-string v2, "com/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 221
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v1, p2}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$202(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;Z)Z

    aput-boolean v2, v0, v2

    .line 226
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;->access$300(Lcom/benoitletondor/easybudgetapp/view/RecurringExpenseEditActivity;)V

    .line 227
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

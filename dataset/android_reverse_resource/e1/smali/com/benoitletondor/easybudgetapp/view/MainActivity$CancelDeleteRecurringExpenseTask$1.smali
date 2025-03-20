.class Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7619dd8a4bafd455L    # 7.953811938345325E260

    const-string v2, "com/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask$1;->$jacocoInit()[Z

    move-result-object v0

    .line 1398
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask$1;->this$1:Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/MainActivity$CancelDeleteRecurringExpenseTask$1;->$jacocoInit()[Z

    move-result-object v0

    .line 1402
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1403
    aput-boolean v1, v0, v1

    return-void
.end method

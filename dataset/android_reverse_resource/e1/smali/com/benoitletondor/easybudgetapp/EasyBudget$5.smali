.class Lcom/benoitletondor/easybudgetapp/EasyBudget$5;
.super Ljava/lang/Object;
.source "EasyBudget.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/EasyBudget;->setUpBatchSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7efabb0847605719L    # -9.692364162119454E-304

    const-string v2, "com/benoitletondor/easybudgetapp/EasyBudget$5"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->$jacocoInit()[Z

    move-result-object v0

    .line 489
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->$jacocoInit()[Z

    move-result-object v0

    .line 494
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->$jacocoInit()[Z

    move-result-object v0

    .line 529
    invoke-static {p1}, Lcom/batch/android/Batch;->onDestroy(Landroid/app/Activity;)V

    .line 530
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->$jacocoInit()[Z

    move-result-object v0

    .line 512
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->$jacocoInit()[Z

    move-result-object v0

    .line 506
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->$jacocoInit()[Z

    move-result-object v0

    .line 524
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->$jacocoInit()[Z

    move-result-object v0

    .line 499
    invoke-static {p1}, Lcom/batch/android/Batch;->onStart(Landroid/app/Activity;)V

    .line 500
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$5;->$jacocoInit()[Z

    move-result-object v0

    .line 517
    invoke-static {p1}, Lcom/batch/android/Batch;->onStop(Landroid/app/Activity;)V

    .line 518
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.class Lcom/benoitletondor/easybudgetapp/EasyBudget$1;
.super Ljava/lang/Object;
.source "EasyBudget.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/EasyBudget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private activityCounter:I

.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5f215ef07a894152L    # -2.33925207497517E-150

    const-string v2, "com/benoitletondor/easybudgetapp/EasyBudget$1"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->$jacocoInit()[Z

    move-result-object v0

    .line 234
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput v2, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->activityCounter:I

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->$jacocoInit()[Z

    move-result-object v0

    .line 241
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->$jacocoInit()[Z

    move-result-object v0

    .line 287
    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->$jacocoInit()[Z

    move-result-object v0

    .line 264
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->$jacocoInit()[Z

    move-result-object v0

    .line 258
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->$jacocoInit()[Z

    move-result-object v0

    .line 281
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->$jacocoInit()[Z

    move-result-object v0

    .line 246
    iget v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->activityCounter:I

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 251
    :goto_0
    iget v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->activityCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->activityCounter:I

    .line 252
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void

    .line 246
    :cond_0
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 248
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-static {v1, p1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$000(Lcom/benoitletondor/easybudgetapp/EasyBudget;Landroid/app/Activity;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->$jacocoInit()[Z

    move-result-object v0

    .line 269
    iget v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->activityCounter:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 274
    :goto_0
    iget v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->activityCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->activityCounter:I

    .line 275
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    return-void

    .line 269
    :cond_0
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 271
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$1;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$100(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

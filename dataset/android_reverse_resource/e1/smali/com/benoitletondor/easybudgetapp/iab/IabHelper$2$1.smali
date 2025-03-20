.class Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;

.field final synthetic val$inv_f:Lcom/benoitletondor/easybudgetapp/iab/Inventory;

.field final synthetic val$result_f:Lcom/benoitletondor/easybudgetapp/iab/IabResult;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x37f698c66b7b2ef6L    # 4.150372573496881E-39

    const-string v2, "com/benoitletondor/easybudgetapp/iab/IabHelper$2$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Inventory;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;->$jacocoInit()[Z

    move-result-object v0

    .line 665
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;->this$1:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;->val$result_f:Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    iput-object p3, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;->val$inv_f:Lcom/benoitletondor/easybudgetapp/iab/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;->$jacocoInit()[Z

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;->this$1:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->val$listener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;->val$result_f:Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;->val$inv_f:Lcom/benoitletondor/easybudgetapp/iab/Inventory;

    invoke-interface {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Inventory;)V

    .line 668
    aput-boolean v4, v0, v4

    return-void
.end method

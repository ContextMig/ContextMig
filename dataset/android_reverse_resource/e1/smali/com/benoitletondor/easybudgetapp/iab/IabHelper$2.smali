.class Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x46b7e96a8e1eb19bL    # 4.849885599732667E32

    const-string v2, "com/benoitletondor/easybudgetapp/iab/IabHelper$2"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/iab/IabHelper;ZLjava/util/List;Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->$jacocoInit()[Z

    move-result-object v0

    .line 649
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    iput-boolean p2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->val$listener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->$jacocoInit()[Z

    move-result-object v5

    .line 651
    new-instance v2, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const/4 v4, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v2, v4, v6}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 652
    .local v2, "result":Lcom/benoitletondor/easybudgetapp/iab/IabResult;
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v5, v4

    .line 654
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    iget-boolean v6, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v4, v6, v7}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/benoitletondor/easybudgetapp/iab/Inventory;
    :try_end_0
    .catch Lcom/benoitletondor/easybudgetapp/iab/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 658
    .local v0, "inv":Lcom/benoitletondor/easybudgetapp/iab/Inventory;
    const/4 v4, 0x2

    aput-boolean v8, v5, v4

    move-object v1, v0

    .line 660
    .end local v0    # "inv":Lcom/benoitletondor/easybudgetapp/iab/Inventory;
    :goto_0
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    invoke-virtual {v4}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->flagEndAsync()V

    .line 662
    move-object v3, v2

    .line 664
    .local v1, "inv_f":Lcom/benoitletondor/easybudgetapp/iab/Inventory;
    .local v3, "result_f":Lcom/benoitletondor/easybudgetapp/iab/IabResult;
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    iget-boolean v4, v4, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mDisposed:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    aput-boolean v8, v5, v4

    .line 671
    :goto_1
    const/16 v4, 0x9

    aput-boolean v8, v5, v4

    return-void

    .line 656
    .end local v1    # "inv_f":Lcom/benoitletondor/easybudgetapp/iab/Inventory;
    .end local v3    # "result_f":Lcom/benoitletondor/easybudgetapp/iab/IabResult;
    :catch_0
    move-exception v4

    const/4 v6, 0x3

    aput-boolean v8, v5, v6

    .line 657
    invoke-virtual {v4}, Lcom/benoitletondor/easybudgetapp/iab/IabException;->getResult()Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    move-result-object v2

    const/4 v4, 0x4

    aput-boolean v8, v5, v4

    goto :goto_0

    .line 664
    .restart local v1    # "inv_f":Lcom/benoitletondor/easybudgetapp/iab/Inventory;
    .restart local v3    # "result_f":Lcom/benoitletondor/easybudgetapp/iab/IabResult;
    :cond_0
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->val$listener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;

    if-nez v4, :cond_1

    const/4 v4, 0x6

    aput-boolean v8, v5, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x7

    aput-boolean v8, v5, v4

    .line 665
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;

    invoke-direct {v6, p0, v3, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2$1;-><init>(Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Inventory;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v4, 0x8

    aput-boolean v8, v5, v4

    goto :goto_1
.end method

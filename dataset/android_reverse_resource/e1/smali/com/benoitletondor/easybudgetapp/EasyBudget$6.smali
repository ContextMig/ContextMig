.class Lcom/benoitletondor/easybudgetapp/EasyBudget$6;
.super Ljava/lang/Object;
.source "EasyBudget.java"

# interfaces
.implements Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/EasyBudget;->setupIab()V
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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x560e7f569c4b3b11L    # 3.497288991579665E106

    const-string v2, "com/benoitletondor/easybudgetapp/EasyBudget$6"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;->$jacocoInit()[Z

    move-result-object v0

    .line 680
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Inventory;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;->$jacocoInit()[Z

    move-result-object v1

    .line 684
    const-string v0, "iab query inventory finished."

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    aput-boolean v4, v1, v4

    .line 687
    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while querying iab inventory: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 690
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$202(Lcom/benoitletondor/easybudgetapp/EasyBudget;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 691
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    sget-object v2, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->ERROR:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-static {v0, v2}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$300(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)V

    .line 692
    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 703
    :goto_0
    return-void

    .line 699
    :cond_0
    const-string v0, "premium"

    invoke-virtual {p2, v0}, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->getPurchase(Ljava/lang/String;)Lcom/benoitletondor/easybudgetapp/iab/Purchase;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    .line 700
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const/4 v3, 0x7

    aput-boolean v4, v1, v3

    :goto_1
    invoke-static {v2, v0}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$300(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)V

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iab query inventory was successful: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$6;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$400(Lcom/benoitletondor/easybudgetapp/EasyBudget;)Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 703
    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 700
    :cond_1
    sget-object v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->NOT_PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const/16 v3, 0x8

    aput-boolean v4, v1, v3

    goto :goto_1
.end method

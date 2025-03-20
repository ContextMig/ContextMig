.class Lcom/benoitletondor/easybudgetapp/EasyBudget$8;
.super Ljava/lang/Object;
.source "EasyBudget.java"

# interfaces
.implements Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/EasyBudget;->launchPremiumPurchaseFlow(Landroid/app/Activity;Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

.field final synthetic val$listener:Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3ce448abf3296fecL    # -1.950348997927941E15

    const-string v2, "com/benoitletondor/easybudgetapp/EasyBudget$8"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->$jacocoInit()[Z

    move-result-object v0

    .line 831
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->val$listener:Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->$jacocoInit()[Z

    move-result-object v0

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    .line 838
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$700(Lcom/benoitletondor/easybudgetapp/EasyBudget;)Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 868
    :goto_0
    return-void

    .line 840
    :cond_0
    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while purchasing premium: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 843
    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->getResponse()I

    move-result v1

    const/16 v2, -0x3ed

    if-ne v1, v2, :cond_1

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 845
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->val$listener:Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;

    invoke-interface {v1}, Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;->onUserCancelled()V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 852
    :goto_1
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->val$listener:Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;->onPurchaseError(Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 857
    :cond_2
    const-string v1, "Purchase successful."

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 859
    invoke-virtual {p2}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    const-string v2, "premium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 861
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    sget-object v2, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$402(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 862
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->val$listener:Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;

    invoke-interface {v1}, Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;->onPurchaseSuccess()V

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 868
    :goto_2
    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 866
    :cond_3
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$8;->val$listener:Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;

    const-string v2, "Unknown SKU"

    invoke-interface {v1, v2}, Lcom/benoitletondor/easybudgetapp/PremiumPurchaseListener;->onPurchaseError(Ljava/lang/String;)V

    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    goto :goto_2
.end method

.class Lcom/benoitletondor/easybudgetapp/EasyBudget$7;
.super Ljava/lang/Object;
.source "EasyBudget.java"

# interfaces
.implements Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;


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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x26cd6b8143960570L    # 8.90089267814014E-122

    const-string v2, "com/benoitletondor/easybudgetapp/EasyBudget$7"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/EasyBudget;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->$jacocoInit()[Z

    move-result-object v0

    .line 707
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->$jacocoInit()[Z

    move-result-object v0

    .line 710
    const-string v1, "iab setup finished."

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    .line 712
    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 715
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    sget-object v2, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->ERROR:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$300(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while setting-up iab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 717
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$202(Lcom/benoitletondor/easybudgetapp/EasyBudget;Ljava/lang/String;)Ljava/lang/String;

    .line 718
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 734
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    sget-object v2, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->CHECKING:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$300(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 727
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-direct {v2, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;-><init>(Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver$IabBroadcastListener;)V

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$502(Lcom/benoitletondor/easybudgetapp/EasyBudget;Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;)Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 728
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    .line 729
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$500(Lcom/benoitletondor/easybudgetapp/EasyBudget;)Lcom/benoitletondor/easybudgetapp/iab/IabBroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 732
    const-string v1, "iab setup successful. Querying inventory."

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    .line 733
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$700(Lcom/benoitletondor/easybudgetapp/EasyBudget;)Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/EasyBudget$7;->this$0:Lcom/benoitletondor/easybudgetapp/EasyBudget;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->access$600(Lcom/benoitletondor/easybudgetapp/EasyBudget;)Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->queryInventoryAsync(Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;)V

    .line 734
    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

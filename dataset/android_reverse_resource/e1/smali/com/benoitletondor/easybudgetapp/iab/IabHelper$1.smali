.class Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->startSetup(Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

.field final synthetic val$listener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x414323a3b2a8e7dbL    # -1.7202367435949816E-6

    const-string v2, "com/benoitletondor/easybudgetapp/iab/IabHelper$1"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/iab/IabHelper;Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->$jacocoInit()[Z

    move-result-object v0

    .line 213
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->val$listener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->$jacocoInit()[Z

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    iget-boolean v1, v1, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mDisposed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    .line 277
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    const-string v2, "Billing service connected."

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    .line 225
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    .line 227
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    iput-boolean v5, v1, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSetupDone:Z

    .line 272
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->val$listener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;

    if-nez v1, :cond_1

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    .line 277
    :goto_1
    const/16 v1, 0x8

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    .line 273
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->val$listener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;)V

    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->$jacocoInit()[Z

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;->this$0:Lcom/benoitletondor/easybudgetapp/iab/IabHelper;

    const-string v2, "Billing service disconnected."

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 218
    aput-boolean v3, v0, v3

    return-void
.end method

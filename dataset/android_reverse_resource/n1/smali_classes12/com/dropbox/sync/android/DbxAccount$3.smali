.class Lcom/dropbox/sync/android/DbxAccount$3;
.super Ljava/lang/Object;
.source "DbxAccount.java"

# interfaces
.implements Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxAccount;->doInitializeEnv(Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/sync/android/CoreAccountManager;)Lcom/dropbox/sync/android/NativeEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxAccount;

.field final synthetic val$acctMgr:Lcom/dropbox/sync/android/CoreAccountManager;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/CoreAccountManager;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccount$3;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    iput-object p2, p0, Lcom/dropbox/sync/android/DbxAccount$3;->val$acctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshBatteryAndChargingState()V
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getInstance()Lcom/dropbox/sync/android/CoreNetworkStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount$3;->val$acctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreAccountManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/CoreNetworkStatus;->updateNetworkStatus(Landroid/content/Context;)V

    .line 199
    return-void
.end method

.method public refreshNetworkState()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->getInstance()Lcom/dropbox/sync/android/CoreBatteryStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount$3;->val$acctMgr:Lcom/dropbox/sync/android/CoreAccountManager;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreAccountManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->refreshState(Landroid/content/Context;)Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    .line 194
    return-void
.end method

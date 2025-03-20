.class Lcom/dropbox/sync/android/DbxAccount$2;
.super Ljava/lang/Object;
.source "DbxAccount.java"

# interfaces
.implements Lcom/dropbox/sync/android/CoreBatteryStateManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxAccount;-><init>(Lcom/dropbox/sync/android/CoreAccountManager;Lcom/dropbox/sync/android/CoreConfig;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/DbxAccountInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxAccount;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccount$2;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChanged()V
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccount$2;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    monitor-enter v2

    .line 156
    :try_start_0
    invoke-static {}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->getInstance()Lcom/dropbox/sync/android/CoreBatteryStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreBatteryStateManager;->getState()Lcom/dropbox/sync/android/CoreBatteryStateManager$State;

    move-result-object v0

    .line 157
    .local v0, "state":Lcom/dropbox/sync/android/CoreBatteryStateManager$State;
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccount$2;->this$0:Lcom/dropbox/sync/android/DbxAccount;

    invoke-static {v1, v0}, Lcom/dropbox/sync/android/DbxAccount;->access$100(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/CoreBatteryStateManager$State;)V

    .line 158
    monitor-exit v2

    .line 159
    return-void

    .line 158
    .end local v0    # "state":Lcom/dropbox/sync/android/CoreBatteryStateManager$State;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

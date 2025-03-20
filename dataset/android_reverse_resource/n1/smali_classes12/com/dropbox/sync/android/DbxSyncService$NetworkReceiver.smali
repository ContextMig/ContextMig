.class Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DbxSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxSyncService;


# direct methods
.method private constructor <init>(Lcom/dropbox/sync/android/DbxSyncService;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;->this$0:Lcom/dropbox/sync/android/DbxSyncService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxSyncService;Lcom/dropbox/sync/android/DbxSyncService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxSyncService;
    .param p2, "x1"    # Lcom/dropbox/sync/android/DbxSyncService$1;

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;-><init>(Lcom/dropbox/sync/android/DbxSyncService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    :cond_0
    invoke-static {}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getInstance()Lcom/dropbox/sync/android/CoreNetworkStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;->this$0:Lcom/dropbox/sync/android/DbxSyncService;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/CoreNetworkStatus;->updateNetworkStatus(Landroid/content/Context;)V

    .line 361
    :cond_1
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;->this$0:Lcom/dropbox/sync/android/DbxSyncService;

    invoke-virtual {v1, p0, v0}, Lcom/dropbox/sync/android/DbxSyncService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;->this$0:Lcom/dropbox/sync/android/DbxSyncService;

    invoke-virtual {v0, p0}, Lcom/dropbox/sync/android/DbxSyncService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 378
    return-void
.end method

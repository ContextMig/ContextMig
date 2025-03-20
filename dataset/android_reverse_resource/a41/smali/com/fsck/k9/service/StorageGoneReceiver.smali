.class public Lcom/fsck/k9/service/StorageGoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageGoneReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 26
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v3, "StorageGoneReceiver: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "path":Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    invoke-static {p1}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/fsck/k9/mailstore/StorageManager;->onBeforeUnmount(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-static {p1}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/fsck/k9/mailstore/StorageManager;->onAfterUnmount(Ljava/lang/String;)V

    goto :goto_0
.end method

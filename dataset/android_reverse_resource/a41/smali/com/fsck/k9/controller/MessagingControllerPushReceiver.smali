.class public Lcom/fsck/k9/controller/MessagingControllerPushReceiver;
.super Ljava/lang/Object;
.source "MessagingControllerPushReceiver.java"

# interfaces
.implements Lcom/fsck/k9/mail/PushReceiver;


# instance fields
.field final account:Lcom/fsck/k9/Account;

.field final context:Landroid/content/Context;

.field final controller:Lcom/fsck/k9/controller/MessagingController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nAccount"    # Lcom/fsck/k9/Account;
    .param p3, "nController"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;

    .line 27
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/controller/MessagingController;

    .line 28
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->context:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public authenticationFailed()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lcom/fsck/k9/Account;Z)V

    .line 88
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getPushState(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "localFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v2

    .line 94
    .local v2, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v2, p1}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 95
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 96
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getPushState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 101
    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    .line 99
    .end local v2    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :cond_0
    :goto_0
    return-object v3

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Unable to get push state from account %s, folder %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    const/4 v3, 0x0

    .line 101
    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    :cond_1
    throw v3
.end method

.method public messagesArrived(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    .locals 3
    .param p1, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/fsck/k9/controller/MessagingController;->messagesArrived(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Z)V

    .line 37
    return-void
.end method

.method public messagesFlagsChanged(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    .locals 3
    .param p1, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/fsck/k9/controller/MessagingController;->messagesArrived(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Z)V

    .line 34
    return-void
.end method

.method public messagesRemoved(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    .locals 3
    .param p1, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/fsck/k9/controller/MessagingController;->messagesArrived(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Z)V

    .line 40
    return-void
.end method

.method public pushError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 76
    move-object v0, p1

    .line 78
    .local v0, "errMess":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lcom/fsck/k9/Account;Ljava/lang/Exception;Z)V

    .line 79
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public setPushActive(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 108
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    .line 109
    .local v0, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;

    invoke-interface {v0, v2, p1, p2}, Lcom/fsck/k9/controller/MessagingListener;->setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 111
    .end local v0    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_0
    return-void
.end method

.method public sleep(Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;J)V
    .locals 6
    .param p1, "wakeLock"    # Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    .param p2, "millis"    # J

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->context:Landroid/content/Context;

    const-wide/32 v4, 0xea60

    move-wide v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/service/SleepService;->sleep(Landroid/content/Context;JLcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;J)V

    .line 73
    return-void
.end method

.method public syncFolder(Lcom/fsck/k9/mail/Folder;)V
    .locals 8
    .param p1, "folder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 43
    const-string v2, "syncFolder(%s)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 46
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fsck/k9/controller/MessagingControllerPushReceiver$1;

    invoke-direct {v5, p0, v1}, Lcom/fsck/k9/controller/MessagingControllerPushReceiver$1;-><init>(Lcom/fsck/k9/controller/MessagingControllerPushReceiver;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V

    .line 60
    const-string v2, "syncFolder(%s) about to await latch release"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 64
    const-string v2, "syncFolder(%s) got latch release"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Interrupted while awaiting latch release"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

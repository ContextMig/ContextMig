.class Lcom/fsck/k9/mail/store/imap/ImapPusher;
.super Ljava/lang/Object;
.source "ImapPusher.java"

# interfaces
.implements Lcom/fsck/k9/mail/Pusher;


# instance fields
.field private final folderPushers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;",
            ">;"
        }
    .end annotation
.end field

.field private lastRefresh:J

.field private final pushReceiver:Lcom/fsck/k9/mail/PushReceiver;

.field private final store:Lcom/fsck/k9/mail/store/imap/ImapStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Lcom/fsck/k9/mail/PushReceiver;)V
    .locals 2
    .param p1, "store"    # Lcom/fsck/k9/mail/store/imap/ImapStore;
    .param p2, "pushReceiver"    # Lcom/fsck/k9/mail/PushReceiver;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->folderPushers:Ljava/util/List;

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->lastRefresh:J

    .line 23
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    .line 24
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->pushReceiver:Lcom/fsck/k9/mail/PushReceiver;

    .line 25
    return-void
.end method


# virtual methods
.method createImapFolderPusher(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->pushReceiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-direct {v0, v1, p1, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;-><init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/PushReceiver;)V

    return-object v0
.end method

.method currentTimeMillis()J
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRefresh()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->lastRefresh:J

    return-wide v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/fsck/k9/mail/store/StoreConfig;->getIdleRefreshMinutes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public refresh()V
    .locals 8

    .prologue
    .line 45
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->folderPushers:Ljava/util/List;

    monitor-enter v3

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->folderPushers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .local v1, "folderPusher":Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    :try_start_1
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->refresh()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Got exception while refreshing for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "folderPusher":Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    return-void
.end method

.method public setLastRefresh(J)V
    .locals 1
    .param p1, "lastRefresh"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->lastRefresh:J

    .line 92
    return-void
.end method

.method public start(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "folderNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->folderPushers:Ljava/util/List;

    monitor-enter v3

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapPusher;->stop()V

    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapPusher;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/fsck/k9/mail/store/imap/ImapPusher;->setLastRefresh(J)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    .local v0, "folderName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapPusher;->createImapFolderPusher(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-result-object v1

    .line 36
    .local v1, "pusher":Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->folderPushers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->start()V

    goto :goto_0

    .line 40
    .end local v0    # "folderName":Ljava/lang/String;
    .end local v1    # "pusher":Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    return-void
.end method

.method public stop()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "Requested stop of IMAP pusher"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->folderPushers:Ljava/util/List;

    monitor-enter v3

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->folderPushers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .local v1, "folderPusher":Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    :try_start_1
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const-string v4, "Requesting stop of IMAP folderPusher %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_1
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Got exception while stopping %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "folderPusher":Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 75
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapPusher;->folderPushers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 76
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    return-void
.end method

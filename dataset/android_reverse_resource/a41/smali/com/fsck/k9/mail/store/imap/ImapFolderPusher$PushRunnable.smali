.class Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;
.super Ljava/lang/Object;
.source "ImapFolderPusher.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/fsck/k9/mail/store/imap/UntaggedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushRunnable"
.end annotation


# instance fields
.field private delayTime:I

.field private idleFailureCount:I

.field private needsPoll:Z

.field final synthetic this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/16 v0, 0x1388

    iput v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->delayTime:I

    .line 127
    iput v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->idleFailureCount:I

    .line 128
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->needsPoll:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    .param p2, "x1"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;-><init>(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)V

    return-void
.end method

.method private checkConnectionIdleCapable(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->isIdleCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$302(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Z)Z

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMAP server is not IDLE capable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 354
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkConnectionNotNull(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    const-string v0, "Could not establish connection for IDLE"

    .line 341
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 343
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private clearStoredUntaggedResponses()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$700(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$700(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    monitor-exit v1

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAndClearStoredUntaggedResponses()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$700(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$700(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    monitor-exit v2

    .line 433
    :goto_0
    return-object v0

    .line 430
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$700(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 431
    .local v0, "untaggedResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$700(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 433
    monitor-exit v2

    goto :goto_0

    .line 434
    .end local v0    # "untaggedResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNewUidNext()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-wide/16 v4, -0x1

    .line 259
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-wide v2, v6, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->uidNext:J

    .line 260
    .local v2, "newUidNext":J
    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    move-wide v4, v2

    .line 279
    :cond_0
    :goto_0
    return-wide v4

    .line 264
    :cond_1
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    const-string v6, "uidNext is -1, using search to find highest UID"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_2
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getHighestUid()J

    move-result-wide v0

    .line 269
    .local v0, "highestUid":J
    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 273
    const-wide/16 v4, 0x1

    add-long v2, v0, v4

    .line 275
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    const-string v4, "highest UID = %d, set newUidNext to %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move-wide v4, v2

    .line 279
    goto :goto_0
.end method

.method private getOldUidNext()J
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 669
    const-wide/16 v2, -0x1

    .line 671
    .local v2, "oldUidNext":J
    :try_start_0
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v5}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/fsck/k9/mail/PushReceiver;->getPushState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, "serializedPushState":Ljava/lang/String;
    invoke-static {v4}, Lcom/fsck/k9/mail/store/imap/ImapPushState;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapPushState;

    move-result-object v1

    .line 673
    .local v1, "pushState":Lcom/fsck/k9/mail/store/imap/ImapPushState;
    iget-wide v2, v1, Lcom/fsck/k9/mail/store/imap/ImapPushState;->uidNext:J

    .line 675
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 676
    const-string v5, "Got oldUidNext %d for %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v1    # "pushState":Lcom/fsck/k9/mail/store/imap/ImapPushState;
    .end local v4    # "serializedPushState":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v2

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Unable to get oldUidNext for %s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v7}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getStartUid(JJ)J
    .locals 7
    .param p1, "oldUidNext"    # J
    .param p3, "newUidNext"    # J

    .prologue
    .line 283
    move-wide v2, p1

    .line 284
    .local v2, "startUid":J
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v1, v1, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/StoreConfig;->getDisplayCount()I

    move-result v0

    .line 286
    .local v0, "displayCount":I
    int-to-long v4, v0

    sub-long v4, p3, v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 287
    int-to-long v4, v0

    sub-long v2, p3, v4

    .line 290
    :cond_0
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 291
    const-wide/16 v2, 0x1

    .line 294
    :cond_1
    return-wide v2
.end method

.method private notifyMessagesArrived(JJ)V
    .locals 9
    .param p1, "startUid"    # J
    .param p3, "uidNext"    # J

    .prologue
    .line 653
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 654
    const-string v3, "Needs sync from uid %d to %d for %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    :cond_0
    sub-long v6, p3, p1

    long-to-int v0, v6

    .line 658
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 660
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    move-wide v4, p1

    .local v4, "uid":J
    :goto_0
    cmp-long v3, v4, p3

    if-gez v3, :cond_1

    .line 661
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-direct {v1, v3, v6}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 662
    .local v1, "message":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_0

    .line 665
    .end local v1    # "message":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v3

    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-interface {v3, v6, v2}, Lcom/fsck/k9/mail/PushReceiver;->messagesArrived(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V

    .line 666
    return-void
.end method

.method private openConnectionIfNecessary()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 327
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v1, v3, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .line 328
    .local v1, "oldConnection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v3, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->internalOpen(I)Ljava/util/List;

    .line 330
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v0, v3, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .line 332
    .local v0, "conn":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->checkConnectionNotNull(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    .line 333
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->checkConnectionIdleCapable(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    .line 335
    if-eq v0, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private prepareForIdle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 298
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/mail/PushReceiver;->setPushActive(Ljava/lang/String;Z)V

    .line 299
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v0, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$502(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Z)Z

    .line 300
    return-void
.end method

.method private processStoredUntaggedResponses()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 410
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->getAndClearStoredUntaggedResponses()Ljava/util/List;

    move-result-object v0

    .line 411
    .local v0, "untaggedResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    return-void

    .line 415
    :cond_0
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    const-string v1, "Processing %d untagged responses from previous commands for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 417
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 416
    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :cond_1
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->processUntaggedResponses(Ljava/util/List;)V

    goto :goto_0
.end method

.method private processUntaggedResponse(JLcom/fsck/k9/mail/store/imap/ImapResponse;Ljava/util/List;Ljava/util/List;)I
    .locals 23
    .param p1, "oldMessageCount"    # J
    .param p3, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 477
    .local p4, "flagSyncMsgSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "removeMsgUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$800(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 479
    const/4 v6, 0x0

    .line 480
    .local v6, "messageCountDelta":I
    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 482
    const/4 v15, 0x1

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 483
    .local v13, "responseType":Ljava/lang/Object;
    const-string v15, "FETCH"

    invoke-static {v13, v15}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 484
    const-string v15, "Got FETCH %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p3, v16, v17

    invoke-static/range {v15 .. v16}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getLong(I)J

    move-result-wide v8

    .line 488
    .local v8, "msgSeq":J
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 489
    const-string v15, "Got untagged FETCH for msgseq %d for %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 493
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v8    # "msgSeq":J
    :cond_1
    const-string v15, "EXPUNGE"

    invoke-static {v13, v15}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 498
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getLong(I)J

    move-result-wide v8

    .line 499
    .restart local v8    # "msgSeq":J
    cmp-long v15, v8, p1

    if-gtz v15, :cond_2

    .line 500
    const/4 v6, -0x1

    .line 503
    :cond_2
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 504
    const-string v15, "Got untagged EXPUNGE for msgseq %d for %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v12, "newSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 509
    .local v3, "flagIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 510
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 511
    .local v4, "flagMsg":J
    cmp-long v15, v4, v8

    if-ltz v15, :cond_4

    .line 512
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 513
    cmp-long v15, v4, v8

    if-lez v15, :cond_4

    .line 514
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    .end local v3    # "flagIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v4    # "flagMsg":J
    .end local v8    # "msgSeq":J
    .end local v12    # "newSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13    # "responseType":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 551
    .local v2, "e":Ljava/lang/Exception;
    const-string v15, "Could not handle untagged FETCH for %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v2, v15, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    return v6

    .line 519
    .restart local v3    # "flagIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v8    # "msgSeq":J
    .restart local v12    # "newSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v13    # "responseType":Ljava/lang/Object;
    :cond_6
    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 521
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v15, v15, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 522
    .local v7, "msgSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 524
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 525
    .local v10, "msgSeqNum":J
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 526
    const-string v15, "Comparing EXPUNGEd msgSeq %d to %d"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    :cond_8
    cmp-long v15, v10, v8

    if-nez v15, :cond_a

    .line 530
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v15, v15, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 532
    .local v14, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 533
    const-string v15, "Scheduling removal of UID %s because msgSeq %d was expunged"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    const/16 v18, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    :cond_9
    move-object/from16 v0, p5

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v15, v15, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 538
    .end local v14    # "uid":Ljava/lang/String;
    :cond_a
    cmp-long v15, v10, v8

    if-lez v15, :cond_7

    .line 539
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v15, v15, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 541
    .restart local v14    # "uid":Ljava/lang/String;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 542
    const-string v15, "Reducing msgSeq for UID %s from %d to %d"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    const/16 v18, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-wide/16 v20, 0x1

    sub-long v20, v10, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v15, v15, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v15, v15, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    const-wide/16 v18, 0x1

    sub-long v18, v10, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private processUntaggedResponses(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    const/4 v7, 0x0

    .line 440
    .local v7, "skipSync":Z
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget v0, v1, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->messageCount:I

    .line 441
    .local v0, "oldMessageCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 442
    const/4 v7, 0x1

    .line 445
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v5, "flagSyncMsgSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 448
    .local v6, "removeMsgUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 449
    .local v4, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    int-to-long v2, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->processUntaggedResponse(JLcom/fsck/k9/mail/store/imap/ImapResponse;Ljava/util/List;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    goto :goto_0

    .line 452
    .end local v4    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_1
    if-nez v7, :cond_3

    .line 453
    if-gez v0, :cond_2

    .line 454
    const/4 v0, 0x0

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget v1, v1, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->messageCount:I

    if-le v1, v0, :cond_3

    .line 458
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget v1, v1, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->messageCount:I

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->syncMessages(I)V

    .line 462
    :cond_3
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 463
    const-string v1, "UIDs for messages needing flag sync are %s for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 467
    invoke-direct {p0, v5}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->syncMessages(Ljava/util/List;)V

    .line 470
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 471
    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->removeMessages(Ljava/util/List;)V

    .line 473
    :cond_6
    return-void
.end method

.method private reacquireWakeLockAndCleanUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 243
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$200(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 245
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->clearStoredUntaggedResponses()V

    .line 246
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1, v4}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$502(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Z)Z

    .line 247
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/fsck/k9/mail/PushReceiver;->setPushActive(Ljava/lang/String;Z)V

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v1, v1, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .line 256
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "me":Ljava/lang/Exception;
    const-string v1, "Got exception while closing for exception for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeMessages(Ljava/util/List;)V
    .locals 14
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
    .local p1, "removeUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 610
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .local v6, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :try_start_0
    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v8, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getMessagesFromUids(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 614
    .local v2, "existingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Message;

    .line 615
    .local v1, "existingMessage":Lcom/fsck/k9/mail/Message;
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->needsPoll:Z

    .line 616
    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v9, v9, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 618
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, "existingUid":Ljava/lang/String;
    const-string v9, "Message with UID %s still exists on server, not expunging"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    .end local v1    # "existingMessage":Lcom/fsck/k9/mail/Message;
    .end local v2    # "existingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    .end local v3    # "existingUid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "Cannot remove EXPUNGEd messages"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 624
    .restart local v2    # "existingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 625
    .local v7, "uid":Ljava/lang/String;
    new-instance v5, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-direct {v5, v7, v9}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 628
    .local v5, "message":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    :try_start_2
    sget-object v9, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 633
    :goto_3
    :try_start_3
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 629
    :catch_1
    move-exception v4

    .line 630
    .local v4, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v9, "Unable to set DELETED flag on message %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->getUid()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 636
    .end local v4    # "me":Lcom/fsck/k9/mail/MessagingException;
    .end local v5    # "message":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    .end local v7    # "uid":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-interface {v8, v9, v6}, Lcom/fsck/k9/mail/PushReceiver;->messagesRemoved(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private returnFromIdle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$502(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Z)Z

    .line 322
    const/16 v0, 0x1388

    iput v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->delayTime:I

    .line 323
    iput v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->idleFailureCount:I

    .line 324
    return-void
.end method

.method private sendIdle(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V
    .locals 5
    .param p1, "conn"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    const-string v3, "IDLE"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "tag":Ljava/lang/String;
    :try_start_0
    const-string v3, "IDLE"

    invoke-virtual {p1, v2, v3, p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->readStatusResponse(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/store/imap/UntaggedHandler;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 310
    .local v1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :try_start_1
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$600(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->stopAcceptingDoneContinuation()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v3, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->handleUntaggedResponses(Ljava/util/List;)Ljava/util/List;

    .line 318
    return-void

    .line 310
    .end local v1    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$600(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->stopAcceptingDoneContinuation()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 314
    throw v0
.end method

.method private setReadTimeoutForIdle(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V
    .locals 2
    .param p1, "conn"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v1, v1, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/StoreConfig;->getIdleRefreshMinutes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v0, v1, 0x3e8

    .line 360
    .local v0, "idleRefreshTimeout":I
    const v1, 0x493e0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->setReadTimeout(I)V

    .line 361
    return-void
.end method

.method private syncFolderOnConnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->processStoredUntaggedResponses()V

    .line 645
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->messageCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 646
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Message count = -1 for idling"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/PushReceiver;->syncFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 650
    return-void
.end method

.method private syncMessages(I)V
    .locals 20
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->getOldUidNext()J

    move-result-wide v14

    .line 561
    .local v14, "oldUidNext":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getMessages(IILjava/util/Date;ZLcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;

    move-result-object v9

    .line 563
    .local v9, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 564
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 566
    .local v12, "newUid":J
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    const-string v2, "Got newUid %s for message %d on %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    :cond_0
    move-wide/from16 v16, v14

    .line 571
    .local v16, "startUid":J
    const-wide/16 v2, 0xa

    sub-long v2, v12, v2

    cmp-long v2, v16, v2

    if-gez v2, :cond_1

    .line 572
    const-wide/16 v2, 0xa

    sub-long v16, v12, v2

    .line 575
    :cond_1
    const-wide/16 v2, 0x1

    cmp-long v2, v16, v2

    if-gez v2, :cond_2

    .line 576
    const-wide/16 v16, 0x1

    .line 579
    :cond_2
    cmp-long v2, v12, v16

    if-ltz v2, :cond_5

    .line 580
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 581
    const-string v2, "Needs sync from uid %d to %d for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v10, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    move-wide/from16 v18, v16

    .local v18, "uid":J
    :goto_0
    cmp-long v2, v18, v12

    if-gtz v2, :cond_4

    .line 586
    new-instance v8, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-direct {v8, v2, v3}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 587
    .local v8, "message":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    const-wide/16 v2, 0x1

    add-long v18, v18, v2

    goto :goto_0

    .line 590
    .end local v8    # "message":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-interface {v2, v3, v10}, Lcom/fsck/k9/mail/PushReceiver;->messagesArrived(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V

    .line 595
    .end local v10    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v12    # "newUid":J
    .end local v16    # "startUid":J
    .end local v18    # "uid":J
    :cond_5
    return-void
.end method

.method private syncMessages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "flagSyncMsgSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getMessages(Ljava/util/List;ZLcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;

    move-result-object v1

    .line 601
    .local v1, "messageList":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 603
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-interface {v3, v4, v2}, Lcom/fsck/k9/mail/PushReceiver;->messagesFlagsChanged(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v1    # "messageList":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v3

    const-string v4, "Exception while processing Push untagged responses"

    invoke-interface {v3, v4, v0}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public handleAsyncUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 365
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const-string v1, "Got async response: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$300(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    const-string v1, "Got async untagged response: %s, but stop is set for %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$600(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->stopIdle()V

    .line 400
    :cond_2
    :goto_0
    return-void

    .line 376
    :cond_3
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 377
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v1

    if-le v1, v4, :cond_6

    .line 378
    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, "responseType":Ljava/lang/Object;
    const-string v1, "EXISTS"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "EXPUNGE"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "FETCH"

    .line 380
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    :cond_4
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$200(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 384
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 385
    const-string v1, "Got useful async untagged response: %s for %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :cond_5
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$600(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->stopIdle()V

    goto :goto_0

    .line 390
    .end local v0    # "responseType":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isContinuationRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 392
    const-string v1, "Idling %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    :cond_7
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$600(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v2, v2, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->startAcceptingDoneContinuation(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    .line 396
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$200(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$200(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v15

    const-wide/32 v18, 0xea60

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 134
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 135
    const-string v15, "Pusher starting for %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_0
    const-wide/16 v6, -0x1

    .line 139
    .local v6, "lastUidNext":J
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$300(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 141
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->getOldUidNext()J

    move-result-wide v12

    .line 150
    .local v12, "oldUidNext":J
    cmp-long v15, v12, v6

    if-gez v15, :cond_2

    .line 151
    move-wide v12, v6

    .line 154
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->openConnectionIfNecessary()Z

    move-result v9

    .line 156
    .local v9, "openedNewConnection":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$300(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    if-eqz v15, :cond_5

    .line 227
    .end local v9    # "openedNewConnection":Z
    .end local v12    # "oldUidNext":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lcom/fsck/k9/mail/PushReceiver;->setPushActive(Ljava/lang/String;Z)V

    .line 230
    :try_start_1
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 231
    const-string v15, "Pusher for %s is exiting"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$200(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    .line 240
    :goto_1
    return-void

    .line 160
    .restart local v9    # "openedNewConnection":Z
    .restart local v12    # "oldUidNext":J
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v15, v15, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v15}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v15

    invoke-interface {v15}, Lcom/fsck/k9/mail/store/StoreConfig;->isPushPollOnConnect()Z

    move-result v14

    .line 161
    .local v14, "pushPollOnConnect":Z
    if-eqz v14, :cond_7

    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->needsPoll:Z

    if-eqz v15, :cond_7

    .line 162
    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->needsPoll:Z

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->syncFolderOnConnect()V

    .line 166
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$300(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->getNewUidNext()J

    move-result-wide v10

    .line 171
    .local v10, "newUidNext":J
    move-wide v6, v10

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v10, v11}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->getStartUid(JJ)J

    move-result-wide v16

    .line 174
    .local v16, "startUid":J
    cmp-long v15, v10, v16

    if-lez v15, :cond_9

    .line 175
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->notifyMessagesArrived(JJ)V
    :try_end_2
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 191
    .end local v9    # "openedNewConnection":Z
    .end local v10    # "newUidNext":J
    .end local v12    # "oldUidNext":J
    .end local v14    # "pushPollOnConnect":Z
    .end local v16    # "startUid":J
    :catch_0
    move-exception v5

    .line 192
    .local v5, "e":Lcom/fsck/k9/mail/AuthenticationFailedException;
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->reacquireWakeLockAndCleanUp()V

    .line 194
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 195
    const-string v15, "Authentication failed. Stopping ImapFolderPusher."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v5, v15, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v15

    invoke-interface {v15}, Lcom/fsck/k9/mail/PushReceiver;->authenticationFailed()V

    .line 199
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$302(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Z)Z

    goto/16 :goto_0

    .line 177
    .end local v5    # "e":Lcom/fsck/k9/mail/AuthenticationFailedException;
    .restart local v9    # "openedNewConnection":Z
    .restart local v10    # "newUidNext":J
    .restart local v12    # "oldUidNext":J
    .restart local v14    # "pushPollOnConnect":Z
    .restart local v16    # "startUid":J
    :cond_9
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->processStoredUntaggedResponses()V

    .line 179
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 180
    const-string v15, "About to IDLE for %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->prepareForIdle()V

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    iget-object v4, v15, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .line 186
    .local v4, "conn":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->setReadTimeoutForIdle(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    .line 187
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->sendIdle(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->returnFromIdle()V
    :try_end_3
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 200
    .end local v4    # "conn":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .end local v9    # "openedNewConnection":Z
    .end local v10    # "newUidNext":J
    .end local v12    # "oldUidNext":J
    .end local v14    # "pushPollOnConnect":Z
    .end local v16    # "startUid":J
    :catch_1
    move-exception v5

    .line 201
    .local v5, "e":Ljava/lang/Exception;
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->reacquireWakeLockAndCleanUp()V

    .line 203
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$300(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 204
    const-string v15, "Got exception while idling, but stop is set for %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 206
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v15

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Push error for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0, v5}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 207
    const-string v15, "Got exception while idling for %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$200(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->delayTime:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v15, v0, v1, v2}, Lcom/fsck/k9/mail/PushReceiver;->sleep(Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;J)V

    .line 211
    move-object/from16 v0, p0

    iget v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->delayTime:I

    mul-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->delayTime:I

    .line 212
    move-object/from16 v0, p0

    iget v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->delayTime:I

    const v18, 0x493e0

    move/from16 v0, v18

    if-le v15, v0, :cond_c

    .line 213
    const v15, 0x493e0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->delayTime:I

    .line 216
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->idleFailureCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->idleFailureCount:I

    .line 217
    move-object/from16 v0, p0

    iget v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->idleFailureCount:I

    const/16 v18, 0xa

    move/from16 v0, v18

    if-le v15, v0, :cond_1

    .line 218
    const-string v15, "Disabling pusher for %s after %d consecutive errors"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->idleFailureCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;

    move-result-object v15

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Push disabled for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " after "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->idleFailureCount:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " consecutive errors"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0, v5}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$302(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Z)Z

    goto/16 :goto_0

    .line 235
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 236
    .local v8, "me":Ljava/lang/Exception;
    :try_start_4
    const-string v15, "Got exception while closing for %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v8, v15, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    invoke-static {v15}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$200(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v15

    invoke-virtual {v15}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    goto/16 :goto_1

    .end local v8    # "me":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->access$200(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    throw v15
.end method

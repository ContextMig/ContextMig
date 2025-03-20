.class Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
.super Lcom/fsck/k9/mail/store/imap/ImapFolder;
.source "ImapFolderPusher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;,
        Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;
    }
.end annotation


# static fields
.field private static final IDLE_FAILURE_COUNT_LIMIT:I = 0xa

.field private static final IDLE_READ_TIMEOUT_INCREMENT:I = 0x493e0

.field private static final MAX_DELAY_TIME:I = 0x493e0

.field private static final NORMAL_DELAY_TIME:I = 0x1388


# instance fields
.field private final idleStopper:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;

.field private volatile idling:Z

.field private listeningThread:Ljava/lang/Thread;

.field private final pushReceiver:Lcom/fsck/k9/mail/PushReceiver;

.field private volatile stop:Z

.field private final storedUntaggedResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final threadLock:Ljava/lang/Object;

.field private final wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/PushReceiver;)V
    .locals 6
    .param p1, "store"    # Lcom/fsck/k9/mail/store/imap/ImapStore;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pushReceiver"    # Lcom/fsck/k9/mail/PushReceiver;

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;-><init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;)V

    .line 38
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->threadLock:Ljava/lang/Object;

    .line 39
    new-instance v3, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;-><init>(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$1;)V

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->idleStopper:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    .line 43
    iput-boolean v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->stop:Z

    .line 44
    iput-boolean v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->idling:Z

    .line 49
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->pushReceiver:Lcom/fsck/k9/mail/PushReceiver;

    .line 51
    invoke-interface {p3}, Lcom/fsck/k9/mail/PushReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager;->getPowerManager(Landroid/content/Context;)Lcom/fsck/k9/mail/power/TracingPowerManager;

    move-result-object v1

    .line 53
    .local v1, "powerManager":Lcom/fsck/k9/mail/power/TracingPowerManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImapFolderPusher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "tag":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/fsck/k9/mail/power/TracingPowerManager;->newWakeLock(ILjava/lang/String;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .line 55
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v3, v5}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->setReferenceCounted(Z)V

    .line 56
    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->stop:Z

    return v0
.end method

.method static synthetic access$302(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->stop:Z

    return p1
.end method

.method static synthetic access$400(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/PushReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->pushReceiver:Lcom/fsck/k9/mail/PushReceiver;

    return-object v0
.end method

.method static synthetic access$502(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->idling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->idleStopper:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
    .param p1, "x1"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->superHandleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    return-void
.end method

.method private superHandleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v2, 0x1

    .line 102
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 103
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "responseType":Ljava/lang/Object;
    const-string v1, "FETCH"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EXPUNGE"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EXISTS"

    .line 105
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    :cond_0
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "Storing response %s for later processing"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    monitor-enter v2

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->handlePossibleUidNext(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 118
    .end local v0    # "responseType":Ljava/lang/Object;
    :cond_3
    return-void

    .line 113
    .restart local v0    # "responseType":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public refresh()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->idling:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 72
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->idleStopper:Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->stopIdle()V

    .line 74
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 59
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->threadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "start() called twice"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 64
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$PushRunnable;-><init>(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$1;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    .line 65
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->threadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "stop() called twice"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->stop:Z

    .line 84
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    .line 86
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .line 89
    .local v0, "conn":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "Closing connection to stop pushing for %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_1
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_2
    const-string v1, "Attempt to interrupt null connection to stop pushing on folderPusher for %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

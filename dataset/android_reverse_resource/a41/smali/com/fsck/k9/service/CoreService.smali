.class public abstract Lcom/fsck/k9/service/CoreService;
.super Landroid/app/Service;
.source "CoreService.java"


# static fields
.field public static final WAKE_LOCK_ID:Ljava/lang/String; = "com.fsck.k9.service.CoreService.wakeLockId"

.field private static sWakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sWakeLocks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final className:Ljava/lang/String;

.field private mAutoShutdown:Z

.field protected mImmediateShutdown:Z

.field private volatile mShutdown:Z

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/service/CoreService;->sWakeLocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fsck/k9/service/CoreService;->sWakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/service/CoreService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/service/CoreService;->className:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/service/CoreService;->mShutdown:Z

    .line 98
    iput-boolean v1, p0, Lcom/fsck/k9/service/CoreService;->mAutoShutdown:Z

    .line 104
    iput-boolean v1, p0, Lcom/fsck/k9/service/CoreService;->mImmediateShutdown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/service/CoreService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/service/CoreService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fsck/k9/service/CoreService;->className:Ljava/lang/String;

    return-object v0
.end method

.method protected static acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 184
    invoke-static {p0}, Lcom/fsck/k9/mail/power/TracingPowerManager;->getPowerManager(Landroid/content/Context;)Lcom/fsck/k9/mail/power/TracingPowerManager;

    move-result-object v0

    .line 185
    .local v0, "pm":Lcom/fsck/k9/mail/power/TracingPowerManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/fsck/k9/mail/power/TracingPowerManager;->newWakeLock(ILjava/lang/String;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v1

    .line 186
    .local v1, "wakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->setReferenceCounted(Z)V

    .line 187
    invoke-virtual {v1, p2, p3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 188
    return-object v1
.end method

.method protected static addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    const-string v2, "CoreService addWakeLock"

    const-wide/32 v4, 0xea60

    invoke-static {p0, v2, v4, v5}, Lcom/fsck/k9/service/CoreService;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v1

    .line 148
    .local v1, "wakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    invoke-static {v1}, Lcom/fsck/k9/service/CoreService;->registerWakeLock(Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;)Ljava/lang/Integer;

    move-result-object v0

    .line 149
    .local v0, "tmpWakeLockId":Ljava/lang/Integer;
    const-string v2, "com.fsck.k9.service.CoreService.wakeLockId"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method protected static addWakeLockId(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "wakeLockId"    # Ljava/lang/Integer;
    .param p3, "createIfNotExists"    # Z

    .prologue
    .line 123
    if-eqz p2, :cond_1

    .line 124
    const-string v0, "com.fsck.k9.service.CoreReceiver.wakeLockId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    if-eqz p3, :cond_0

    .line 129
    invoke-static {p0, p1}, Lcom/fsck/k9/service/CoreService;->addWakeLock(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected static registerWakeLock(Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;)Ljava/lang/Integer;
    .locals 2
    .param p0, "wakeLock"    # Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .prologue
    .line 163
    sget-object v1, Lcom/fsck/k9/service/CoreService;->sWakeLockSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 166
    .local v0, "tmpWakeLockId":Ljava/lang/Integer;
    sget-object v1, Lcom/fsck/k9/service/CoreService;->sWakeLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "runner"    # Ljava/lang/Runnable;
    .param p3, "wakeLockTime"    # I
    .param p4, "startId"    # Ljava/lang/Integer;

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 285
    const/4 v7, 0x0

    .line 286
    .local v7, "serviceShutdownScheduled":Z
    iget-boolean v5, p0, Lcom/fsck/k9/service/CoreService;->mAutoShutdown:Z

    .line 289
    .local v5, "autoShutdown":Z
    const-string v1, "CoreService execute"

    int-to-long v2, p3

    invoke-static {p1, v1, v2, v3}, Lcom/fsck/k9/service/CoreService;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v4

    .line 294
    .local v4, "wakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    new-instance v0, Lcom/fsck/k9/service/CoreService$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/service/CoreService$1;-><init>(Lcom/fsck/k9/service/CoreService;Ljava/lang/Runnable;Ljava/lang/Integer;Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;Z)V

    .line 328
    .local v0, "myRunner":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/fsck/k9/service/CoreService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    .line 329
    const-string v1, "CoreService.execute (%s) called with no thread pool available; running Runnable %d in calling thread"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/service/CoreService;->className:Ljava/lang/String;

    aput-object v3, v2, v9

    .line 330
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 329
    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    monitor-enter p0

    .line 333
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 334
    if-eqz p4, :cond_0

    move v7, v8

    .line 335
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :goto_1
    if-nez v7, :cond_4

    :goto_2
    iput-boolean v8, p0, Lcom/fsck/k9/service/CoreService;->mImmediateShutdown:Z

    .line 355
    return-void

    :cond_0
    move v7, v9

    .line 334
    goto :goto_0

    .line 335
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 337
    :cond_1
    const-string v1, "CoreService (%s) queueing Runnable %d with startId %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/service/CoreService;->className:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object p4, v2, v10

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :try_start_2
    iget-object v1, p0, Lcom/fsck/k9/service/CoreService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 341
    if-eqz p4, :cond_2

    move v7, v8

    :goto_3
    goto :goto_1

    :cond_2
    move v7, v9

    goto :goto_3

    .line 342
    :catch_0
    move-exception v6

    .line 345
    .local v6, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-boolean v1, p0, Lcom/fsck/k9/service/CoreService;->mShutdown:Z

    if-nez v1, :cond_3

    .line 346
    throw v6

    .line 349
    :cond_3
    const-string v1, "CoreService: %s is shutting down, ignoring rejected execution exception: %s"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/service/CoreService;->className:Ljava/lang/String;

    aput-object v3, v2, v9

    .line 350
    invoke-virtual {v6}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 349
    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v6    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_4
    move v8, v9

    .line 354
    goto :goto_2
.end method

.method protected isAutoShutdown()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/fsck/k9/service/CoreService;->mAutoShutdown:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 193
    const-string v0, "CoreService: %s.onCreate()"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/service/CoreService;->className:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/service/CoreService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 196
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 386
    const-string v0, "CoreService: %s.onDestroy()"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/service/CoreService;->className:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    iput-boolean v4, p0, Lcom/fsck/k9/service/CoreService;->mShutdown:Z

    .line 390
    iget-object v0, p0, Lcom/fsck/k9/service/CoreService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 391
    return-void
.end method

.method public onLowMemory()V
    .locals 4

    .prologue
    .line 378
    const-string v0, "CoreService: %s.onLowMemory() - Running low on memory"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/service/CoreService;->className:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 209
    if-nez p1, :cond_1

    .line 210
    invoke-virtual {p0, p3}, Lcom/fsck/k9/service/CoreService;->stopSelf(I)V

    .line 263
    :cond_0
    :goto_0
    return v2

    .line 215
    :cond_1
    const-string v5, "CoreService onStart"

    const-wide/32 v6, 0xea60

    invoke-static {p0, v5, v6, v7}, Lcom/fsck/k9/service/CoreService;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v3

    .line 218
    .local v3, "wakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    const-string v5, "CoreService: %s.onStart(%s, %d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/fsck/k9/service/CoreService;->className:Ljava/lang/String;

    aput-object v7, v6, v10

    aput-object p1, v6, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    const-string v5, "com.fsck.k9.service.CoreReceiver.wakeLockId"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 222
    .local v4, "wakeLockId":I
    if-eq v4, v8, :cond_2

    .line 223
    invoke-static {p0, v4}, Lcom/fsck/k9/service/BootReceiver;->releaseWakeLock(Landroid/content/Context;I)V

    .line 228
    :cond_2
    const-string v5, "com.fsck.k9.service.CoreService.wakeLockId"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 229
    .local v1, "coreWakeLockId":I
    if-eq v1, v8, :cond_3

    .line 230
    const-string v5, "Got core wake lock id %d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v5, Lcom/fsck/k9/service/CoreService;->sWakeLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .line 236
    .local v0, "coreWakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    if-eqz v0, :cond_3

    .line 237
    const-string v5, "Found core wake lock with id %d, releasing"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    .line 243
    .end local v0    # "coreWakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    :cond_3
    iput-boolean v9, p0, Lcom/fsck/k9/service/CoreService;->mImmediateShutdown:Z

    .line 246
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/fsck/k9/service/CoreService;->startService(Landroid/content/Intent;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 250
    .local v2, "startFlag":I
    :try_start_1
    invoke-virtual {v3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    :goto_1
    :try_start_2
    iget-boolean v5, p0, Lcom/fsck/k9/service/CoreService;->mAutoShutdown:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/fsck/k9/service/CoreService;->mImmediateShutdown:Z

    if-eqz v5, :cond_0

    if-eq p3, v8, :cond_0

    .line 257
    invoke-virtual {p0, p3}, Lcom/fsck/k9/service/CoreService;->stopSelf(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 258
    const/4 v2, 0x2

    goto :goto_0

    .line 248
    .end local v2    # "startFlag":I
    :catchall_0
    move-exception v5

    .line 250
    :try_start_3
    invoke-virtual {v3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 256
    :goto_2
    :try_start_4
    iget-boolean v6, p0, Lcom/fsck/k9/service/CoreService;->mAutoShutdown:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/fsck/k9/service/CoreService;->mImmediateShutdown:Z

    if-eqz v6, :cond_4

    if-eq p3, v8, :cond_4

    .line 257
    invoke-virtual {p0, p3}, Lcom/fsck/k9/service/CoreService;->stopSelf(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 260
    :cond_4
    :goto_3
    throw v5

    .line 251
    .restart local v2    # "startFlag":I
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v2    # "startFlag":I
    :catch_1
    move-exception v6

    goto :goto_2

    .line 260
    :catch_2
    move-exception v6

    goto :goto_3

    .restart local v2    # "startFlag":I
    :catch_3
    move-exception v5

    goto/16 :goto_0
.end method

.method protected setAutoShutdown(Z)V
    .locals 0
    .param p1, "autoShutdown"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/fsck/k9/service/CoreService;->mAutoShutdown:Z

    .line 412
    return-void
.end method

.method public abstract startService(Landroid/content/Intent;I)I
.end method

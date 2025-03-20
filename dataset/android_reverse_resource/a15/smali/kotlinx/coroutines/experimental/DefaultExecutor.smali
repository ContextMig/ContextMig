.class public final Lkotlinx/coroutines/experimental/DefaultExecutor;
.super Lkotlinx/coroutines/experimental/EventLoopBase;
.source "DefaultExecutor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultExecutor.kt\nkotlinx/coroutines/experimental/DefaultExecutor\n*L\n1#1,144:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/experimental/DefaultExecutor;

.field private static final KEEP_ALIVE_NANOS:J

.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 22
    new-instance v0, Lkotlinx/coroutines/experimental/DefaultExecutor;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/DefaultExecutor;-><init>()V

    sput-object v0, Lkotlinx/coroutines/experimental/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/experimental/DefaultExecutor;

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    nop

    .line 30
    :try_start_0
    const-string v1, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    :goto_0
    const-string v2, "try {\n            java.l\u2026AULT_KEEP_ALIVE\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/experimental/DefaultExecutor;->KEEP_ALIVE_NANOS:J

    return-void

    .line 31
    :catch_0
    move-exception v1

    .line 32
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;-><init>()V

    return-void
.end method

.method private final declared-synchronized acknowledgeShutdownIfNeeded()V
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->isShutdownRequested()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    const/4 v1, 0x3

    :try_start_1
    sput v1, Lkotlinx/coroutines/experimental/DefaultExecutor;->debugStatus:I

    .line 140
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->resetAll()V

    .line 141
    if-nez p0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 141
    :cond_1
    :try_start_2
    move-object v0, p0

    check-cast v0, Ljava/lang/Object;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private final declared-synchronized createThreadSync()Ljava/lang/Thread;
    .locals 4

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    sget-object v1, Lkotlinx/coroutines/experimental/DefaultExecutor;->_thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 94
    :goto_0
    monitor-exit p0

    return-object v1

    .line 90
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    const-string v3, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    .local v1, "$receiver":Ljava/lang/Thread;
    sput-object v1, Lkotlinx/coroutines/experimental/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 92
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 93
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    nop

    .line 90
    goto :goto_0

    .line 89
    .end local v1    # "$receiver":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final isShutdownRequested()Z
    .locals 2

    .prologue
    .line 47
    sget v0, Lkotlinx/coroutines/experimental/DefaultExecutor;->debugStatus:I

    .line 48
    .local v0, "debugStatus":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final declared-synchronized notifyStartup()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->isShutdownRequested()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 117
    :goto_0
    monitor-exit p0

    return v1

    .line 115
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput v1, Lkotlinx/coroutines/experimental/DefaultExecutor;->debugStatus:I

    .line 116
    if-nez p0, :cond_1

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 116
    :cond_1
    :try_start_2
    move-object v0, p0

    check-cast v0, Ljava/lang/Object;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 117
    goto :goto_0
.end method

.method private final thread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lkotlinx/coroutines/experimental/DefaultExecutor;->_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->createThreadSync()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected isCompleted()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected isCorrectThread()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 52
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/coroutines/experimental/TimeSource;->registerTimeLoopThread()V

    .line 53
    nop

    .line 54
    const-wide v4, 0x7fffffffffffffffL

    .line 55
    .local v4, "shutdownNanos":J
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->notifyStartup()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    .line 77
    const/4 v8, 0x0

    check-cast v8, Ljava/lang/Thread;

    sput-object v8, Lkotlinx/coroutines/experimental/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 78
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 79
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/coroutines/experimental/TimeSource;->unregisterTimeLoopThread()V

    .line 81
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->thread()Ljava/lang/Thread;

    :cond_0
    :goto_0
    return-void

    .line 73
    .local v2, "parkNanos":J
    :cond_1
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v8

    invoke-interface {v8, p0, v2, v3}, Lkotlinx/coroutines/experimental/TimeSource;->parkNanos(Ljava/lang/Object;J)V

    .line 56
    .end local v2    # "parkNanos":J
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 58
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->processNextEvent()J

    move-result-wide v2

    .line 59
    .restart local v2    # "parkNanos":J
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v2, v8

    if-nez v8, :cond_5

    .line 61
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v4, v8

    if-nez v8, :cond_6

    .line 62
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/coroutines/experimental/TimeSource;->nanoTime()J

    move-result-wide v0

    .line 63
    .local v0, "now":J
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    sget-wide v8, Lkotlinx/coroutines/experimental/DefaultExecutor;->KEEP_ALIVE_NANOS:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long v4, v0, v8

    .line 64
    :cond_3
    sub-long v6, v4, v0

    .line 65
    .local v6, "tillShutdown":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_4

    .line 77
    const/4 v8, 0x0

    check-cast v8, Ljava/lang/Thread;

    sput-object v8, Lkotlinx/coroutines/experimental/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 78
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 79
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/coroutines/experimental/TimeSource;->unregisterTimeLoopThread()V

    .line 81
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->thread()Ljava/lang/Thread;

    goto :goto_0

    .line 66
    :cond_4
    :try_start_2
    invoke-static {v2, v3, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v2

    .line 70
    .end local v0    # "now":J
    .end local v6    # "tillShutdown":J
    :cond_5
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 72
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->isShutdownRequested()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 77
    const/4 v8, 0x0

    check-cast v8, Ljava/lang/Thread;

    sput-object v8, Lkotlinx/coroutines/experimental/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 78
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 79
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/coroutines/experimental/TimeSource;->unregisterTimeLoopThread()V

    .line 81
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->thread()Ljava/lang/Thread;

    goto :goto_0

    .line 68
    :cond_6
    :try_start_3
    sget-wide v8, Lkotlinx/coroutines/experimental/DefaultExecutor;->KEEP_ALIVE_NANOS:J

    invoke-static {v2, v3, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v2

    goto :goto_1

    .line 81
    .end local v2    # "parkNanos":J
    :catchall_0
    move-exception v8

    move-object v9, v8

    .line 77
    const/4 v8, 0x0

    check-cast v8, Ljava/lang/Thread;

    sput-object v8, Lkotlinx/coroutines/experimental/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 78
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 79
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/coroutines/experimental/TimeSource;->unregisterTimeLoopThread()V

    .line 81
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->thread()Ljava/lang/Thread;

    :cond_7
    throw v9
.end method

.method protected unpark()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v0

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->thread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/TimeSource;->unpark(Ljava/lang/Thread;)V

    .line 98
    return-void
.end method

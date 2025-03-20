.class public final Lkotlinx/coroutines/experimental/CommonPool;
.super Lkotlinx/coroutines/experimental/CoroutineDispatcher;
.source "CommonPool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonPool.kt\nkotlinx/coroutines/experimental/CommonPool\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n41#1:107\n41#1:108\n41#1:109\n1483#2,2:110\n*E\n*S KotlinDebug\n*F\n+ 1 CommonPool.kt\nkotlinx/coroutines/experimental/CommonPool\n*L\n45#1:107\n48#1:108\n51#1:109\n87#1,2:110\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

.field private static volatile _pool:Ljava/util/concurrent/Executor;

.field private static usePrivatePool:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lkotlinx/coroutines/experimental/CommonPool;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/CommonPool;-><init>()V

    sput-object v0, Lkotlinx/coroutines/experimental/CommonPool;->INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;-><init>()V

    return-void
.end method

.method private final createPlainPool()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 58
    .local v0, "threadId":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->defaultParallelism()I

    move-result v2

    new-instance v1, Lkotlinx/coroutines/experimental/CommonPool$createPlainPool$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/experimental/CommonPool$createPlainPool$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "Executors.newFixedThread\u2026Daemon = true }\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final createPool()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->createPlainPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 53
    :goto_0
    return-object v2

    .line 45
    :cond_0
    move-object v3, p0

    .line 107
    .local v3, "this_$iv":Lkotlinx/coroutines/experimental/CommonPool;
    nop

    .line 45
    :try_start_0
    const-string v4, "java.util.concurrent.ForkJoinPool"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 47
    .local v1, "fjpClass":Ljava/lang/Class;
    sget-boolean v4, Lkotlinx/coroutines/experimental/CommonPool;->usePrivatePool:Z

    if-nez v4, :cond_4

    .line 48
    nop

    .line 108
    nop

    .line 48
    :try_start_1
    const-string v4, "commonPool"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    instance-of v6, v4, Ljava/util/concurrent/ExecutorService;

    if-nez v6, :cond_1

    move-object v4, v5

    :cond_1
    check-cast v4, Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_4

    .line 49
    .local v2, "it":Ljava/util/concurrent/ExecutorService;
    goto :goto_0

    .line 45
    .end local v1    # "fjpClass":Ljava/lang/Class;
    .end local v2    # "it":Ljava/util/concurrent/ExecutorService;
    :catch_0
    move-exception v0

    .local v0, "e$iv":Ljava/lang/Throwable;
    move-object v1, v5

    goto :goto_1

    .line 46
    .end local v0    # "e$iv":Ljava/lang/Throwable;
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->createPlainPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    goto :goto_0

    .restart local v1    # "fjpClass":Ljava/lang/Class;
    :cond_3
    move-object v4, v5

    .line 48
    goto :goto_2

    :catch_1
    move-exception v0

    .restart local v0    # "e$iv":Ljava/lang/Throwable;
    move-object v2, v5

    goto :goto_3

    .line 51
    .end local v0    # "e$iv":Ljava/lang/Throwable;
    :cond_4
    nop

    .line 109
    nop

    .line 51
    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lkotlinx/coroutines/experimental/CommonPool;->INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

    invoke-direct {v8}, Lkotlinx/coroutines/experimental/CommonPool;->defaultParallelism()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/util/concurrent/ExecutorService;

    if-nez v6, :cond_5

    move-object v4, v5

    :cond_5
    check-cast v4, Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_6

    .line 52
    .restart local v2    # "it":Ljava/util/concurrent/ExecutorService;
    goto :goto_0

    .line 51
    .end local v2    # "it":Ljava/util/concurrent/ExecutorService;
    :catch_2
    move-exception v0

    .restart local v0    # "e$iv":Ljava/lang/Throwable;
    move-object v2, v5

    goto :goto_4

    .line 53
    .end local v0    # "e$iv":Ljava/lang/Throwable;
    :cond_6
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->createPlainPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    goto :goto_0
.end method

.method private final defaultParallelism()I
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    return v0
.end method

.method private final declared-synchronized getOrCreatePoolSync()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    sget-object v1, Lkotlinx/coroutines/experimental/CommonPool;->_pool:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->createPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .local v1, "it":Ljava/util/concurrent/ExecutorService;
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/Executor;

    move-object v2, v0

    sput-object v2, Lkotlinx/coroutines/experimental/CommonPool;->_pool:Ljava/util/concurrent/Executor;

    check-cast v1, Ljava/util/concurrent/Executor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "it":Ljava/util/concurrent/ExecutorService;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p2, "block"    # Ljava/lang/Runnable;

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    nop

    :try_start_0
    sget-object v1, Lkotlinx/coroutines/experimental/CommonPool;->_pool:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v2

    invoke-interface {v2, p2}, Lkotlinx/coroutines/experimental/TimeSource;->trackTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    :goto_1
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CommonPool;->getOrCreatePoolSync()Ljava/util/concurrent/Executor;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/experimental/TimeSource;->unTrackTask()V

    .line 73
    sget-object v1, Lkotlinx/coroutines/experimental/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/experimental/DefaultExecutor;

    invoke-virtual {v1, p2}, Lkotlinx/coroutines/experimental/DefaultExecutor;->execute$kotlinx_coroutines_core(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "CommonPool"

    return-object v0
.end method

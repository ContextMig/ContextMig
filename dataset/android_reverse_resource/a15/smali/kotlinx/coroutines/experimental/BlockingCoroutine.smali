.class final Lkotlinx/coroutines/experimental/BlockingCoroutine;
.super Lkotlinx/coroutines/experimental/AbstractCoroutine;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine",
        "<TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/experimental/BlockingCoroutine\n*L\n1#1,263:1\n*E\n"
.end annotation


# instance fields
.field private final blockedThread:Ljava/lang/Thread;

.field private final eventLoop:Lkotlinx/coroutines/experimental/EventLoop;

.field private final privateEventLoop:Z


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/experimental/EventLoop;Z)V
    .locals 2
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p2, "blockedThread"    # Ljava/lang/Thread;
    .param p3, "eventLoop"    # Lkotlinx/coroutines/experimental/EventLoop;
    .param p4, "privateEventLoop"    # Z

    .prologue
    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockedThread"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V

    iput-object p2, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->blockedThread:Ljava/lang/Thread;

    iput-object p3, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->eventLoop:Lkotlinx/coroutines/experimental/EventLoop;

    iput-boolean p4, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->privateEventLoop:Z

    .line 230
    iget-boolean v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->privateEventLoop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->eventLoop:Lkotlinx/coroutines/experimental/EventLoop;

    instance-of v0, v0, Lkotlinx/coroutines/experimental/BlockingEventLoop;

    if-nez v0, :cond_0

    const-string v1, "Failed requirement."

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final joinBlocking()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/experimental/TimeSource;->registerTimeLoopThread()V

    .line 242
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .local v1, "it":Ljava/lang/InterruptedException;
    move-object v5, v1

    .line 243
    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->cancel(Ljava/lang/Throwable;)Z

    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "it":Ljava/lang/InterruptedException;
    throw v1

    .line 244
    :cond_0
    iget-object v5, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->eventLoop:Lkotlinx/coroutines/experimental/EventLoop;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lkotlinx/coroutines/experimental/EventLoop;->processNextEvent()J

    move-result-wide v2

    .line 246
    .local v2, "parkNanos":J
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    iget-boolean v5, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->privateEventLoop:Z

    if-eqz v5, :cond_4

    iget-object v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->eventLoop:Lkotlinx/coroutines/experimental/EventLoop;

    if-nez v0, :cond_3

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type kotlinx.coroutines.experimental.BlockingEventLoop"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 244
    .end local v2    # "parkNanos":J
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1

    .line 247
    .restart local v2    # "parkNanos":J
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v5

    invoke-interface {v5, p0, v2, v3}, Lkotlinx/coroutines/experimental/TimeSource;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    .line 250
    :cond_3
    check-cast v0, Lkotlinx/coroutines/experimental/BlockingEventLoop;

    .line 253
    .local v0, "$receiver":Lkotlinx/coroutines/experimental/BlockingEventLoop;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lkotlinx/coroutines/experimental/BlockingEventLoop;->setCompleted(Z)V

    .line 254
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/BlockingEventLoop;->shutdown()V

    .line 255
    nop

    .line 250
    nop

    .line 256
    .end local v0    # "$receiver":Lkotlinx/coroutines/experimental/BlockingEventLoop;
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/experimental/TimeSource;->unregisterTimeLoopThread()V

    .line 258
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v4

    .line 259
    .local v4, "state":Ljava/lang/Object;
    instance-of v5, v4, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-nez v5, :cond_6

    const/4 v1, 0x0

    :goto_2
    check-cast v1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v1, :cond_5

    .local v1, "it":Lkotlinx/coroutines/experimental/CompletedExceptionally;
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v5

    throw v5

    .line 260
    .end local v1    # "it":Lkotlinx/coroutines/experimental/CompletedExceptionally;
    :cond_5
    return-object v4

    :cond_6
    move-object v1, v4

    goto :goto_2
.end method

.method public onCancellationInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/CompletedExceptionally;)V
    .locals 2
    .param p1, "exceptionally"    # Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->blockedThread:Ljava/lang/Thread;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lkotlinx/coroutines/experimental/BlockingCoroutine;->blockedThread:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 237
    :cond_0
    return-void
.end method

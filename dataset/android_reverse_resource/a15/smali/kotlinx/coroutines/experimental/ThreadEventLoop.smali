.class public abstract Lkotlinx/coroutines/experimental/ThreadEventLoop;
.super Lkotlinx/coroutines/experimental/EventLoopBase;
.source "EventLoop.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.kt\nkotlinx/coroutines/experimental/ThreadEventLoop\n*L\n1#1,354:1\n*E\n"
.end annotation


# instance fields
.field private final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/ThreadEventLoop;->thread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected isCorrectThread()Z
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/ThreadEventLoop;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shutdown()V
    .locals 4

    .prologue
    .line 331
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ThreadEventLoop;->closeQueue()V

    .line 332
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ThreadEventLoop;->isCorrectThread()Z

    move-result v0

    sget-boolean v1, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const-string v1, "Assertion failed"

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ThreadEventLoop;->processNextEvent()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/ThreadEventLoop;->rescheduleAllDelayed()V

    .line 337
    return-void
.end method

.method protected unpark()V
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/ThreadEventLoop;->thread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 327
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/ThreadEventLoop;->thread:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/experimental/TimeSource;->unpark(Ljava/lang/Thread;)V

    .line 328
    :cond_0
    return-void
.end method

.class public abstract Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
.super Ljava/lang/Object;
.source "EventLoop.kt"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;
.implements Lkotlinx/coroutines/experimental/DisposableHandle;
.implements Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/EventLoopBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DelayedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/experimental/DisposableHandle;",
        "Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.kt\nkotlinx/coroutines/experimental/EventLoopBase$DelayedTask\n*L\n1#1,354:1\n*E\n"
.end annotation


# instance fields
.field private index:I

.field public final nanoTime:J

.field private state:I

.field final synthetic this$0:Lkotlinx/coroutines/experimental/EventLoopBase;


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 263
    check-cast p1, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->compareTo(Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;)I
    .locals 8
    .param p1, "other"    # Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;

    .prologue
    const-wide/16 v6, 0x0

    const-string v2, "other"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-wide v2, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->nanoTime:J

    iget-wide v4, p1, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->nanoTime:J

    sub-long v0, v2, v4

    .line 272
    .local v0, "dTime":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 274
    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    .line 275
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final dispose()V
    .locals 3

    .prologue
    .line 290
    monitor-enter p0

    nop

    .line 291
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 294
    :pswitch_0
    monitor-exit p0

    .line 297
    :goto_0
    return-void

    .line 292
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->this$0:Lkotlinx/coroutines/experimental/EventLoopBase;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->remove(Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;)Z

    .line 296
    :cond_0
    :goto_1
    const/4 v1, 0x1

    iput v1, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->state:I

    .line 297
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    monitor-exit p0

    goto :goto_0

    .line 293
    :pswitch_2
    :try_start_2
    sget-object v1, Lkotlinx/coroutines/experimental/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/experimental/DefaultExecutor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->removeDelayedImpl$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->index:I

    return v0
.end method

.method public final rescheduleOnShutdown()V
    .locals 3

    .prologue
    .line 281
    monitor-enter p0

    nop

    .line 282
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->this$0:Lkotlinx/coroutines/experimental/EventLoopBase;

    iget-object v1, v1, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v1, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->remove(Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    const/4 v1, 0x2

    iput v1, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->state:I

    .line 285
    sget-object v1, Lkotlinx/coroutines/experimental/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/experimental/DefaultExecutor;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/experimental/DefaultExecutor;->schedule$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;)V

    .line 288
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    monitor-exit p0

    goto :goto_0

    .line 287
    :cond_2
    const/4 v1, 0x1

    :try_start_2
    iput v1, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 266
    iput p1, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->index:I

    return-void
.end method

.method public final timeToExecute(J)Z
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 279
    iget-wide v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->nanoTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delayed[nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->nanoTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public interface abstract Lkotlinx/coroutines/experimental/TimeSource;
.super Ljava/lang/Object;
.source "TimeSource.kt"


# virtual methods
.method public abstract nanoTime()J
.end method

.method public abstract parkNanos(Ljava/lang/Object;J)V
.end method

.method public abstract registerTimeLoopThread()V
.end method

.method public abstract trackTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end method

.method public abstract unTrackTask()V
.end method

.method public abstract unpark(Ljava/lang/Thread;)V
.end method

.method public abstract unregisterTimeLoopThread()V
.end method

.class public final Lrx/internal/schedulers/EventLoopsScheduler;
.super Lrx/Scheduler;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lrx/internal/schedulers/SchedulerLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;,
        Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;,
        Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    }
.end annotation


# static fields
.field static final KEY_MAX_THREADS:Ljava/lang/String; = "rx.scheduler.max-computation-threads"

.field static final MAX_THREADS:I

.field static final NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

.field static final SHUTDOWN_WORKER:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    const-string v3, "rx.scheduler.max-computation-threads"

    invoke-static {v3, v5}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    .local v1, "maxThreads":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 38
    .local v2, "ncpu":I
    if-lez v1, :cond_0

    if-le v1, v2, :cond_1

    .line 39
    :cond_0
    move v0, v2

    .line 43
    .local v0, "max":I
    :goto_0
    sput v0, Lrx/internal/schedulers/EventLoopsScheduler;->MAX_THREADS:I

    .line 48
    new-instance v3, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    sget-object v4, Lrx/internal/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v3, v4}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v3, Lrx/internal/schedulers/EventLoopsScheduler;->SHUTDOWN_WORKER:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .line 49
    sget-object v3, Lrx/internal/schedulers/EventLoopsScheduler;->SHUTDOWN_WORKER:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    invoke-virtual {v3}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->unsubscribe()V

    .line 83
    new-instance v3, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v3, Lrx/internal/schedulers/EventLoopsScheduler;->NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    return-void

    .line 41
    .end local v0    # "max":I
    :cond_1
    move v0, v1

    .restart local v0    # "max":I
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 92
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 93
    iput-object p1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/schedulers/EventLoopsScheduler;->NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    invoke-virtual {p0}, Lrx/internal/schedulers/EventLoopsScheduler;->start()V

    .line 96
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 2

    .prologue
    .line 100
    new-instance v1, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v0

    invoke-direct {v1, v0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;-><init>(Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;)V

    return-object v1
.end method

.method public scheduleDirect(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 4
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 132
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v0

    .line 133
    .local v0, "pw":Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v1

    return-object v1
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 114
    :cond_0
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    .line 115
    .local v0, "curr":Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    sget-object v1, Lrx/internal/schedulers/EventLoopsScheduler;->NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    if-ne v0, v1, :cond_1

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/EventLoopsScheduler;->NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->shutdown()V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    sget v2, Lrx/internal/schedulers/EventLoopsScheduler;->MAX_THREADS:I

    invoke-direct {v0, v1, v2}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 106
    .local v0, "update":Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/EventLoopsScheduler;->NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->shutdown()V

    .line 109
    :cond_0
    return-void
.end method

.class public abstract Lkotlinx/coroutines/experimental/EventLoopBase;
.super Lkotlinx/coroutines/experimental/CoroutineDispatcher;
.source "EventLoop.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/EventLoop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.kt\nkotlinx/coroutines/experimental/EventLoopBase\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/experimental/internal/ThreadSafeHeap\n+ 3 AtomicFU.kt\nkotlinx/atomicfu/AtomicFU\n*L\n1#1,354:1\n48#2,7:355\n119#3,2:362\n119#3,2:364\n119#3,2:366\n*E\n*S KotlinDebug\n*F\n+ 1 EventLoop.kt\nkotlinx/coroutines/experimental/EventLoopBase\n*L\n138#1,7:355\n162#1,2:362\n189#1,2:364\n207#1,2:366\n*E\n"
.end annotation


# static fields
.field static final _delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final _queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile _delayed:Ljava/lang/Object;

.field private volatile _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/experimental/EventLoopBase;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_queue"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lkotlinx/coroutines/experimental/EventLoopBase;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_delayed"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;-><init>()V

    .line 85
    iput-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue:Ljava/lang/Object;

    .line 88
    iput-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method private final dequeue()Ljava/lang/Runnable;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 189
    move-object v0, p0

    .line 364
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/EventLoopBase;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue:Ljava/lang/Object;

    .line 190
    .local v1, "queue":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v4

    .line 199
    .end local v1    # "queue":Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 192
    .restart local v1    # "queue":Ljava/lang/Object;
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    if-eqz v3, :cond_4

    .line 193
    if-nez v1, :cond_1

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.experimental.Queue<kotlinx.coroutines.experimental.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.experimental.internal.LockFreeMPSCQueueCore<kotlinx.coroutines.experimental.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, "result":Ljava/lang/Object;
    sget-object v3, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/experimental/internal/Symbol;

    if-eq v2, v3, :cond_2

    check-cast v2, Ljava/lang/Runnable;

    goto :goto_1

    .line 195
    :cond_2
    sget-object v5, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->next()Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    move-result-object v3

    invoke-virtual {v5, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .end local v2    # "result":Ljava/lang/Object;
    :cond_3
    nop

    .line 364
    goto :goto_0

    .line 197
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/experimental/EventLoopKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v3

    if-ne v1, v3, :cond_5

    move-object v2, v4

    goto :goto_1

    .line 199
    :cond_5
    sget-object v3, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_6

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.experimental.Runnable /* = java.lang.Runnable */"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    check-cast v1, Ljava/lang/Runnable;

    .end local v1    # "queue":Ljava/lang/Object;
    move-object v2, v1

    goto :goto_1
.end method

.method private final enqueueImpl(Ljava/lang/Runnable;)Z
    .locals 7
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    move-object v0, p0

    .line 362
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/EventLoopBase;
    :goto_0
    iget-object v2, v0, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue:Ljava/lang/Object;

    .line 163
    .local v2, "queue":Ljava/lang/Object;
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 180
    :goto_1
    return v3

    .line 164
    :cond_0
    if-nez v2, :cond_1

    .line 165
    sget-object v3, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v6, 0x0

    invoke-virtual {v3, p0, v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_1

    .line 166
    :cond_1
    instance-of v3, v2, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    if-eqz v3, :cond_4

    .line 167
    if-nez v2, :cond_2

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.experimental.Queue<kotlinx.coroutines.experimental.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.experimental.internal.LockFreeMPSCQueueCore<kotlinx.coroutines.experimental.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->addLast(Ljava/lang/Object;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 182
    :cond_3
    :goto_2
    nop

    nop

    .line 362
    goto :goto_0

    :pswitch_0
    move v3, v5

    .line 168
    goto :goto_1

    :pswitch_1
    move v3, v4

    .line 169
    goto :goto_1

    .line 170
    :pswitch_2
    sget-object v6, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->next()Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    move-result-object v3

    invoke-virtual {v6, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/experimental/EventLoopKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v3

    if-ne v2, v3, :cond_5

    move v3, v4

    goto :goto_1

    .line 177
    :cond_5
    new-instance v1, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;-><init>(I)V

    .line 178
    .local v1, "newQueue":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    if-nez v2, :cond_6

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.experimental.Runnable /* = java.lang.Runnable */"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    move-object v3, v2

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->addLast(Ljava/lang/Object;)I

    .line 179
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->addLast(Ljava/lang/Object;)I

    .line 180
    sget-object v3, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final getNextTime()J
    .locals 8

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 113
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->isQueueEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 116
    :goto_0
    return-wide v2

    .line 114
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;

    if-eqz v0, :cond_1

    .line 115
    .local v0, "delayed":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->peek()Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;

    if-eqz v1, :cond_2

    .line 116
    .local v1, "nextDelayedTask":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    iget-wide v4, v1, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->nanoTime:J

    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v6

    invoke-interface {v6}, Lkotlinx/coroutines/experimental/TimeSource;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    goto :goto_0

    .end local v0    # "delayed":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
    .end local v1    # "nextDelayedTask":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    :cond_1
    move-wide v2, v4

    .line 114
    goto :goto_0

    .restart local v0    # "delayed":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
    :cond_2
    move-wide v2, v4

    .line 115
    goto :goto_0
.end method

.method private final isDelayedEmpty()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;

    .line 108
    .local v0, "delayed":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final isQueueEmpty()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 98
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue:Ljava/lang/Object;

    .line 99
    .local v0, "queue":Ljava/lang/Object;
    if-nez v0, :cond_1

    .end local v0    # "queue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 101
    .restart local v0    # "queue":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    if-eqz v2, :cond_2

    check-cast v0, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    .end local v0    # "queue":Ljava/lang/Object;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->isEmpty()Z

    move-result v1

    goto :goto_0

    .line 102
    .restart local v0    # "queue":Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/experimental/EventLoopKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final scheduleImpl(Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;)Z
    .locals 5
    .param p1, "delayedTask"    # Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;

    .prologue
    .line 237
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 242
    .end local p1    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    :goto_0
    return v2

    .line 238
    .restart local p1    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;

    if-eqz v2, :cond_1

    move-object v1, v2

    .line 242
    .local v1, "delayed":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
    :goto_1
    check-cast p1, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    .end local p1    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    new-instance v2, Lkotlinx/coroutines/experimental/EventLoopBase$scheduleImpl$1;

    invoke-direct {v2, p0}, Lkotlinx/coroutines/experimental/EventLoopBase$scheduleImpl$1;-><init>(Lkotlinx/coroutines/experimental/EventLoopBase;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, p1, v2}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->addLastIf(Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function0;)Z

    move-result v2

    goto :goto_0

    .end local v1    # "delayed":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
    .restart local p1    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    :cond_1
    move-object v0, p0

    .line 238
    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopBase;

    .line 239
    .local v0, "$receiver":Lkotlinx/coroutines/experimental/EventLoopBase;
    sget-object v2, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    new-instance v4, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;

    invoke-direct {v4}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;-><init>()V

    invoke-virtual {v2, v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    iget-object v2, v0, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast v2, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected final closeQueue()V
    .locals 6

    .prologue
    .line 206
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->isCompleted()Z

    move-result v3

    sget-boolean v4, Lkotlin/_Assertions;->ENABLED:Z

    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    const-string v4, "Assertion failed"

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 207
    :cond_0
    move-object v0, p0

    .line 366
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/EventLoopBase;
    :goto_0
    iget-object v2, v0, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue:Ljava/lang/Object;

    .line 208
    .local v2, "queue":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 209
    sget-object v3, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    invoke-static {}, Lkotlinx/coroutines/experimental/EventLoopKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 220
    .end local v2    # "queue":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void

    .line 210
    .restart local v2    # "queue":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    if-eqz v3, :cond_3

    .line 211
    check-cast v2, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    .end local v2    # "queue":Ljava/lang/Object;
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->close()Z

    goto :goto_1

    .line 214
    .restart local v2    # "queue":Ljava/lang/Object;
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/experimental/EventLoopKt;->access$getCLOSED_EMPTY$p()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 218
    new-instance v1, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;-><init>(I)V

    .line 219
    .local v1, "newQueue":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    if-nez v2, :cond_4

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.experimental.Runnable /* = java.lang.Runnable */"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move-object v3, v2

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;->addLast(Ljava/lang/Object;)I

    .line 220
    sget-object v3, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 222
    .end local v1    # "newQueue":Lkotlinx/coroutines/experimental/internal/LockFreeMPSCQueueCore;
    :cond_5
    nop

    nop

    .line 366
    goto :goto_0
.end method

.method public dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p2, "block"    # Ljava/lang/Runnable;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/experimental/EventLoopBase;->execute$kotlinx_coroutines_core(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final execute$kotlinx_coroutines_core(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/EventLoopBase;->enqueueImpl(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->unpark()V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v0, Lkotlinx/coroutines/experimental/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/experimental/DefaultExecutor;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/experimental/DefaultExecutor;->execute$kotlinx_coroutines_core(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract isCompleted()Z
.end method

.method protected abstract isCorrectThread()Z
.end method

.method protected final isEmpty()Z
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->isQueueEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->isDelayedEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processNextEvent()J
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 129
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->isCorrectThread()Z

    move-result v8

    if-nez v8, :cond_0

    const-wide v8, 0x7fffffffffffffffL

    .line 148
    :goto_0
    return-wide v8

    .line 131
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;

    .line 132
    .local v2, "delayed":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 133
    invoke-static {}, Lkotlinx/coroutines/experimental/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/experimental/TimeSource;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/coroutines/experimental/TimeSource;->nanoTime()J

    move-result-wide v6

    .line 134
    .local v6, "now":J
    :cond_1
    move-object v5, v2

    .line 355
    .local v5, "this_$iv":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
    monitor-enter v5

    nop

    .line 356
    :try_start_0
    invoke-virtual {v5}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 357
    .local v3, "first$iv":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    move-object v0, v3

    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;

    move-object v4, v0

    .line 139
    .local v4, "it":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    invoke-virtual {v4, v6, v7}, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->timeToExecute(J)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 140
    check-cast v4, Ljava/lang/Runnable;

    .end local v4    # "it":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    invoke-direct {p0, v4}, Lkotlinx/coroutines/experimental/EventLoopBase;->enqueueImpl(Ljava/lang/Runnable;)Z

    move-result v8

    .line 139
    :goto_1
    if-eqz v8, :cond_6

    .line 358
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 357
    :goto_2
    nop

    .line 355
    .end local v3    # "first$iv":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :goto_3
    monitor-exit v5

    .line 361
    check-cast v8, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;

    if-nez v8, :cond_1

    .line 147
    .end local v5    # "this_$iv":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
    .end local v6    # "now":J
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->dequeue()Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 148
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->getNextTime()J

    move-result-wide v8

    goto :goto_0

    .restart local v5    # "this_$iv":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;
    .restart local v6    # "now":J
    :cond_4
    move-object v8, v9

    .line 356
    goto :goto_3

    .restart local v3    # "first$iv":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    .restart local v4    # "it":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    :cond_5
    move v8, v10

    .line 142
    goto :goto_1

    .end local v4    # "it":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    :cond_6
    move-object v8, v9

    .line 360
    goto :goto_2

    .line 355
    .end local v3    # "first$iv":Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;
    :catchall_0
    move-exception v8

    monitor-exit v5

    throw v8
.end method

.method public final removeDelayedImpl$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;)V
    .locals 1
    .param p1, "delayedTask"    # Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;

    .prologue
    const-string v0, "delayedTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    .end local p1    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->remove(Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;)Z

    .line 247
    :cond_0
    return-void
.end method

.method protected final rescheduleAllDelayed()V
    .locals 2

    .prologue
    .line 257
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/internal/ThreadSafeHeap;->removeFirstOrNull()Lkotlinx/coroutines/experimental/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;

    if-eqz v0, :cond_0

    .line 259
    .local v0, "delayedTask":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;->rescheduleOnShutdown()V

    goto :goto_0

    .line 261
    .end local v0    # "delayedTask":Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;
    :cond_0
    return-void
.end method

.method protected final resetAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_queue:Ljava/lang/Object;

    .line 252
    iput-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase;->_delayed:Ljava/lang/Object;

    .line 253
    return-void
.end method

.method public final schedule$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;)V
    .locals 1
    .param p1, "delayedTask"    # Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;

    .prologue
    const-string v0, "delayedTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/EventLoopBase;->scheduleImpl(Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopBase;->unpark()V

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    sget-object v0, Lkotlinx/coroutines/experimental/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/experimental/DefaultExecutor;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/experimental/DefaultExecutor;->schedule$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;)V

    goto :goto_0
.end method

.method protected abstract unpark()V
.end method

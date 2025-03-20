.class public final Lkotlinx/coroutines/experimental/DefaultTimeSource;
.super Ljava/lang/Object;
.source "TimeSource.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/TimeSource;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/experimental/DefaultTimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lkotlinx/coroutines/experimental/DefaultTimeSource;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/DefaultTimeSource;-><init>()V

    sput-object v0, Lkotlinx/coroutines/experimental/DefaultTimeSource;->INSTANCE:Lkotlinx/coroutines/experimental/DefaultTimeSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public parkNanos(Ljava/lang/Object;J)V
    .locals 2
    .param p1, "blocker"    # Ljava/lang/Object;
    .param p2, "nanos"    # J

    .prologue
    const-string v0, "blocker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p1, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 40
    return-void
.end method

.method public registerTimeLoopThread()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public trackTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "block"    # Ljava/lang/Runnable;

    .prologue
    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    return-object p1
.end method

.method public unTrackTask()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public unpark(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 44
    return-void
.end method

.method public unregisterTimeLoopThread()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

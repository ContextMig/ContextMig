.class public final Lkotlinx/coroutines/experimental/BlockingEventLoop;
.super Lkotlinx/coroutines/experimental/ThreadEventLoop;
.source "EventLoop.kt"


# instance fields
.field private volatile isCompleted:Z


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/ThreadEventLoop;-><init>(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lkotlinx/coroutines/experimental/BlockingEventLoop;->isCompleted:Z

    return v0
.end method

.method public setCompleted(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lkotlinx/coroutines/experimental/BlockingEventLoop;->isCompleted:Z

    return-void
.end method

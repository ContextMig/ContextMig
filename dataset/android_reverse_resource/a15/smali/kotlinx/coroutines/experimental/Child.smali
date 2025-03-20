.class public final Lkotlinx/coroutines/experimental/Child;
.super Lkotlinx/coroutines/experimental/JobCancellationNode;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/experimental/JobCancellationNode",
        "<",
        "Lkotlinx/coroutines/experimental/JobSupport;",
        ">;"
    }
.end annotation


# instance fields
.field public final childJob:Lkotlinx/coroutines/experimental/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/JobSupport;Lkotlinx/coroutines/experimental/Job;)V
    .locals 1
    .param p1, "parent"    # Lkotlinx/coroutines/experimental/JobSupport;
    .param p2, "childJob"    # Lkotlinx/coroutines/experimental/Job;

    .prologue
    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childJob"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1483
    check-cast p1, Lkotlinx/coroutines/experimental/Job;

    .end local p1    # "parent":Lkotlinx/coroutines/experimental/JobSupport;
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobCancellationNode;-><init>(Lkotlinx/coroutines/experimental/Job;)V

    iput-object p2, p0, Lkotlinx/coroutines/experimental/Child;->childJob:Lkotlinx/coroutines/experimental/Job;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1480
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/Child;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/Throwable;

    .prologue
    .line 1486
    iget-object v1, p0, Lkotlinx/coroutines/experimental/Child;->childJob:Lkotlinx/coroutines/experimental/Job;

    iget-object v0, p0, Lkotlinx/coroutines/experimental/Child;->job:Lkotlinx/coroutines/experimental/Job;

    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/experimental/Job;->cancel(Ljava/lang/Throwable;)Z

    .line 1487
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/Child;->childJob:Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

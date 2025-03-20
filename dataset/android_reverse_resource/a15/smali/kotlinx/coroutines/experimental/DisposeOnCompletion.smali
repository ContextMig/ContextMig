.class public final Lkotlinx/coroutines/experimental/DisposeOnCompletion;
.super Lkotlinx/coroutines/experimental/JobNode;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/experimental/JobNode",
        "<",
        "Lkotlinx/coroutines/experimental/Job;",
        ">;"
    }
.end annotation


# instance fields
.field private final handle:Lkotlinx/coroutines/experimental/DisposableHandle;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/Job;Lkotlinx/coroutines/experimental/DisposableHandle;)V
    .locals 1
    .param p1, "job"    # Lkotlinx/coroutines/experimental/Job;
    .param p2, "handle"    # Lkotlinx/coroutines/experimental/DisposableHandle;

    .prologue
    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1419
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobNode;-><init>(Lkotlinx/coroutines/experimental/Job;)V

    iput-object p2, p0, Lkotlinx/coroutines/experimental/DisposeOnCompletion;->handle:Lkotlinx/coroutines/experimental/DisposableHandle;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1416
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/DisposeOnCompletion;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/Throwable;

    .prologue
    .line 1420
    iget-object v0, p0, Lkotlinx/coroutines/experimental/DisposeOnCompletion;->handle:Lkotlinx/coroutines/experimental/DisposableHandle;

    invoke-interface {v0}, Lkotlinx/coroutines/experimental/DisposableHandle;->dispose()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisposeOnCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/DisposeOnCompletion;->handle:Lkotlinx/coroutines/experimental/DisposableHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

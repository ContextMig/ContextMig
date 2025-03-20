.class public abstract Lkotlinx/coroutines/experimental/JobCancellationNode;
.super Lkotlinx/coroutines/experimental/JobNode;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/experimental/Job;",
        ">",
        "Lkotlinx/coroutines/experimental/JobNode",
        "<TJ;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/Job;)V
    .locals 1
    .param p1, "job"    # Lkotlinx/coroutines/experimental/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .prologue
    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1466
    invoke-direct {p0, p1}, Lkotlinx/coroutines/experimental/JobNode;-><init>(Lkotlinx/coroutines/experimental/Job;)V

    return-void
.end method

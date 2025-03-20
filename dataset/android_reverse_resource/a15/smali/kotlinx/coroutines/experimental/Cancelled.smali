.class public final Lkotlinx/coroutines/experimental/Cancelled;
.super Lkotlinx/coroutines/experimental/CompletedExceptionally;
.source "CompletedExceptionally.kt"


# instance fields
.field private final job:Lkotlinx/coroutines/experimental/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/Job;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "job"    # Lkotlinx/coroutines/experimental/Job;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/experimental/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/Cancelled;->job:Lkotlinx/coroutines/experimental/Job;

    return-void
.end method


# virtual methods
.method protected createException()Ljava/lang/Throwable;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lkotlinx/coroutines/experimental/JobCancellationException;

    const-string v1, "Job was cancelled normally"

    const/4 v2, 0x0

    iget-object v3, p0, Lkotlinx/coroutines/experimental/Cancelled;->job:Lkotlinx/coroutines/experimental/Job;

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/experimental/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/experimental/Job;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

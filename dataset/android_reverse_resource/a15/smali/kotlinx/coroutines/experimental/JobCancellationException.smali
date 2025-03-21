.class public final Lkotlinx/coroutines/experimental/JobCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "Exceptions.kt"


# instance fields
.field private final job:Lkotlinx/coroutines/experimental/Job;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/experimental/Job;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "job"    # Lkotlinx/coroutines/experimental/Job;

    .prologue
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lkotlinx/coroutines/experimental/JobCancellationException;->job:Lkotlinx/coroutines/experimental/Job;

    .line 47
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/experimental/JobCancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 50
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/experimental/JobCancellationException;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Lkotlinx/coroutines/experimental/JobCancellationException;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/JobCancellationException;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/JobCancellationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobCancellationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/experimental/JobCancellationException;

    iget-object v0, v0, Lkotlinx/coroutines/experimental/JobCancellationException;->job:Lkotlinx/coroutines/experimental/Job;

    iget-object v1, p0, Lkotlinx/coroutines/experimental/JobCancellationException;->job:Lkotlinx/coroutines/experimental/Job;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/experimental/JobCancellationException;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/JobCancellationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobCancellationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobCancellationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlinx/coroutines/experimental/JobCancellationException;->job:Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/JobCancellationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/util/concurrent/CancellationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; job="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/JobCancellationException;->job:Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lkotlinx/coroutines/experimental/CancellableContinuationImpl;
.super Lkotlinx/coroutines/experimental/AbstractContinuation;
.source "CancellableContinuation.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlinx/coroutines/experimental/CancellableContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/AbstractContinuation",
        "<TT;>;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/experimental/CancellableContinuation",
        "<TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/experimental/CancellableContinuationImpl\n*L\n1#1,296:1\n*E\n"
.end annotation


# instance fields
.field private volatile _context:Lkotlin/coroutines/experimental/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;I)V
    .locals 1
    .param p1, "delegate"    # Lkotlin/coroutines/experimental/Continuation;
    .param p2, "resumeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/AbstractContinuation;-><init>(Lkotlin/coroutines/experimental/Continuation;I)V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->_context:Lkotlin/coroutines/experimental/CoroutineContext;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getDelegate()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v2

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v2, v1}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .local v0, "it":Lkotlin/coroutines/experimental/CoroutineContext;
    iput-object v0, p0, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->_context:Lkotlin/coroutines/experimental/CoroutineContext;

    goto :goto_0
.end method

.method public getOnCancelMode$kotlinx_coroutines_core()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public getSuccessfulResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 282
    instance-of v0, p1, Lkotlinx/coroutines/experimental/CompletedIdempotentResult;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/experimental/CompletedIdempotentResult;

    .end local p1    # "state":Ljava/lang/Object;
    iget-object p1, p1, Lkotlinx/coroutines/experimental/CompletedIdempotentResult;->result:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public initCancellability()V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getDelegate()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    sget-object v0, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v1, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->initParentJobInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/Job;)V

    .line 229
    return-void
.end method

.method public nameString$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CancellableContinuation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/CancellableContinuationImpl;->getDelegate()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/experimental/DebugKt;->toDebugString(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lkotlinx/coroutines/experimental/AbstractCoroutine;
.super Lkotlinx/coroutines/experimental/JobSupport;
.source "AbstractCoroutine.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;
.implements Lkotlinx/coroutines/experimental/CoroutineScope;
.implements Lkotlinx/coroutines/experimental/Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/JobSupport;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<TT;>;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Lkotlinx/coroutines/experimental/Job;"
    }
.end annotation


# instance fields
.field private final context:Lkotlin/coroutines/experimental/CoroutineContext;

.field private final parentContext:Lkotlin/coroutines/experimental/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V
    .locals 2
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p2, "active"    # Z

    .prologue
    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p2}, Lkotlinx/coroutines/experimental/JobSupport;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/AbstractCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    .line 49
    iget-object v1, p0, Lkotlinx/coroutines/experimental/AbstractCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v1, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/experimental/AbstractCoroutine;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport;->cancel(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lkotlinx/coroutines/experimental/AbstractCoroutine;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object v0
.end method

.method public getDefaultResumeMode$kotlinx_coroutines_core()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public final handleException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lkotlinx/coroutines/experimental/AbstractCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-static {v0, p1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public final initParentJob$kotlinx_coroutines_core()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lkotlinx/coroutines/experimental/AbstractCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    sget-object v0, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v1, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->initParentJobInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/Job;)V

    .line 62
    return-void
.end method

.method public invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;
    .locals 1
    .param p1, "onCancelling"    # Z
    .param p2, "invokeImmediately"    # Z
    .param p3, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/experimental/DisposableHandle;"
        }
    .end annotation

    .prologue
    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-super {p0, p1, p2, p3}, Lkotlinx/coroutines/experimental/JobSupport;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    move-result-object v0

    return-object v0
.end method

.method public nameString$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lkotlinx/coroutines/experimental/AbstractCoroutine;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->getCoroutineName(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    .local v0, "coroutineName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lkotlinx/coroutines/experimental/JobSupport;->nameString$kotlinx_coroutines_core()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "coroutineName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 126
    :cond_0
    invoke-super {p0}, Lkotlinx/coroutines/experimental/JobSupport;->nameString$kotlinx_coroutines_core()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onCancellation(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    return-void
.end method

.method public onCancellationInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/CompletedExceptionally;)V
    .locals 1
    .param p1, "exceptionally"    # Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->onCancellation(Ljava/lang/Throwable;)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    return-void
.end method

.method protected onCompletedExceptionally(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onCompletionInternal$kotlinx_coroutines_core(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;
    .param p2, "mode"    # I

    .prologue
    .line 99
    instance-of v0, p1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .end local p1    # "state":Ljava/lang/Object;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->onCompletedExceptionally(Ljava/lang/Throwable;)V

    .line 103
    :goto_0
    return-void

    .line 102
    .restart local p1    # "state":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->onCompleted(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final onStartInternal$kotlinx_coroutines_core()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->onStart()V

    .line 72
    return-void
.end method

.method public final resume(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getDefaultResumeMode$kotlinx_coroutines_core()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;I)Z

    .line 112
    return-void
.end method

.method public final resumeWithException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/experimental/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->getDefaultResumeMode$kotlinx_coroutines_core()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;I)Z

    .line 119
    return-void
.end method

.method public final start(Lkotlinx/coroutines/experimental/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "start"    # Lkotlinx/coroutines/experimental/CoroutineStart;
    .param p2, "receiver"    # Ljava/lang/Object;
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/CoroutineStart;",
            "TR;",
            "Lkotlin/jvm/functions/Function2",
            "<-TR;-",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractCoroutine;->initParentJob$kotlinx_coroutines_core()V

    .line 161
    check-cast p0, Lkotlin/coroutines/experimental/Continuation;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/AbstractCoroutine;
    invoke-virtual {p1, p3, p2, p0}, Lkotlinx/coroutines/experimental/CoroutineStart;->invoke(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V

    .line 162
    return-void
.end method

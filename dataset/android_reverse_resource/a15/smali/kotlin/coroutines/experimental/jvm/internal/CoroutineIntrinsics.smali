.class public final Lkotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics;
.super Ljava/lang/Object;
.source "CoroutineIntrinsics.kt"


# direct methods
.method public static final interceptContinuationIfNeeded(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p1, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/ContinuationInterceptor;->interceptContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .end local p1    # "continuation":Lkotlin/coroutines/experimental/Continuation;
    :cond_0
    return-object p1
.end method

.method public static final normalizeContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1
    .param p0, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const-string v0, "continuation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->getFacade()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    .end local p0    # "continuation":Lkotlin/coroutines/experimental/Continuation;
    :cond_0
    return-object p0

    .restart local p0    # "continuation":Lkotlin/coroutines/experimental/Continuation;
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

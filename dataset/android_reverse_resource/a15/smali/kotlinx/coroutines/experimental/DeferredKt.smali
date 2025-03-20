.class public final Lkotlinx/coroutines/experimental/DeferredKt;
.super Ljava/lang/Object;
.source "Deferred.kt"


# direct methods
.method public static final async(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Deferred;
    .locals 3
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p1, "start"    # Lkotlinx/coroutines/experimental/CoroutineStart;
    .param p2, "parent"    # Lkotlinx/coroutines/experimental/Job;
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlinx/coroutines/experimental/CoroutineStart;",
            "Lkotlinx/coroutines/experimental/Job;",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/experimental/Deferred",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "start"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {p0, p2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->newCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/Job;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    .line 170
    .local v1, "newContext":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/CoroutineStart;->isLazy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    new-instance v2, Lkotlinx/coroutines/experimental/LazyDeferredCoroutine;

    invoke-direct {v2, v1, p3}, Lkotlinx/coroutines/experimental/LazyDeferredCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    check-cast v2, Lkotlinx/coroutines/experimental/DeferredCoroutine;

    move-object v0, v2

    .line 173
    .local v0, "coroutine":Lkotlinx/coroutines/experimental/DeferredCoroutine;
    :goto_0
    invoke-virtual {v0, p1, v0, p3}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->start(Lkotlinx/coroutines/experimental/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 174
    check-cast v0, Lkotlinx/coroutines/experimental/Deferred;

    .end local v0    # "coroutine":Lkotlinx/coroutines/experimental/DeferredCoroutine;
    return-object v0

    .line 172
    :cond_0
    new-instance v0, Lkotlinx/coroutines/experimental/DeferredCoroutine;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/experimental/DeferredCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V

    goto :goto_0
.end method

.method public static bridge synthetic async$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Deferred;
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->getDefaultDispatcher()Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    move-object p0, v0

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    .line 165
    sget-object p1, Lkotlinx/coroutines/experimental/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

    :cond_1
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_2

    .line 166
    const/4 v0, 0x0

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    :goto_0
    invoke-static {p0, p1, v0, p3}, Lkotlinx/coroutines/experimental/DeferredKt;->async(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

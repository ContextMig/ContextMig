.class public final Lkotlinx/coroutines/experimental/BuildersKt;
.super Ljava/lang/Object;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/experimental/BuildersKt\n*L\n1#1,263:1\n*E\n"
.end annotation


# direct methods
.method public static final launch(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Job;
    .locals 3
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p1, "start"    # Lkotlinx/coroutines/experimental/CoroutineStart;
    .param p2, "parent"    # Lkotlinx/coroutines/experimental/Job;
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlinx/coroutines/experimental/CoroutineStart;",
            "Lkotlinx/coroutines/experimental/Job;",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/experimental/Job;"
        }
    .end annotation

    .prologue
    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "start"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p0, p2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->newCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/Job;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    .line 65
    .local v1, "newContext":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/CoroutineStart;->isLazy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    new-instance v2, Lkotlinx/coroutines/experimental/LazyStandaloneCoroutine;

    invoke-direct {v2, v1, p3}, Lkotlinx/coroutines/experimental/LazyStandaloneCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    check-cast v2, Lkotlinx/coroutines/experimental/StandaloneCoroutine;

    move-object v0, v2

    .line 68
    .local v0, "coroutine":Lkotlinx/coroutines/experimental/StandaloneCoroutine;
    :goto_0
    invoke-virtual {v0, p1, v0, p3}, Lkotlinx/coroutines/experimental/StandaloneCoroutine;->start(Lkotlinx/coroutines/experimental/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 69
    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    .end local v0    # "coroutine":Lkotlinx/coroutines/experimental/StandaloneCoroutine;
    return-object v0

    .line 67
    :cond_0
    new-instance v0, Lkotlinx/coroutines/experimental/StandaloneCoroutine;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/experimental/StandaloneCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V

    goto :goto_0
.end method

.method public static bridge synthetic launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->getDefaultDispatcher()Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    move-object p0, v0

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    .line 60
    sget-object p1, Lkotlinx/coroutines/experimental/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

    :cond_1
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x0

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    :goto_0
    invoke-static {p0, p1, v0, p3}, Lkotlinx/coroutines/experimental/BuildersKt;->launch(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/experimental/Job;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public static final runBlocking(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 9
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v6, "context"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "block"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 177
    .local v2, "currentThread":Ljava/lang/Thread;
    sget-object v6, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v6, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v6}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    .line 178
    .local v0, "contextInterceptor":Lkotlin/coroutines/experimental/ContinuationInterceptor;
    if-nez v0, :cond_0

    const/4 v5, 0x1

    .line 179
    .local v5, "privateEventLoop":Z
    :goto_0
    if-eqz v5, :cond_1

    new-instance v6, Lkotlinx/coroutines/experimental/BlockingEventLoop;

    const-string v8, "currentThread"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v2}, Lkotlinx/coroutines/experimental/BlockingEventLoop;-><init>(Ljava/lang/Thread;)V

    check-cast v6, Lkotlinx/coroutines/experimental/EventLoop;

    move-object v3, v6

    .line 180
    .local v3, "eventLoop":Lkotlinx/coroutines/experimental/EventLoop;
    :goto_1
    if-eqz v5, :cond_3

    if-nez v3, :cond_2

    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.coroutines.experimental.ContinuationInterceptor"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 178
    .end local v3    # "eventLoop":Lkotlinx/coroutines/experimental/EventLoop;
    .end local v5    # "privateEventLoop":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 179
    .restart local v5    # "privateEventLoop":Z
    :cond_1
    instance-of v6, v0, Lkotlinx/coroutines/experimental/EventLoop;

    if-nez v6, :cond_4

    move-object v6, v7

    :goto_2
    check-cast v6, Lkotlinx/coroutines/experimental/EventLoop;

    move-object v3, v6

    goto :goto_1

    .restart local v3    # "eventLoop":Lkotlinx/coroutines/experimental/EventLoop;
    :cond_2
    move-object v6, v3

    .line 180
    check-cast v6, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    check-cast v6, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {p0, v6}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p0

    .end local p0    # "context":Lkotlin/coroutines/experimental/CoroutineContext;
    :cond_3
    const/4 v6, 0x2

    invoke-static {p0, v7, v6, v7}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->newCoroutineContext$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/Job;ILjava/lang/Object;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v4

    .line 183
    .local v4, "newContext":Lkotlin/coroutines/experimental/CoroutineContext;
    new-instance v1, Lkotlinx/coroutines/experimental/BlockingCoroutine;

    const-string v6, "currentThread"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlinx/coroutines/experimental/BlockingCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/experimental/EventLoop;Z)V

    .line 184
    .local v1, "coroutine":Lkotlinx/coroutines/experimental/BlockingCoroutine;
    sget-object v6, Lkotlinx/coroutines/experimental/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/experimental/CoroutineStart;

    invoke-virtual {v1, v6, v1, p1}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->start(Lkotlinx/coroutines/experimental/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 185
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/BlockingCoroutine;->joinBlocking()Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .end local v1    # "coroutine":Lkotlinx/coroutines/experimental/BlockingCoroutine;
    .end local v3    # "eventLoop":Lkotlinx/coroutines/experimental/EventLoop;
    .end local v4    # "newContext":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local p0    # "context":Lkotlin/coroutines/experimental/CoroutineContext;
    :cond_4
    move-object v6, v0

    goto :goto_2
.end method

.method public static bridge synthetic runBlocking$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    :goto_0
    invoke-static {v0, p1}, Lkotlinx/coroutines/experimental/BuildersKt;->runBlocking(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.class public final Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1483#2,2:108\n*E\n*S KotlinDebug\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt\n*L\n47#1,2:108\n*E\n"
.end annotation


# direct methods
.method public static final handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 10
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const-string v8, "context"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "exception"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    nop

    .line 38
    :try_start_0
    sget-object v8, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;

    check-cast v8, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v8}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;

    if-eqz v7, :cond_1

    .line 39
    .local v7, "it":Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;
    invoke-interface {v7, p0, p1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;->handleException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 60
    .end local v7    # "it":Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    instance-of v8, p1, Ljava/util/concurrent/CancellationException;

    if-nez v8, :cond_0

    .line 45
    sget-object v8, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v8, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v8}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/experimental/Job;

    if-eqz v8, :cond_2

    invoke-interface {v8, p1}, Lkotlinx/coroutines/experimental/Job;->cancel(Ljava/lang/Throwable;)Z

    .line 47
    :cond_2
    const-class v8, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;

    invoke-static {v8}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v2

    const-string v8, "ServiceLoader.load(Corou\u2026ptionHandler::class.java)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 108
    .local v2, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;

    move-object v5, v0

    .line 48
    .local v5, "handler":Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;
    invoke-interface {v5, p0, p1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;->handleException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 49
    nop

    goto :goto_1

    .line 109
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "handler":Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;
    :cond_3
    nop

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 52
    .local v3, "currentThread":Ljava/lang/Thread;
    const-string v8, "currentThread"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v8

    invoke-interface {v8, v3, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v2    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v3    # "currentThread":Ljava/lang/Thread;
    :catch_0
    move-exception v6

    .line 55
    .local v6, "handlerException":Ljava/lang/Throwable;
    if-ne v6, p1, :cond_4

    throw p1

    .line 57
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v8, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v8, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .local v1, "$receiver":Ljava/lang/RuntimeException;
    move-object v8, v1

    .line 58
    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v8, v6}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 59
    nop

    .line 57
    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "$receiver":Ljava/lang/RuntimeException;
    throw v1
.end method

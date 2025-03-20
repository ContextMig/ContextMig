.class public final Lkotlinx/coroutines/experimental/DispatchedTask$DefaultImpls;
.super Ljava/lang/Object;
.source "Dispatched.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/DispatchedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatched.kt\nkotlinx/coroutines/experimental/DispatchedTask$DefaultImpls\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/experimental/CoroutineContextKt\n*L\n1#1,196:1\n108#2,5:197\n*E\n*S KotlinDebug\n*F\n+ 1 Dispatched.kt\nkotlinx/coroutines/experimental/DispatchedTask$DefaultImpls\n*L\n153#1,5:197\n*E\n"
.end annotation


# direct methods
.method public static getExceptionalResult(Lkotlinx/coroutines/experimental/DispatchedTask;Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/DispatchedTask;
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/DispatchedTask",
            "<-TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 144
    instance-of v0, p1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    check-cast v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static getSuccessfulResult(Lkotlinx/coroutines/experimental/DispatchedTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/DispatchedTask;
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T_I1:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/DispatchedTask",
            "<-TT_I1;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 141
    return-object p1
.end method

.method public static run(Lkotlinx/coroutines/experimental/DispatchedTask;)V
    .locals 11
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/DispatchedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/DispatchedTask",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    nop

    .line 148
    :try_start_0
    invoke-interface {p0}, Lkotlinx/coroutines/experimental/DispatchedTask;->getDelegate()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v8, Lkotlin/TypeCastException;

    const-string v9, "null cannot be cast to non-null type kotlinx.coroutines.experimental.DispatchedContinuation<T>"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :catch_0
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v8, Lkotlinx/coroutines/experimental/DispatchException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected exception running "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lkotlinx/coroutines/experimental/DispatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 148
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    check-cast v2, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    .line 149
    .local v2, "delegate":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    .line 150
    .local v1, "continuation":Lkotlin/coroutines/experimental/Continuation;
    invoke-interface {v1}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 151
    .local v0, "context":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-interface {p0}, Lkotlinx/coroutines/experimental/DispatchedTask;->getResumeMode()I

    move-result v8

    invoke-static {v8}, Lkotlinx/coroutines/experimental/ResumeModeKt;->isCancellableMode(I)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lkotlinx/coroutines/experimental/Job;->Key:Lkotlinx/coroutines/experimental/Job$Key;

    check-cast v8, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {v0, v8}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/experimental/Job;

    move-object v5, v8

    .line 152
    .local v5, "job":Lkotlinx/coroutines/experimental/Job;
    :goto_0
    invoke-interface {p0}, Lkotlinx/coroutines/experimental/DispatchedTask;->takeState()Ljava/lang/Object;

    move-result-object v7

    .line 153
    .local v7, "state":Ljava/lang/Object;
    nop

    .line 197
    invoke-static {v0}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateThreadContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 198
    .local v6, "oldName$iv":Ljava/lang/String;
    nop

    .line 199
    nop

    .line 154
    if-eqz v5, :cond_2

    :try_start_2
    invoke-interface {v5}, Lkotlinx/coroutines/experimental/Job;->isActive()Z

    move-result v8

    if-nez v8, :cond_2

    .line 155
    invoke-interface {v5}, Lkotlinx/coroutines/experimental/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v8

    check-cast v8, Ljava/lang/Throwable;

    invoke-interface {v1, v8}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 162
    :goto_1
    nop

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :try_start_3
    invoke-static {v6}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    nop

    .line 166
    return-void

    .line 151
    .end local v5    # "job":Lkotlinx/coroutines/experimental/Job;
    .end local v6    # "oldName$iv":Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 157
    .restart local v5    # "job":Lkotlinx/coroutines/experimental/Job;
    .restart local v6    # "oldName$iv":Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/Object;
    :cond_2
    :try_start_4
    invoke-interface {p0, v7}, Lkotlinx/coroutines/experimental/DispatchedTask;->getExceptionalResult(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    .line 158
    .local v4, "exception":Ljava/lang/Throwable;
    if-eqz v4, :cond_3

    .line 159
    invoke-interface {v1, v4}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 201
    .end local v4    # "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    :try_start_5
    invoke-static {v6}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    throw v8
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 161
    .restart local v4    # "exception":Ljava/lang/Throwable;
    :cond_3
    :try_start_6
    invoke-interface {p0, v7}, Lkotlinx/coroutines/experimental/DispatchedTask;->getSuccessfulResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

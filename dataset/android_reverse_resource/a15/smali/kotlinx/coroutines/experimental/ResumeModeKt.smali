.class public final Lkotlinx/coroutines/experimental/ResumeModeKt;
.super Ljava/lang/Object;
.source "ResumeMode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResumeMode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResumeMode.kt\nkotlinx/coroutines/experimental/ResumeModeKt\n+ 2 Dispatched.kt\nkotlinx/coroutines/experimental/DispatchedContinuation\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/experimental/CoroutineContextKt\n*L\n1#1,51:1\n86#2:52\n87#2,2:56\n89#2:59\n93#2:60\n94#2,2:64\n96#2:67\n108#3,3:53\n112#3:58\n108#3,3:61\n112#3:66\n*E\n*S KotlinDebug\n*F\n+ 1 ResumeMode.kt\nkotlinx/coroutines/experimental/ResumeModeKt\n*L\n35#1:52\n35#1,2:56\n35#1:59\n46#1:60\n46#1,2:64\n46#1:67\n35#1,3:53\n35#1:58\n46#1,3:61\n46#1:66\n*E\n"
.end annotation


# direct methods
.method public static final isCancellableMode(I)Z
    .locals 1
    .param p0, "$receiver"    # I

    .prologue
    const/4 v0, 0x1

    .line 27
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDispatchedMode(I)Z
    .locals 1
    .param p0, "$receiver"    # I

    .prologue
    const/4 v0, 0x1

    .line 28
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final resumeMode(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;I)V
    .locals 5
    .param p0, "$receiver"    # Lkotlin/coroutines/experimental/Continuation;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;TT;I)V"
        }
    .end annotation

    .prologue
    const-string v3, "$receiver"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    packed-switch p2, :pswitch_data_0

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 32
    :pswitch_0
    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 38
    :goto_0
    :pswitch_1
    return-void

    .line 33
    :pswitch_2
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/DispatchedKt;->resumeCancellable(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :pswitch_3
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/DispatchedKt;->resumeDirect(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    move-object v2, p0

    .line 35
    check-cast v2, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    .line 52
    .local v2, "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 53
    .local v0, "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-static {v0}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateThreadContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "oldName$iv$iv":Ljava/lang/String;
    nop

    .line 55
    nop

    .line 56
    :try_start_0
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v3

    invoke-interface {v3, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 57
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    .line 59
    nop

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    throw v3

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static final resumeWithExceptionMode(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Throwable;I)V
    .locals 5
    .param p0, "$receiver"    # Lkotlin/coroutines/experimental/Continuation;
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;",
            "Ljava/lang/Throwable;",
            "I)V"
        }
    .end annotation

    .prologue
    const-string v3, "$receiver"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "exception"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    packed-switch p2, :pswitch_data_0

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 43
    :pswitch_0
    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 49
    :goto_0
    :pswitch_1
    return-void

    .line 44
    :pswitch_2
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/DispatchedKt;->resumeCancellableWithException(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 45
    :pswitch_3
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/DispatchedKt;->resumeDirectWithException(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_4
    move-object v2, p0

    .line 46
    check-cast v2, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    .line 60
    .local v2, "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 61
    .local v0, "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-static {v0}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateThreadContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "oldName$iv$iv":Ljava/lang/String;
    nop

    .line 63
    nop

    .line 64
    :try_start_0
    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v3

    invoke-interface {v3, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 65
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    .line 67
    nop

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    throw v3

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

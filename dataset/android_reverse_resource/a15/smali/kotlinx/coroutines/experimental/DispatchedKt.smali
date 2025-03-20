.class public final Lkotlinx/coroutines/experimental/DispatchedKt;
.super Ljava/lang/Object;
.source "Dispatched.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatched.kt\nkotlinx/coroutines/experimental/DispatchedKt\n+ 2 Dispatched.kt\nkotlinx/coroutines/experimental/DispatchedContinuation\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/experimental/CoroutineContextKt\n*L\n1#1,196:1\n64#2,7:197\n86#2:204\n87#2,2:208\n89#2:211\n71#2:212\n75#2,7:213\n93#2:220\n94#2,2:224\n96#2:227\n82#2:228\n108#3,3:205\n112#3:210\n108#3,3:221\n112#3:226\n*E\n*S KotlinDebug\n*F\n+ 1 Dispatched.kt\nkotlinx/coroutines/experimental/DispatchedKt\n*L\n111#1,7:197\n111#1:204\n111#1,2:208\n111#1:211\n111#1:212\n116#1,7:213\n116#1:220\n116#1,2:224\n116#1:227\n116#1:228\n111#1,3:205\n111#1:210\n116#1,3:221\n116#1:226\n*E\n"
.end annotation


# static fields
.field private static final UNDEFINED:Lkotlinx/coroutines/experimental/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lkotlinx/coroutines/experimental/internal/Symbol;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/experimental/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/DispatchedKt;->UNDEFINED:Lkotlinx/coroutines/experimental/internal/Symbol;

    return-void
.end method

.method public static final synthetic access$getUNDEFINED$p()Lkotlinx/coroutines/experimental/internal/Symbol;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lkotlinx/coroutines/experimental/DispatchedKt;->UNDEFINED:Lkotlinx/coroutines/experimental/internal/Symbol;

    return-object v0
.end method

.method public static final dispatch(Lkotlinx/coroutines/experimental/DispatchedTask;I)V
    .locals 8
    .param p0, "$receiver"    # Lkotlinx/coroutines/experimental/DispatchedTask;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/experimental/DispatchedTask",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    const-string v6, "$receiver"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    move v5, p1

    .line 175
    .local v5, "useMode":I
    invoke-interface {p0}, Lkotlinx/coroutines/experimental/DispatchedTask;->getDelegate()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v1

    .line 176
    .local v1, "delegate":Lkotlin/coroutines/experimental/Continuation;
    invoke-static {p1}, Lkotlinx/coroutines/experimental/ResumeModeKt;->isDispatchedMode(I)Z

    move-result v6

    if-eqz v6, :cond_1

    instance-of v6, v1, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-eqz v6, :cond_1

    invoke-static {p1}, Lkotlinx/coroutines/experimental/ResumeModeKt;->isCancellableMode(I)Z

    move-result v6

    invoke-interface {p0}, Lkotlinx/coroutines/experimental/DispatchedTask;->getResumeMode()I

    move-result v7

    invoke-static {v7}, Lkotlinx/coroutines/experimental/ResumeModeKt;->isCancellableMode(I)Z

    move-result v7

    if-ne v6, v7, :cond_1

    move-object v6, v1

    .line 178
    check-cast v6, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    invoke-virtual {v6}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getDispatcher()Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    move-result-object v2

    .line 179
    .local v2, "dispatcher":Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    invoke-interface {v1}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 180
    .local v0, "context":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/experimental/CoroutineContext;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    check-cast p0, Ljava/lang/Runnable;

    .end local p0    # "$receiver":Lkotlinx/coroutines/experimental/DispatchedTask;
    invoke-virtual {v2, v0, p0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V

    .line 194
    .end local v0    # "context":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v2    # "dispatcher":Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    :goto_0
    return-void

    .line 184
    .restart local v0    # "context":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v2    # "dispatcher":Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    .restart local p0    # "$receiver":Lkotlinx/coroutines/experimental/DispatchedTask;
    :cond_0
    const/4 v5, 0x3

    .line 185
    .end local v0    # "context":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v2    # "dispatcher":Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    :cond_1
    invoke-interface {p0}, Lkotlinx/coroutines/experimental/DispatchedTask;->takeState()Ljava/lang/Object;

    move-result-object v4

    .line 189
    .local v4, "state":Ljava/lang/Object;
    invoke-interface {p0, v4}, Lkotlinx/coroutines/experimental/DispatchedTask;->getExceptionalResult(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    .line 190
    .local v3, "exception":Ljava/lang/Throwable;
    if-eqz v3, :cond_2

    .line 191
    invoke-static {v1, v3, v5}, Lkotlinx/coroutines/experimental/ResumeModeKt;->resumeWithExceptionMode(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-interface {p0, v4}, Lkotlinx/coroutines/experimental/DispatchedTask;->getSuccessfulResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v6, v5}, Lkotlinx/coroutines/experimental/ResumeModeKt;->resumeMode(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static final resumeCancellable(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V
    .locals 6
    .param p0, "$receiver"    # Lkotlin/coroutines/experimental/Continuation;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    const-string v5, "$receiver"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    instance-of v5, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-eqz v5, :cond_1

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    .line 197
    .local v3, "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 198
    .local v0, "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getDispatcher()Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    move-result-object v5

    invoke-virtual {v5, v0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/experimental/CoroutineContext;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    invoke-static {v3, p1}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->access$set_state$p(Lkotlinx/coroutines/experimental/DispatchedContinuation;Ljava/lang/Object;)V

    .line 200
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->setResumeMode(I)V

    .line 201
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getDispatcher()Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    move-result-object v5

    check-cast v3, Ljava/lang/Runnable;

    .end local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v5, v0, v3}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V

    .line 203
    :goto_0
    nop

    .line 113
    .end local v0    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    :goto_1
    return-void

    .line 203
    .restart local v0    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    :cond_0
    move-object v4, v3

    .line 204
    .local v4, "this_$iv$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v4}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    .line 205
    .local v1, "context$iv$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateThreadContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "oldName$iv$iv$iv":Ljava/lang/String;
    nop

    .line 207
    nop

    .line 208
    :try_start_0
    invoke-virtual {v4}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v5

    invoke-interface {v5, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 209
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    .line 211
    nop

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v5

    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    throw v5

    .line 112
    .end local v0    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v1    # "context$iv$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v2    # "oldName$iv$iv$iv":Ljava/lang/String;
    .end local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .end local v4    # "this_$iv$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    :cond_1
    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static final resumeCancellableWithException(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "$receiver"    # Lkotlin/coroutines/experimental/Continuation;
    .param p1, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v5, "$receiver"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "exception"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    instance-of v5, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-eqz v5, :cond_1

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    .line 213
    .local v3, "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 214
    .local v0, "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getDispatcher()Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    move-result-object v5

    invoke-virtual {v5, v0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/experimental/CoroutineContext;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    new-instance v5, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    invoke-direct {v5, p1}, Lkotlinx/coroutines/experimental/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3, v5}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->access$set_state$p(Lkotlinx/coroutines/experimental/DispatchedContinuation;Ljava/lang/Object;)V

    .line 216
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->setResumeMode(I)V

    .line 217
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getDispatcher()Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    move-result-object v5

    check-cast v3, Ljava/lang/Runnable;

    .end local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v5, v0, v3}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V

    .line 219
    :goto_0
    nop

    .line 118
    .end local v0    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    :goto_1
    return-void

    .line 219
    .restart local v0    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    :cond_0
    move-object v4, v3

    .line 220
    .local v4, "this_$iv$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v4}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    .line 221
    .local v1, "context$iv$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateThreadContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "oldName$iv$iv$iv":Ljava/lang/String;
    nop

    .line 223
    nop

    .line 224
    :try_start_0
    invoke-virtual {v4}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v5

    invoke-interface {v5, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 225
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    .line 227
    nop

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v5

    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    throw v5

    .line 117
    .end local v0    # "context$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v1    # "context$iv$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    .end local v2    # "oldName$iv$iv$iv":Ljava/lang/String;
    .end local v3    # "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .end local v4    # "this_$iv$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    :cond_1
    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static final resumeDirect(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Object;)V
    .locals 1
    .param p0, "$receiver"    # Lkotlin/coroutines/experimental/Continuation;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    instance-of v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    .end local p0    # "$receiver":Lkotlin/coroutines/experimental/Continuation;
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 123
    :goto_0
    return-void

    .line 122
    .restart local p0    # "$receiver":Lkotlin/coroutines/experimental/Continuation;
    :cond_0
    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final resumeDirectWithException(Lkotlin/coroutines/experimental/Continuation;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "$receiver"    # Lkotlin/coroutines/experimental/Continuation;
    .param p1, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    instance-of v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;

    .end local p0    # "$receiver":Lkotlin/coroutines/experimental/Continuation;
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 128
    :goto_0
    return-void

    .line 127
    .restart local p0    # "$receiver":Lkotlin/coroutines/experimental/Continuation;
    :cond_0
    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.class public final Lkotlinx/coroutines/experimental/DispatchedContinuation;
.super Ljava/lang/Object;
.source "Dispatched.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;
.implements Lkotlinx/coroutines/experimental/DispatchedTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<TT;>;",
        "Lkotlinx/coroutines/experimental/DispatchedTask",
        "<TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatched.kt\nkotlinx/coroutines/experimental/DispatchedContinuation\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/experimental/CoroutineContextKt\n*L\n1#1,196:1\n86#1:197\n87#1,2:201\n89#1:204\n93#1:205\n94#1,2:209\n96#1:212\n86#1:213\n87#1,2:217\n89#1:220\n93#1:221\n94#1,2:225\n96#1:228\n108#2,3:198\n112#2:203\n108#2,3:206\n112#2:211\n108#2,3:214\n112#2:219\n108#2,3:222\n112#2:227\n108#2,5:229\n108#2,5:234\n*E\n*S KotlinDebug\n*F\n+ 1 Dispatched.kt\nkotlinx/coroutines/experimental/DispatchedContinuation\n*L\n49#1:197\n49#1,2:201\n49#1:204\n59#1:205\n59#1,2:209\n59#1:212\n70#1:213\n70#1,2:217\n70#1:220\n81#1:221\n81#1,2:225\n81#1:228\n49#1,3:198\n49#1:203\n59#1,3:206\n59#1:211\n70#1,3:214\n70#1:219\n81#1,3:222\n81#1:227\n86#1,5:229\n93#1,5:234\n*E\n"
.end annotation


# instance fields
.field private _state:Ljava/lang/Object;

.field private final continuation:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

.field private resumeMode:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/CoroutineDispatcher;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1
    .param p1, "dispatcher"    # Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    .param p2, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineDispatcher;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    .line 29
    invoke-static {}, Lkotlinx/coroutines/experimental/DispatchedKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$set_state$p(Lkotlinx/coroutines/experimental/DispatchedContinuation;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/experimental/DispatchedContinuation;
    .param p1, "<set-?>"    # Ljava/lang/Object;

    .prologue
    .line 25
    iput-object p1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1

    .prologue
    iget-object v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getContinuation()Lkotlin/coroutines/experimental/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/Continuation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    return-object v0
.end method

.method public getDelegate()Lkotlin/coroutines/experimental/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/Continuation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    check-cast p0, Lkotlin/coroutines/experimental/Continuation;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    return-object p0
.end method

.method public final getDispatcher()Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    return-object v0
.end method

.method public getExceptionalResult(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/DispatchedTask$DefaultImpls;->getExceptionalResult(Lkotlinx/coroutines/experimental/DispatchedTask;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getResumeMode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->resumeMode:I

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
    .line 25
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/DispatchedTask$DefaultImpls;->getSuccessfulResult(Lkotlinx/coroutines/experimental/DispatchedTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v4}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 44
    .local v0, "context":Lkotlin/coroutines/experimental/CoroutineContext;
    iget-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    invoke-virtual {v4, v0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/experimental/CoroutineContext;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    iput-object p1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 46
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->setResumeMode(I)V

    .line 47
    iget-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    check-cast p0, Ljava/lang/Runnable;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v4, v0, p0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V

    .line 49
    :goto_0
    return-void

    .restart local p0    # "this":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    :cond_0
    move-object v3, p0

    .line 197
    .local v3, "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    .line 198
    .local v1, "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateThreadContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "oldName$iv$iv":Ljava/lang/String;
    nop

    .line 200
    nop

    .line 201
    :try_start_0
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v4

    invoke-interface {v4, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 202
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    .line 204
    nop

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    throw v4
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const-string v4, "exception"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v4}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 54
    .local v0, "context":Lkotlin/coroutines/experimental/CoroutineContext;
    iget-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    invoke-virtual {v4, v0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/experimental/CoroutineContext;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    new-instance v4, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    invoke-direct {v4, p1}, Lkotlinx/coroutines/experimental/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    iput-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 56
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->setResumeMode(I)V

    .line 57
    iget-object v4, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    check-cast p0, Ljava/lang/Runnable;

    .end local p0    # "this":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v4, v0, p0}, Lkotlinx/coroutines/experimental/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Runnable;)V

    .line 59
    :goto_0
    return-void

    .restart local p0    # "this":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    :cond_0
    move-object v3, p0

    .line 205
    .local v3, "this_$iv":Lkotlinx/coroutines/experimental/DispatchedContinuation;
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    .line 206
    .local v1, "context$iv$iv":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-static {v1}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->updateThreadContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "oldName$iv$iv":Ljava/lang/String;
    nop

    .line 208
    nop

    .line 209
    :try_start_0
    invoke-virtual {v3}, Lkotlinx/coroutines/experimental/DispatchedContinuation;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v4

    invoke-interface {v4, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 210
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    .line 212
    nop

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->restoreThreadContext(Ljava/lang/String;)V

    throw v4
.end method

.method public run()V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0}, Lkotlinx/coroutines/experimental/DispatchedTask$DefaultImpls;->run(Lkotlinx/coroutines/experimental/DispatchedTask;)V

    return-void
.end method

.method public setResumeMode(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 30
    iput p1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->resumeMode:I

    return-void
.end method

.method public takeState()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 34
    .local v0, "state":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/experimental/DispatchedKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const-string v2, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/experimental/DispatchedKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/experimental/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 36
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/experimental/DispatchedContinuation;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/experimental/DebugKt;->toDebugString(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

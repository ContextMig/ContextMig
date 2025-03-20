.class public abstract Lkotlinx/coroutines/experimental/AbstractContinuation;
.super Lkotlinx/coroutines/experimental/JobSupport;
.source "AbstractContinuation.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;
.implements Lkotlinx/coroutines/experimental/DispatchedTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/JobSupport;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<TT;>;",
        "Lkotlinx/coroutines/experimental/DispatchedTask",
        "<TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractContinuation.kt\nkotlinx/coroutines/experimental/AbstractContinuation\n+ 2 AtomicFU.kt\nkotlinx/atomicfu/AtomicFU\n+ 3 Job.kt\nkotlinx/coroutines/experimental/JobSupport\n*L\n1#1,115:1\n286#2,2:116\n286#2,2:118\n629#3,2:120\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractContinuation.kt\nkotlinx/coroutines/experimental/AbstractContinuation\n*L\n55#1,2:116\n65#1,2:118\n96#1,2:120\n*E\n"
.end annotation


# static fields
.field private static final _decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _decision:I

.field private final delegate:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final resumeMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/experimental/AbstractContinuation;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/experimental/AbstractContinuation;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

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

    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/experimental/JobSupport;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/AbstractContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    iput p2, p0, Lkotlinx/coroutines/experimental/AbstractContinuation;->resumeMode:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/experimental/AbstractContinuation;->_decision:I

    return-void
.end method

.method private final tryResume()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 65
    move-object v0, p0

    .line 118
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/AbstractContinuation;
    :goto_0
    iget v1, v0, Lkotlinx/coroutines/experimental/AbstractContinuation;->_decision:I

    .line 66
    .local v1, "decision":I
    packed-switch v1, :pswitch_data_0

    .line 69
    const-string v3, "Already resumed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 67
    :pswitch_0
    sget-object v3, Lkotlinx/coroutines/experimental/AbstractContinuation;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x2

    invoke-virtual {v3, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 68
    :pswitch_1
    return v2

    .line 71
    :cond_0
    nop

    .line 118
    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final trySuspend()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    move-object v0, p0

    .line 116
    .local v0, "$receiver$iv":Lkotlinx/coroutines/experimental/AbstractContinuation;
    :goto_0
    iget v1, v0, Lkotlinx/coroutines/experimental/AbstractContinuation;->_decision:I

    .line 56
    .local v1, "decision":I
    packed-switch v1, :pswitch_data_0

    .line 59
    :pswitch_0
    const-string v3, "Already suspended"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 57
    :pswitch_1
    sget-object v4, Lkotlinx/coroutines/experimental/AbstractContinuation;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    :goto_1
    return v2

    :pswitch_2
    move v2, v3

    goto :goto_1

    .line 61
    :cond_0
    nop

    .line 116
    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final getDelegate()Lkotlin/coroutines/experimental/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/Continuation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lkotlinx/coroutines/experimental/AbstractContinuation;->delegate:Lkotlin/coroutines/experimental/Continuation;

    return-object v0
.end method

.method public getExceptionalResult(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/DispatchedTask$DefaultImpls;->getExceptionalResult(Lkotlinx/coroutines/experimental/DispatchedTask;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/AbstractContinuation;->trySuspend()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractContinuation;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 80
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/experimental/AbstractContinuation;->getSuccessfulResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getResumeMode()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lkotlinx/coroutines/experimental/AbstractContinuation;->resumeMode:I

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
    .line 31
    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/DispatchedTask$DefaultImpls;->getSuccessfulResult(Lkotlinx/coroutines/experimental/DispatchedTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public handleException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractContinuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method public final onCompletionInternal$kotlinx_coroutines_core(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;
    .param p2, "mode"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Lkotlinx/coroutines/experimental/AbstractContinuation;->tryResume()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {p0, p2}, Lkotlinx/coroutines/experimental/DispatchedKt;->dispatch(Lkotlinx/coroutines/experimental/DispatchedTask;I)V

    goto :goto_0
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    iget v0, p0, Lkotlinx/coroutines/experimental/AbstractContinuation;->resumeMode:I

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/experimental/AbstractContinuation;->resumeImpl(Ljava/lang/Object;I)V

    return-void
.end method

.method protected final resumeImpl(Ljava/lang/Object;I)V
    .locals 4
    .param p1, "proposedUpdate"    # Ljava/lang/Object;
    .param p2, "resumeMode"    # I

    .prologue
    .line 96
    move-object v1, p0

    .line 120
    .local v1, "this_$iv":Lkotlinx/coroutines/experimental/JobSupport;
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "state":Ljava/lang/Object;
    instance-of v2, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-eqz v2, :cond_1

    .line 99
    check-cast v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/coroutines/experimental/AbstractContinuation;->updateState$kotlinx_coroutines_core(Lkotlinx/coroutines/experimental/JobSupport$Incomplete;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    .end local p1    # "proposedUpdate":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 101
    .restart local v0    # "state":Ljava/lang/Object;
    .restart local p1    # "proposedUpdate":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Lkotlinx/coroutines/experimental/Cancelled;

    if-eqz v2, :cond_2

    .line 103
    instance-of v2, p1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v0, Lkotlinx/coroutines/experimental/Cancelled;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/Cancelled;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 104
    check-cast p1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .end local p1    # "proposedUpdate":Ljava/lang/Object;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/experimental/AbstractContinuation;->handleException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 107
    .restart local v0    # "state":Ljava/lang/Object;
    .restart local p1    # "proposedUpdate":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already resumed, but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 109
    .end local v0    # "state":Ljava/lang/Object;
    :cond_3
    nop

    .line 120
    goto :goto_0
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/experimental/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    iget v1, p0, Lkotlinx/coroutines/experimental/AbstractContinuation;->resumeMode:I

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/experimental/AbstractContinuation;->resumeImpl(Ljava/lang/Object;I)V

    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lkotlinx/coroutines/experimental/DispatchedTask$DefaultImpls;->run(Lkotlinx/coroutines/experimental/DispatchedTask;)V

    return-void
.end method

.method public takeState()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/AbstractContinuation;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

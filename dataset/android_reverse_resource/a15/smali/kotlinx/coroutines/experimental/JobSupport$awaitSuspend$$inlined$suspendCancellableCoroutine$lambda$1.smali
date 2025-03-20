.class final Lkotlinx/coroutines/experimental/JobSupport$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Job.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/JobSupport;->awaitSuspend(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/experimental/JobSupport$awaitSuspend$2$1\n*L\n1#1,1501:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/JobSupport;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/CancellableContinuation;Lkotlinx/coroutines/experimental/JobSupport;)V
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/experimental/JobSupport$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->$cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/JobSupport$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 522
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/experimental/JobSupport$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "it"    # Ljava/lang/Throwable;

    .prologue
    .line 1312
    iget-object v1, p0, Lkotlinx/coroutines/experimental/JobSupport$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->this$0:Lkotlinx/coroutines/experimental/JobSupport;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 1313
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/experimental/JobSupport$Incomplete;

    if-nez v1, :cond_0

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

    .line 1314
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v1, :cond_2

    .line 1315
    iget-object v1, p0, Lkotlinx/coroutines/experimental/JobSupport$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->$cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    check-cast v0, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .end local v0    # "state":Ljava/lang/Object;
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 1318
    :goto_1
    return-void

    .line 1317
    .restart local v0    # "state":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/experimental/JobSupport$awaitSuspend$$inlined$suspendCancellableCoroutine$lambda$1;->$cont:Lkotlinx/coroutines/experimental/CancellableContinuation;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/experimental/CancellableContinuation;->resume(Ljava/lang/Object;)V

    goto :goto_1
.end method

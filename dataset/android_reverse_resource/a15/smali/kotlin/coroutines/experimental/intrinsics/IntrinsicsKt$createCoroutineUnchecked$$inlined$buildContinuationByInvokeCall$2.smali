.class public final Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;
.super Ljava/lang/Object;
.source "Intrinsics.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->createCoroutineUnchecked(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Intrinsics.kt\nkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$buildContinuationByInvokeCall$continuation$1\n+ 2 Intrinsics.kt\nkotlin/coroutines/experimental/intrinsics/IntrinsicsKt\n*L\n1#1,153:1\n124#2,2:154\n*E\n"
.end annotation


# instance fields
.field final synthetic $completion:Lkotlin/coroutines/experimental/Continuation;

.field final synthetic $completion$inlined:Lkotlin/coroutines/experimental/Continuation;

.field final synthetic $receiver$inlined:Ljava/lang/Object;

.field final synthetic receiver$0$inlined:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lkotlin/coroutines/experimental/Continuation;

    .prologue
    iput-object p1, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion:Lkotlin/coroutines/experimental/Continuation;

    iput-object p2, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->receiver$0$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$receiver$inlined:Ljava/lang/Object;

    iput-object p4, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion$inlined:Lkotlin/coroutines/experimental/Continuation;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resume(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->resume(Lkotlin/Unit;)V

    return-void
.end method

.method public resume(Lkotlin/Unit;)V
    .locals 4
    .param p1, "value"    # Lkotlin/Unit;

    .prologue
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion:Lkotlin/coroutines/experimental/Continuation;

    nop

    .line 154
    :try_start_0
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->receiver$0$inlined:Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type (R, kotlin.coroutines.experimental.Continuation<T>) -> kotlin.Any?"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v2, 0x2

    :try_start_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$receiver$inlined:Ljava/lang/Object;

    iget-object v3, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion$inlined:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_0

    if-nez v1, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v1, v0}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt$createCoroutineUnchecked$$inlined$buildContinuationByInvokeCall$2;->$completion:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    .line 148
    return-void
.end method

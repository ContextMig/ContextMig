.class Lkotlinx/coroutines/experimental/StandaloneCoroutine;
.super Lkotlinx/coroutines/experimental/AbstractCoroutine;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/experimental/AbstractCoroutine",
        "<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field private final parentContext:Lkotlin/coroutines/experimental/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V
    .locals 1
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p2, "active"    # Z

    .prologue
    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/AbstractCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/StandaloneCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public hasOnFinishingHandler$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "update"    # Ljava/lang/Object;

    .prologue
    .line 194
    instance-of v0, p1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    return v0
.end method

.method public onFinishingInternal$kotlinx_coroutines_core(Ljava/lang/Object;)V
    .locals 2
    .param p1, "update"    # Ljava/lang/Object;

    .prologue
    .line 197
    instance-of v0, p1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/experimental/StandaloneCoroutine;->parentContext:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast p1, Lkotlinx/coroutines/experimental/CompletedExceptionally;

    .end local p1    # "update":Ljava/lang/Object;
    invoke-virtual {p1}, Lkotlinx/coroutines/experimental/CompletedExceptionally;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V

    .line 198
    :cond_0
    return-void
.end method

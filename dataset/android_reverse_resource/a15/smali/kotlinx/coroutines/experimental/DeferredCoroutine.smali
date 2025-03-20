.class Lkotlinx/coroutines/experimental/DeferredCoroutine;
.super Lkotlinx/coroutines/experimental/AbstractCoroutine;
.source "Deferred.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/Deferred;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/experimental/AbstractCoroutine",
        "<TT;>;",
        "Lkotlinx/coroutines/experimental/Deferred",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V
    .locals 1
    .param p1, "parentContext"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p2, "active"    # Z

    .prologue
    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/experimental/AbstractCoroutine;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Z)V

    return-void
.end method

.method static synthetic await$suspendImpl(Lkotlinx/coroutines/experimental/DeferredCoroutine;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/high16 v3, -0x80000000

    instance-of v1, p1, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;->getLabel()I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;->getLabel()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;->setLabel(I)V

    :goto_0
    iget-object v2, v1, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;->data:Ljava/lang/Object;

    iget-object v4, v1, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;->exception:Ljava/lang/Throwable;

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 208
    invoke-virtual {v1}, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;->getLabel()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4294967295
    :cond_0
    new-instance v1, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;

    invoke-direct {v1, p0, p1}, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;-><init>(Lkotlinx/coroutines/experimental/DeferredCoroutine;Lkotlin/coroutines/experimental/Continuation;)V

    goto :goto_0

    .line 208
    :pswitch_0
    if-eqz v4, :cond_1

    throw v4

    :cond_1
    iput-object p0, v1, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;->setLabel(I)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->awaitInternal$kotlinx_coroutines_core(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2

    move-object v1, v3

    .local v0, "this":Lkotlinx/coroutines/experimental/DeferredCoroutine;
    :cond_2
    :goto_1
    return-object v1

    .end local v0    # "this":Lkotlinx/coroutines/experimental/DeferredCoroutine;
    :pswitch_1
    iget-object v0, v1, Lkotlinx/coroutines/experimental/DeferredCoroutine$await$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/experimental/DeferredCoroutine;

    .restart local v0    # "this":Lkotlinx/coroutines/experimental/DeferredCoroutine;
    if-eqz v4, :cond_3

    throw v4

    :cond_3
    move-object v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/experimental/DeferredCoroutine;->await$suspendImpl(Lkotlinx/coroutines/experimental/DeferredCoroutine;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

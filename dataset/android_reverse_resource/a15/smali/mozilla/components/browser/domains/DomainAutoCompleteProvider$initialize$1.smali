.class final Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "DomainAutoCompleteProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->initialize(Landroid/content/Context;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;",
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;

.field final synthetic this$0:Lmozilla/components/browser/domains/DomainAutoCompleteProvider;


# direct methods
.method constructor <init>(Lmozilla/components/browser/domains/DomainAutoCompleteProvider;Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->this$0:Lmozilla/components/browser/domains/DomainAutoCompleteProvider;

    iput-object p2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->$context:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    return-object v0
.end method

.method public final create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 3
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/CoroutineScope;
    .param p2, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;

    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->this$0:Lmozilla/components/browser/domains/DomainAutoCompleteProvider;

    iget-object v2, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;-><init>(Lmozilla/components/browser/domains/DomainAutoCompleteProvider;Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)V

    iput-object p1, v0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 119
    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    iget-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    .line 120
    sget-object v0, Lkotlinx/coroutines/experimental/CommonPool;->INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1$domains$1;

    invoke-direct {v3, p0, v1}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1$domains$1;-><init>(Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/DeferredKt;->async$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object v7

    .line 121
    .local v7, "domains":Lkotlinx/coroutines/experimental/Deferred;
    sget-object v0, Lkotlinx/coroutines/experimental/CommonPool;->INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1$customDomains$1;

    invoke-direct {v3, p0, v1}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1$customDomains$1;-><init>(Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/DeferredKt;->async$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object v6

    .line 123
    .local v6, "customDomains":Lkotlinx/coroutines/experimental/Deferred;
    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->this$0:Lmozilla/components/browser/domains/DomainAutoCompleteProvider;

    iput-object v7, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$2:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v7, p0}, Lkotlinx/coroutines/experimental/Deferred;->await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_2

    move-object v0, v8

    .line 119
    :goto_0
    return-object v0

    .end local v6    # "customDomains":Lkotlinx/coroutines/experimental/Deferred;
    .end local v7    # "domains":Lkotlinx/coroutines/experimental/Deferred;
    :pswitch_1
    iget-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;

    iget-object v6, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/experimental/Deferred;

    .restart local v6    # "customDomains":Lkotlinx/coroutines/experimental/Deferred;
    iget-object v7, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/experimental/Deferred;

    .restart local v7    # "domains":Lkotlinx/coroutines/experimental/Deferred;
    if-eqz p2, :cond_1

    throw p2

    :cond_1
    move-object v1, v0

    move-object v0, p1

    .line 124
    :cond_2
    check-cast v0, Ljava/util/List;

    iput-object v7, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$2:Ljava/lang/Object;

    iput-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v6, p0}, Lkotlinx/coroutines/experimental/Deferred;->await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_4

    move-object v0, v8

    .line 119
    goto :goto_0

    .end local v6    # "customDomains":Lkotlinx/coroutines/experimental/Deferred;
    .end local v7    # "domains":Lkotlinx/coroutines/experimental/Deferred;
    :pswitch_2
    iget-object v0, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;

    iget-object v6, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/experimental/Deferred;

    .restart local v6    # "customDomains":Lkotlinx/coroutines/experimental/Deferred;
    iget-object v7, p0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/experimental/Deferred;

    .restart local v7    # "domains":Lkotlinx/coroutines/experimental/Deferred;
    if-eqz p2, :cond_3

    throw p2

    :cond_3
    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    :goto_1
    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider;->onDomainsLoaded$domains_release(Ljava/util/List;Ljava/util/List;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_4
    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/CoroutineScope;
    .param p2, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$initialize$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

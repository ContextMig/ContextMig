.class final Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "SearchEngineManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/browser/search/SearchEngineManager;->getSearchEngines(Landroid/content/Context;)Ljava/util/List;
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
        "Ljava/util/List",
        "<+",
        "Lmozilla/components/browser/search/SearchEngine;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;

.field final synthetic this$0:Lmozilla/components/browser/search/SearchEngineManager;


# direct methods
.method constructor <init>(Lmozilla/components/browser/search/SearchEngineManager;Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->this$0:Lmozilla/components/browser/search/SearchEngineManager;

    iput-object p2, p0, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->$context:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

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
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/SearchEngine;",
            ">;>;)",
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

    new-instance v0, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;

    iget-object v1, p0, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->this$0:Lmozilla/components/browser/search/SearchEngineManager;

    iget-object v2, p0, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;-><init>(Lmozilla/components/browser/search/SearchEngineManager;Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)V

    iput-object p1, v0, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 47
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
    iget-object v0, p0, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    iget-object v0, p0, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->this$0:Lmozilla/components/browser/search/SearchEngineManager;

    iget-object v2, p0, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->$context:Landroid/content/Context;

    const/4 v3, 0x1

    iput v3, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v0, v2, p0}, Lmozilla/components/browser/search/SearchEngineManager;->load(Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    move-object p1, v1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_1
    if-eqz p2, :cond_2

    throw p2

    :cond_2
    move-object v0, p1

    :cond_3
    check-cast v0, Lkotlinx/coroutines/experimental/Deferred;

    const/4 v2, 0x2

    iput v2, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/experimental/Deferred;->await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    move-object p1, v1

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_1

    throw p2

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
    .line 23
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/SearchEngine;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

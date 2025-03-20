.class final Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "AssetsSearchEngineProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->loadSearchEnginesFromList(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
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
        "Lmozilla/components/browser/search/SearchEngine;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $assets$inlined:Landroid/content/res/AssetManager;

.field final synthetic $deferredSearchEngines$inlined:Ljava/util/List;

.field final synthetic $it:Ljava/lang/String;

.field final synthetic $parser$inlined:Lmozilla/components/browser/search/SearchEngineParser;

.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;

.field final synthetic this$0:Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/experimental/Continuation;Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;Ljava/util/List;Landroid/content/res/AssetManager;Lmozilla/components/browser/search/SearchEngineParser;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$it:Ljava/lang/String;

    iput-object p3, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->this$0:Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;

    iput-object p4, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$deferredSearchEngines$inlined:Ljava/util/List;

    iput-object p5, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$assets$inlined:Landroid/content/res/AssetManager;

    iput-object p6, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$parser$inlined:Lmozilla/components/browser/search/SearchEngineParser;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    return-object v0
.end method

.method public final create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 7
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/CoroutineScope;
    .param p2, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lmozilla/components/browser/search/SearchEngine;",
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

    new-instance v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;

    iget-object v1, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$it:Ljava/lang/String;

    iget-object v3, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->this$0:Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;

    iget-object v4, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$deferredSearchEngines$inlined:Ljava/util/List;

    iget-object v5, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$assets$inlined:Landroid/content/res/AssetManager;

    iget-object v6, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$parser$inlined:Lmozilla/components/browser/search/SearchEngineParser;

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/experimental/Continuation;Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;Ljava/util/List;Landroid/content/res/AssetManager;Lmozilla/components/browser/search/SearchEngineParser;)V

    iput-object p1, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 61
    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v0, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    iget-object v0, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    .line 62
    iget-object v0, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->this$0:Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;

    iget-object v1, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$assets$inlined:Landroid/content/res/AssetManager;

    const-string v2, "assets"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$parser$inlined:Lmozilla/components/browser/search/SearchEngineParser;

    iget-object v3, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->$it:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->access$loadSearchEngine(Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;Landroid/content/res/AssetManager;Lmozilla/components/browser/search/SearchEngineParser;Ljava/lang/String;)Lmozilla/components/browser/search/SearchEngine;

    move-result-object v0

    return-object v0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

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
            "Lmozilla/components/browser/search/SearchEngine;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

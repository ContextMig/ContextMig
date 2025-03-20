.class final Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "SearchEngineListPreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/search/SearchEngineListPreference;->refetchSearchEngines()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchEngineListPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchEngineListPreference.kt\norg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n874#2:113\n*E\n*S KotlinDebug\n*F\n+ 1 SearchEngineListPreference.kt\norg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1\n*L\n59#1:113\n*E\n"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;

.field final synthetic this$0:Lorg/mozilla/focus/search/SearchEngineListPreference;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/search/SearchEngineListPreference;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->this$0:Lorg/mozilla/focus/search/SearchEngineListPreference;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    return-object v0
.end method

.method public final create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 2
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

    new-instance v0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;

    iget-object v1, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->this$0:Lorg/mozilla/focus/search/SearchEngineListPreference;

    invoke-direct {v0, v1, p2}, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;-><init>(Lorg/mozilla/focus/search/SearchEngineListPreference;Lkotlin/coroutines/experimental/Continuation;)V

    iput-object p1, v0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 5

    .prologue
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 55
    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v0, :pswitch_data_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_0
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    .line 56
    iget-object v1, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->this$0:Lorg/mozilla/focus/search/SearchEngineListPreference;

    sget-object v0, Lorg/mozilla/focus/Components;->INSTANCE:Lorg/mozilla/focus/Components;

    invoke-virtual {v0}, Lorg/mozilla/focus/Components;->getSearchEngineManager()Lmozilla/components/browser/search/SearchEngineManager;

    move-result-object v0

    .line 57
    iget-object v3, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->this$0:Lorg/mozilla/focus/search/SearchEngineListPreference;

    invoke-virtual {v3}, Lorg/mozilla/focus/search/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "this@SearchEngineListPreference.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v0, v3, p0}, Lmozilla/components/browser/search/SearchEngineManager;->load(Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_2

    move-object v0, v2

    .line 61
    :goto_0
    return-object v0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/focus/search/SearchEngineListPreference;

    if-eqz p2, :cond_1

    throw p2

    :cond_1
    move-object v1, v0

    move-object v0, p1

    .line 58
    :cond_2
    check-cast v0, Lkotlinx/coroutines/experimental/Deferred;

    iput-object v1, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/experimental/Deferred;->await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_4

    move-object v0, v2

    .line 55
    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/focus/search/SearchEngineListPreference;

    if-eqz p2, :cond_3

    throw p2

    :cond_3
    move-object v2, v0

    move-object v0, p1

    .line 59
    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    .line 113
    new-instance v1, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1$doResume$$inlined$sortedBy$1;

    invoke-direct {v1}, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1$doResume$$inlined$sortedBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mozilla/focus/search/SearchEngineListPreference;->setSearchEngines(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->this$0:Lorg/mozilla/focus/search/SearchEngineListPreference;

    iget-object v1, p0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->this$0:Lorg/mozilla/focus/search/SearchEngineListPreference;

    invoke-virtual {v1}, Lorg/mozilla/focus/search/SearchEngineListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "this@SearchEngineListPreference.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/mozilla/focus/search/SearchEngineListPreference;->access$refreshSearchEngineViews(Lorg/mozilla/focus/search/SearchEngineListPreference;Landroid/content/Context;)V

    .line 61
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_4
    move-object v2, v1

    goto :goto_1

    .line 55
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
    .line 25
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/search/SearchEngineListPreference$refetchSearchEngines$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

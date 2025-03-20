.class public final Lmozilla/components/browser/search/SearchEngineManager;
.super Ljava/lang/Object;
.source "SearchEngineManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/components/browser/search/SearchEngineManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchEngineManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchEngineManager.kt\nmozilla/components/browser/search/SearchEngineManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1519#2,2:109\n1519#2,2:111\n*E\n*S KotlinDebug\n*F\n+ 1 SearchEngineManager.kt\nmozilla/components/browser/search/SearchEngineManager\n*L\n81#1,2:109\n87#1,2:111\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lmozilla/components/browser/search/SearchEngineManager$Companion;


# instance fields
.field private deferredSearchEngines:Lkotlinx/coroutines/experimental/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/experimental/Deferred",
            "<+",
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/SearchEngine;",
            ">;>;"
        }
    .end annotation
.end field

.field private final localeChangedReceiver$delegate:Lkotlin/Lazy;

.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/provider/SearchEngineProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lmozilla/components/browser/search/SearchEngineManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "localeChangedReceiver"

    const-string v5, "getLocaleChangedReceiver()Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lmozilla/components/browser/search/SearchEngineManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lmozilla/components/browser/search/SearchEngineManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmozilla/components/browser/search/SearchEngineManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmozilla/components/browser/search/SearchEngineManager;->Companion:Lmozilla/components/browser/search/SearchEngineManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lmozilla/components/browser/search/SearchEngineManager;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "providers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lmozilla/components/browser/search/provider/SearchEngineProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "providers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmozilla/components/browser/search/SearchEngineManager;->providers:Ljava/util/List;

    .line 94
    new-instance v0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;

    invoke-direct {v0, p0}, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;-><init>(Lmozilla/components/browser/search/SearchEngineManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lmozilla/components/browser/search/SearchEngineManager;->localeChangedReceiver$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;

    new-instance v1, Lmozilla/components/browser/search/provider/localization/LocaleSearchLocalizationProvider;

    invoke-direct {v1}, Lmozilla/components/browser/search/provider/localization/LocaleSearchLocalizationProvider;-><init>()V

    check-cast v1, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    const/4 v4, 0x6

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;-><init>(Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lmozilla/components/browser/search/SearchEngineManager;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private final getLocaleChangedReceiver()Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;
    .locals 3

    .prologue
    iget-object v0, p0, Lmozilla/components/browser/search/SearchEngineManager;->localeChangedReceiver$delegate:Lkotlin/Lazy;

    sget-object v1, Lmozilla/components/browser/search/SearchEngineManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized getDefaultSearchEngine(Landroid/content/Context;Ljava/lang/String;)Lmozilla/components/browser/search/SearchEngine;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lmozilla/components/browser/search/SearchEngineManager;->getSearchEngines(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "searchEngines":Ljava/util/List;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 65
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    move-object v3, v0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmozilla/components/browser/search/SearchEngine;

    move-object v1, v0

    .local v1, "it":Lmozilla/components/browser/search/SearchEngine;
    invoke-virtual {v1}, Lmozilla/components/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .end local v1    # "it":Lmozilla/components/browser/search/SearchEngine;
    :goto_0
    check-cast v3, Lmozilla/components/browser/search/SearchEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 63
    :goto_1
    monitor-exit p0

    return-object v3

    :pswitch_0
    :try_start_1
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmozilla/components/browser/search/SearchEngine;

    goto :goto_1

    .line 65
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmozilla/components/browser/search/SearchEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4294967295
    .end local v2    # "searchEngines":Ljava/util/List;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized getSearchEngines(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/SearchEngine;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lmozilla/components/browser/search/SearchEngineManager;->deferredSearchEngines:Lkotlinx/coroutines/experimental/Deferred;

    if-eqz v0, :cond_0

    .local v0, "it":Lkotlinx/coroutines/experimental/Deferred;
    const/4 v2, 0x0

    new-instance v1, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$1$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$1$1;-><init>(Lkotlinx/coroutines/experimental/Deferred;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lkotlinx/coroutines/experimental/BuildersKt;->runBlocking$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v0    # "it":Lkotlinx/coroutines/experimental/Deferred;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lmozilla/components/browser/search/SearchEngineManager$getSearchEngines$2;-><init>(Lmozilla/components/browser/search/SearchEngineManager;Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lkotlinx/coroutines/experimental/BuildersKt;->runBlocking$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized load(Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlinx/coroutines/experimental/Deferred",
            "<+",
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/SearchEngine;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 34
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lmozilla/components/browser/search/SearchEngineManager$load$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lmozilla/components/browser/search/SearchEngineManager$load$2;-><init>(Lmozilla/components/browser/search/SearchEngineManager;Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/DeferredKt;->async$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object v6

    .line 36
    .local v6, "it":Lkotlinx/coroutines/experimental/Deferred;
    iput-object v6, p0, Lmozilla/components/browser/search/SearchEngineManager;->deferredSearchEngines:Lkotlinx/coroutines/experimental/Deferred;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    .line 34
    .end local v6    # "it":Lkotlinx/coroutines/experimental/Deferred;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final loadSearchEngines(Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    move-object/from16 v0, p2

    instance-of v2, v0, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;

    if-eqz v2, :cond_0

    move-object/from16 v2, p2

    check-cast v2, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;

    invoke-virtual {v2}, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->getLabel()I

    move-result v3

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->getLabel()I

    move-result v3

    const/high16 v4, -0x80000000

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->setLabel(I)V

    move-object v15, v2

    :goto_0
    iget-object v4, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->data:Ljava/lang/Object;

    iget-object v5, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->exception:Ljava/lang/Throwable;

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v16

    .line 77
    invoke-virtual {v15}, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->getLabel()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 91
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4294967295
    :cond_0
    new-instance v2, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;-><init>(Lmozilla/components/browser/search/SearchEngineManager;Lkotlin/coroutines/experimental/Continuation;)V

    move-object v15, v2

    goto :goto_0

    .line 77
    :pswitch_0
    if-eqz v5, :cond_1

    throw v5

    .line 78
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/List;

    .line 79
    .local v13, "searchEngines":Ljava/util/List;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 81
    .local v10, "deferredSearchEngines":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v8, v0, Lmozilla/components/browser/search/SearchEngineManager;->providers:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    .line 109
    .local v8, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lmozilla/components/browser/search/provider/SearchEngineProvider;

    .line 82
    .local v12, "it":Lmozilla/components/browser/search/provider/SearchEngineProvider;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$$inlined$forEach$lambda$1;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-direct {v5, v12, v6, v10, v0}, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$$inlined$forEach$lambda$1;-><init>(Lmozilla/components/browser/search/provider/SearchEngineProvider;Lkotlin/coroutines/experimental/Continuation;Ljava/util/List;Landroid/content/Context;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/experimental/DeferredKt;->async$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    .end local v11    # "element$iv":Ljava/lang/Object;
    .end local v12    # "it":Lmozilla/components/browser/search/provider/SearchEngineProvider;
    :cond_2
    nop

    move-object v8, v10

    .line 87
    check-cast v8, Ljava/lang/Iterable;

    .line 111
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/experimental/Deferred;

    .line 88
    .local v12, "it":Lkotlinx/coroutines/experimental/Deferred;
    move-object/from16 v0, p0

    iput-object v0, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$0:Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$1:Ljava/lang/Object;

    iput-object v13, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$2:Ljava/lang/Object;

    iput-object v10, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$3:Ljava/lang/Object;

    iput-object v8, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$4:Ljava/lang/Object;

    iput-object v2, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$5:Ljava/lang/Object;

    iput-object v11, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$6:Ljava/lang/Object;

    iput-object v12, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$7:Ljava/lang/Object;

    iput-object v13, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$8:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->setLabel(I)V

    invoke-interface {v12, v15}, Lkotlinx/coroutines/experimental/Deferred;->await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v16

    if-ne v3, v0, :cond_5

    move-object/from16 v13, v16

    .line 91
    .end local v11    # "element$iv":Ljava/lang/Object;
    .end local v12    # "it":Lkotlinx/coroutines/experimental/Deferred;
    .end local v13    # "searchEngines":Ljava/util/List;
    :goto_3
    return-object v13

    .line 77
    .end local v8    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v10    # "deferredSearchEngines":Ljava/util/List;
    :pswitch_1
    iget-object v2, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v12, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$7:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/experimental/Deferred;

    .restart local v12    # "it":Lkotlinx/coroutines/experimental/Deferred;
    iget-object v11, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$6:Ljava/lang/Object;

    .restart local v11    # "element$iv":Ljava/lang/Object;
    iget-object v3, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$5:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v8, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Iterable;

    .restart local v8    # "$receiver$iv":Ljava/lang/Iterable;
    iget-object v10, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .restart local v10    # "deferredSearchEngines":Ljava/util/List;
    iget-object v13, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    .restart local v13    # "searchEngines":Ljava/util/List;
    iget-object v9, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$1:Ljava/lang/Object;

    check-cast v9, Landroid/content/Context;

    .local v9, "context":Landroid/content/Context;
    iget-object v14, v15, Lmozilla/components/browser/search/SearchEngineManager$loadSearchEngines$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lmozilla/components/browser/search/SearchEngineManager;

    .local v14, "this":Lmozilla/components/browser/search/SearchEngineManager;
    if-eqz v5, :cond_3

    throw v5

    :cond_3
    move-object/from16 p1, v9

    move-object/from16 p0, v14

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    .line 89
    .end local v9    # "context":Landroid/content/Context;
    .end local v14    # "this":Lmozilla/components/browser/search/SearchEngineManager;
    :goto_4
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v2, v3

    goto :goto_2

    .line 112
    .end local v11    # "element$iv":Ljava/lang/Object;
    .end local v12    # "it":Lkotlinx/coroutines/experimental/Deferred;
    :cond_4
    nop

    .line 91
    goto :goto_3

    .restart local v11    # "element$iv":Ljava/lang/Object;
    .restart local v12    # "it":Lkotlinx/coroutines/experimental/Deferred;
    :cond_5
    move-object v4, v13

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto :goto_4

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final registerForLocaleUpdates(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lmozilla/components/browser/search/SearchEngineManager;->getLocaleChangedReceiver()Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

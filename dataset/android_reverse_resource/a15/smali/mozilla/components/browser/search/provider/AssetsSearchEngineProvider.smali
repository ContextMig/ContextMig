.class public final Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;
.super Ljava/lang/Object;
.source "AssetsSearchEngineProvider.kt"

# interfaces
.implements Lmozilla/components/browser/search/provider/SearchEngineProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetsSearchEngineProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetsSearchEngineProvider.kt\nmozilla/components/browser/search/provider/AssetsSearchEngineProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,147:1\n1519#2,2:148\n1519#2,2:150\n1519#2,2:152\n*E\n*S KotlinDebug\n*F\n+ 1 AssetsSearchEngineProvider.kt\nmozilla/components/browser/search/provider/AssetsSearchEngineProvider\n*L\n60#1,2:148\n66#1,2:150\n77#1,2:152\n*E\n"
.end annotation


# instance fields
.field private final additionalIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;


# direct methods
.method public constructor <init>(Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "localizationProvider"    # Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;
    .param p2, "filters"    # Ljava/util/List;
    .param p3, "additionalIdentifiers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;",
            "Ljava/util/List",
            "<+",
            "Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "localizationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalIdentifiers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    iput-object p2, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->filters:Ljava/util/List;

    iput-object p3, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->additionalIdentifiers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;-><init>(Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$loadSearchEngine(Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;Landroid/content/res/AssetManager;Lmozilla/components/browser/search/SearchEngineParser;Ljava/lang/String;)Lmozilla/components/browser/search/SearchEngine;
    .locals 1
    .param p0, "$this"    # Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "parser"    # Lmozilla/components/browser/search/SearchEngineParser;
    .param p3, "identifier"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->loadSearchEngine(Landroid/content/res/AssetManager;Lmozilla/components/browser/search/SearchEngineParser;Ljava/lang/String;)Lmozilla/components/browser/search/SearchEngine;

    move-result-object v0

    return-object v0
.end method

.method private final applyOverridesIfNeeded(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "jsonSearchEngineIdentifiers"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const-string v5, "regionOverrides"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 129
    .local v2, "overrides":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 130
    .local v4, "searchEngineIdentifiers":Ljava/util/List;
    iget-object v5, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    invoke-virtual {v5}, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;->getRegion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    invoke-virtual {v5}, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    iget-object v5, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    invoke-virtual {v5}, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 136
    .local v3, "regionOverrides":Lorg/json/JSONObject;
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_1
    if-ge v0, v5, :cond_2

    .line 137
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "identifier":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_0
    const-string v6, "identifier"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    goto :goto_1

    .line 133
    .end local v0    # "i":I
    .end local v1    # "identifier":Ljava/lang/String;
    .end local v3    # "regionOverrides":Lorg/json/JSONObject;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 144
    .restart local v3    # "regionOverrides":Lorg/json/JSONObject;
    :cond_2
    return-object v4
.end method

.method private final getSearchEngineIdentifiersFromBlock(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 2
    .param p1, "configBlock"    # Lorg/json/JSONObject;

    .prologue
    .line 120
    iget-object v0, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    invoke-virtual {v0}, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;->getRegion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    invoke-virtual {v0}, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    invoke-virtual {v0}, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 120
    :goto_0
    const-string v1, "visibleDefaultEngines"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "if (localizationProvider\u2026(\"visibleDefaultEngines\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 123
    :cond_0
    const-string v0, "default"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private final loadAndFilterConfiguration(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "context.assets"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "search/list.json"

    invoke-static {v3, v4}, Lmozilla/components/support/ktx/android/content/res/AssetManagerKt;->readJSONObject(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    .local v0, "config":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->pickConfigurationBlock(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 96
    .local v1, "configBlock":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->getSearchEngineIdentifiersFromBlock(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    .line 98
    .local v2, "jsonSearchEngineIdentifiers":Lorg/json/JSONArray;
    invoke-direct {p0, v0, v2}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->applyOverridesIfNeeded(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private final loadSearchEngine(Landroid/content/res/AssetManager;Lmozilla/components/browser/search/SearchEngineParser;Ljava/lang/String;)Lmozilla/components/browser/search/SearchEngine;
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "parser"    # Lmozilla/components/browser/search/SearchEngineParser;
    .param p3, "identifier"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchplugins/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lmozilla/components/browser/search/SearchEngineParser;->load(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lmozilla/components/browser/search/SearchEngine;

    move-result-object v0

    return-object v0
.end method

.method private final pickConfigurationBlock(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 102
    const-string v1, "locales"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    .local v0, "localesConfig":Lorg/json/JSONObject;
    iget-object v1, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    invoke-virtual {v1}, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    invoke-virtual {v1}, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .end local p1    # "config":Lorg/json/JSONObject;
    const-string v1, "localesConfig.getJSONObj\u2026tionProvider.languageTag)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-object p1

    .line 110
    .restart local p1    # "config":Lorg/json/JSONObject;
    :cond_1
    iget-object v1, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    invoke-virtual {v1}, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->localizationProvider:Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;

    invoke-virtual {v1}, Lmozilla/components/browser/search/provider/localization/SearchLocalizationProvider;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .end local p1    # "config":Lorg/json/JSONObject;
    const-string v1, "localesConfig.getJSONObj\u2026izationProvider.language)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final shouldBeFiltered(Landroid/content/Context;Lmozilla/components/browser/search/SearchEngine;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchEngine"    # Lmozilla/components/browser/search/SearchEngine;

    .prologue
    .line 77
    iget-object v0, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->filters:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 152
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;

    .line 78
    .local v2, "it":Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;
    invoke-interface {v2, p1, p2}, Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;->filter(Landroid/content/Context;Lmozilla/components/browser/search/SearchEngine;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    const/4 v3, 0x0

    .line 83
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;
    :goto_1
    return v3

    .line 81
    .restart local v1    # "element$iv":Ljava/lang/Object;
    .restart local v2    # "it":Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;
    :cond_0
    nop

    goto :goto_0

    .line 153
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lmozilla/components/browser/search/provider/filter/SearchEngineFilter;
    :cond_1
    nop

    .line 83
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public loadSearchEngines(Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
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
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 42
    .local v0, "$receiver":Ljava/util/List;
    invoke-direct {p0, p1}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->loadAndFilterConfiguration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v2, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->additionalIdentifiers:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    nop

    .line 41
    move-object v1, v0

    .line 46
    .local v1, "searchEngineIdentifiers":Ljava/util/List;
    check-cast v1, Ljava/lang/Iterable;

    .end local v1    # "searchEngineIdentifiers":Ljava/util/List;
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->loadSearchEnginesFromList(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method final loadSearchEnginesFromList(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    move-object/from16 v0, p3

    instance-of v3, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;

    if-eqz v3, :cond_0

    move-object/from16 v3, p3

    check-cast v3, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;

    invoke-virtual {v3}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->getLabel()I

    move-result v5

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->getLabel()I

    move-result v5

    const/high16 v6, -0x80000000

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->setLabel(I)V

    move-object/from16 v23, v3

    :goto_0
    move-object/from16 v0, v23

    iget-object v0, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->data:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v23

    iget-object v5, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->exception:Ljava/lang/Throwable;

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v24

    .line 49
    invoke-virtual/range {v23 .. v23}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->getLabel()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 73
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4294967295
    :cond_0
    new-instance v3, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;-><init>(Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;Lkotlin/coroutines/experimental/Continuation;)V

    move-object/from16 v23, v3

    goto :goto_0

    .line 49
    :pswitch_0
    if-eqz v5, :cond_1

    throw v5

    .line 53
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    check-cast v21, Ljava/util/List;

    .line 55
    .local v21, "searchEngines":Ljava/util/List;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    .line 56
    .local v8, "assets":Landroid/content/res/AssetManager;
    new-instance v9, Lmozilla/components/browser/search/SearchEngineParser;

    invoke-direct {v9}, Lmozilla/components/browser/search/SearchEngineParser;-><init>()V

    .line 58
    .local v9, "parser":Lmozilla/components/browser/search/SearchEngineParser;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .local v7, "deferredSearchEngines":Ljava/util/List;
    move-object/from16 v16, p2

    .line 60
    check-cast v16, Ljava/lang/Iterable;

    .line 148
    .local v16, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .local v18, "element$iv":Ljava/lang/Object;
    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/String;

    .line 61
    .local v4, "it":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v3, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;

    const/4 v5, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v3 .. v9}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$$inlined$forEach$lambda$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/experimental/Continuation;Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;Ljava/util/List;Landroid/content/res/AssetManager;Lmozilla/components/browser/search/SearchEngineParser;)V

    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/experimental/DeferredKt;->async$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    .end local v4    # "it":Ljava/lang/String;
    .end local v18    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    move-object/from16 v16, v7

    .line 66
    check-cast v16, Ljava/lang/Iterable;

    .line 150
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "element$iv":Ljava/lang/Object;
    move-object/from16 v4, v18

    check-cast v4, Lkotlinx/coroutines/experimental/Deferred;

    .line 67
    .local v4, "it":Lkotlinx/coroutines/experimental/Deferred;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    iput-object v0, v1, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$0:Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    iput-object v0, v1, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$1:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    iput-object v0, v1, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$2:Ljava/lang/Object;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    iput-object v0, v1, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$3:Ljava/lang/Object;

    move-object/from16 v0, v23

    iput-object v8, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$4:Ljava/lang/Object;

    move-object/from16 v0, v23

    iput-object v9, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$5:Ljava/lang/Object;

    move-object/from16 v0, v23

    iput-object v7, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$6:Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    iput-object v0, v1, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$7:Ljava/lang/Object;

    move-object/from16 v0, v23

    iput-object v3, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$8:Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    iput-object v0, v1, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$9:Ljava/lang/Object;

    move-object/from16 v0, v23

    iput-object v4, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$10:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->setLabel(I)V

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Lkotlinx/coroutines/experimental/Deferred;->await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v21, v24

    .line 73
    .end local v4    # "it":Lkotlinx/coroutines/experimental/Deferred;
    .end local v18    # "element$iv":Ljava/lang/Object;
    .end local v21    # "searchEngines":Ljava/util/List;
    :goto_3
    return-object v21

    .line 49
    .end local v7    # "deferredSearchEngines":Ljava/util/List;
    .end local v8    # "assets":Landroid/content/res/AssetManager;
    .end local v9    # "parser":Lmozilla/components/browser/search/SearchEngineParser;
    .end local v16    # "$receiver$iv":Ljava/lang/Iterable;
    :pswitch_1
    move-object/from16 v0, v23

    iget-object v4, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$10:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/experimental/Deferred;

    .restart local v4    # "it":Lkotlinx/coroutines/experimental/Deferred;
    move-object/from16 v0, v23

    iget-object v0, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$9:Ljava/lang/Object;

    move-object/from16 v18, v0

    .restart local v18    # "element$iv":Ljava/lang/Object;
    move-object/from16 v0, v23

    iget-object v3, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$8:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    move-object/from16 v0, v23

    iget-object v0, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$7:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Iterable;

    .restart local v16    # "$receiver$iv":Ljava/lang/Iterable;
    move-object/from16 v0, v23

    iget-object v7, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$6:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .restart local v7    # "deferredSearchEngines":Ljava/util/List;
    move-object/from16 v0, v23

    iget-object v9, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lmozilla/components/browser/search/SearchEngineParser;

    .restart local v9    # "parser":Lmozilla/components/browser/search/SearchEngineParser;
    move-object/from16 v0, v23

    iget-object v8, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$4:Ljava/lang/Object;

    check-cast v8, Landroid/content/res/AssetManager;

    .restart local v8    # "assets":Landroid/content/res/AssetManager;
    move-object/from16 v0, v23

    iget-object v0, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$3:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/List;

    .restart local v21    # "searchEngines":Ljava/util/List;
    move-object/from16 v0, v23

    iget-object v0, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$2:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/List;

    .local v20, "searchEngineIdentifiers":Ljava/util/List;
    move-object/from16 v0, v23

    iget-object v0, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$1:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Context;

    .local v17, "context":Landroid/content/Context;
    move-object/from16 v0, v23

    iget-object v0, v0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->L$0:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;

    .local v22, "this":Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;
    if-eqz v5, :cond_3

    throw v5

    :cond_3
    move-object/from16 p2, v20

    move-object/from16 p1, v17

    move-object/from16 p0, v22

    .line 68
    .end local v17    # "context":Landroid/content/Context;
    .end local v20    # "searchEngineIdentifiers":Ljava/util/List;
    .end local v22    # "this":Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;
    :cond_4
    check-cast v19, Lmozilla/components/browser/search/SearchEngine;

    .local v19, "searchEngine":Lmozilla/components/browser/search/SearchEngine;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->shouldBeFiltered(Landroid/content/Context;Lmozilla/components/browser/search/SearchEngine;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 69
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_5
    nop

    goto/16 :goto_2

    .line 151
    .end local v4    # "it":Lkotlinx/coroutines/experimental/Deferred;
    .end local v18    # "element$iv":Ljava/lang/Object;
    .end local v19    # "searchEngine":Lmozilla/components/browser/search/SearchEngine;
    :cond_6
    nop

    .line 73
    goto :goto_3

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

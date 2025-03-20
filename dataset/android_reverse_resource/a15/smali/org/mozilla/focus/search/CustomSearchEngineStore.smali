.class public final Lorg/mozilla/focus/search/CustomSearchEngineStore;
.super Ljava/lang/Object;
.source "CustomSearchEngineStore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomSearchEngineStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomSearchEngineStore.kt\norg/mozilla/focus/search/CustomSearchEngineStore\n*L\n1#1,126:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/mozilla/focus/search/CustomSearchEngineStore;

    invoke-direct {v0}, Lorg/mozilla/focus/search/CustomSearchEngineStore;-><init>()V

    sput-object v0, Lorg/mozilla/focus/search/CustomSearchEngineStore;->INSTANCE:Lorg/mozilla/focus/search/CustomSearchEngineStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final pref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const-string v0, "custom-search-engines"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addSearchEngine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engineName"    # Ljava/lang/String;
    .param p3, "searchQuery"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "context"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "engineName"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "searchQuery"

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v6, Lorg/mozilla/focus/shortcut/IconGenerator;->Companion:Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, p1, v7}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->generateLauncherIconPreOreo(Landroid/content/Context;C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 38
    .local v1, "iconBitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lorg/mozilla/focus/search/SearchEngineWriter;->Companion:Lorg/mozilla/focus/search/SearchEngineWriter$Companion;

    invoke-virtual {v6, p2, p3, v1}, Lorg/mozilla/focus/search/SearchEngineWriter$Companion;->buildSearchEngineXML(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 40
    .local v3, "searchEngineXml":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->pref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pref_custom_search_engines"

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 41
    .local v0, "existingEngines":Ljava/util/Set;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 42
    .local v2, "newEngines":Ljava/util/LinkedHashSet;
    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Ljava/util/Collection;

    .end local v0    # "existingEngines":Ljava/util/Set;
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {v2, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->pref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 46
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 47
    const-string v6, "pref_custom_search_version"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 48
    const-string v6, "pref_custom_search_engines"

    check-cast v2, Ljava/util/Set;

    .end local v2    # "newEngines":Ljava/util/LinkedHashSet;
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 49
    invoke-interface {v5, p2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 50
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    .end local v3    # "searchEngineXml":Ljava/lang/String;
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 39
    goto :goto_0
.end method

.method public final getRemovedSearchEngines(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->pref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hidden_default_engines"

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "pref(context).getStringS\u2026AULT_ENGINES, emptySet())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAllDefaultSearchEngines(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->pref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    const-string v1, "hidden_default_engines"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCustomSearchEngine(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p1, "engineId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "engineId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p2}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->loadCustomSearchEngines(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmozilla/components/browser/search/SearchEngine;

    .line 85
    .local v0, "e":Lmozilla/components/browser/search/SearchEngine;
    invoke-virtual {v0}, Lmozilla/components/browser/search/SearchEngine;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v1, 0x1

    .line 89
    .end local v0    # "e":Lmozilla/components/browser/search/SearchEngine;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isSearchEngineNameUnique(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engineName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "engineName"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v2, "custom-search-engines"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final loadCustomSearchEngines(Landroid/content/Context;)Ljava/util/List;
    .locals 11
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
    const-string v7, "context"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 94
    .local v0, "customEngines":Ljava/util/List;
    new-instance v5, Lmozilla/components/browser/search/SearchEngineParser;

    invoke-direct {v5}, Lmozilla/components/browser/search/SearchEngineParser;-><init>()V

    .line 95
    .local v5, "parser":Lmozilla/components/browser/search/SearchEngineParser;
    const-string v7, "custom-search-engines"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 96
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "pref_custom_search_engines"

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 98
    .local v4, "engines":Ljava/util/Set;
    nop

    .line 99
    if-nez v4, :cond_0

    :try_start_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, "engine":Ljava/lang/String;
    const-string v7, ""

    invoke-interface {v6, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "prefs.getString(engine, \"\")"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez v7, :cond_2

    new-instance v7, Lkotlin/TypeCastException;

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v7, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v2    # "engine":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "CustomSearchEngineStore"

    const-string v8, "IOException while loading custom search engines"

    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "e":Ljava/io/IOException;
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    :cond_1
    :goto_1
    return-object v0

    .line 100
    .restart local v2    # "engine":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    const-string v7, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v7, Ljava/io/InputStream;

    const/16 v9, 0x2000

    instance-of v10, v7, Ljava/io/BufferedInputStream;

    if-eqz v10, :cond_3

    check-cast v7, Ljava/io/BufferedInputStream;

    move-object v3, v7

    .line 102
    .local v3, "engineInputStream":Ljava/io/BufferedInputStream;
    :goto_2
    const-string v7, "engine"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/io/InputStream;

    .end local v3    # "engineInputStream":Ljava/io/BufferedInputStream;
    invoke-virtual {v5, v2, v3}, Lmozilla/components/browser/search/SearchEngineParser;->load(Ljava/lang/String;Ljava/io/InputStream;)Lmozilla/components/browser/search/SearchEngine;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    .end local v2    # "engine":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 107
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "CustomSearchEngineStore"

    const-string v8, "Couldn\'t load custom search engines"

    check-cast v1, Ljava/lang/Throwable;

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 100
    .restart local v2    # "engine":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v7, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public final removeSearchEngines(Landroid/content/Context;Ljava/util/Set;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engineIdsToRemove"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v5, "context"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "engineIdsToRemove"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->pref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pref_custom_search_engines"

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 58
    .local v0, "customEngines":Ljava/util/Set;
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 59
    .local v4, "remainingCustomEngines":Ljava/util/LinkedHashSet;
    invoke-direct {p0, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->pref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 61
    .local v2, "enginesEditor":Landroid/content/SharedPreferences$Editor;
    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "engineId":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v1    # "engineId":Ljava/lang/String;
    :cond_2
    const-string v5, "pref_custom_search_engines"

    check-cast v4, Ljava/util/Set;

    .end local v4    # "remainingCustomEngines":Ljava/util/LinkedHashSet;
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-direct {p0, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->pref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "hidden_default_engines"

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 74
    .local v3, "hiddenDefaultEngines":Ljava/util/Set;
    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v3, Ljava/util/Collection;

    .end local v3    # "hiddenDefaultEngines":Ljava/util/Set;
    invoke-interface {p2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    const-string v5, "hidden_default_engines"

    invoke-interface {v2, v5, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method

.method public final restoreDefaultSearchEngines(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lorg/mozilla/focus/search/CustomSearchEngineStore;->pref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 26
    const-string v1, "hidden_default_engines"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    return-void
.end method

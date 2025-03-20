.class public Lorg/mozilla/focus/webview/matcher/UrlMatcher;
.super Ljava/lang/Object;
.source "UrlMatcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final WEBFONT_EXTENSIONS:[Ljava/lang/String;


# instance fields
.field private blockWebfonts:Z

.field private final categories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/focus/webview/matcher/Trie;",
            ">;"
        }
    .end annotation
.end field

.field private final categoryPrefMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enabledCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final entityList:Lorg/mozilla/focus/webview/matcher/EntityList;

.field private final previouslyMatched:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final previouslyUnmatched:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".woff2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".woff"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".eot"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".ttf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".otf"

    aput-object v2, v0, v1

    sput-object v0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->WEBFONT_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lorg/mozilla/focus/webview/matcher/EntityList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "entityList"    # Lorg/mozilla/focus/webview/matcher/EntityList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/focus/webview/matcher/Trie;",
            ">;",
            "Lorg/mozilla/focus/webview/matcher/EntityList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "categoryPrefMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/focus/webview/matcher/Trie;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->enabledCategories:Ljava/util/Set;

    .line 65
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->previouslyMatched:Ljava/util/HashSet;

    .line 67
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->previouslyUnmatched:Ljava/util/HashSet;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->blockWebfonts:Z

    .line 107
    iput-object p2, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->categoryPrefMap:Ljava/util/Map;

    .line 108
    iput-object p4, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->entityList:Lorg/mozilla/focus/webview/matcher/EntityList;

    .line 109
    iput-object p3, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->categories:Ljava/util/Map;

    .line 113
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/mozilla/focus/webview/matcher/Trie;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "categoryMap contains undeclared category"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    iget-object v2, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->enabledCategories:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/mozilla/focus/webview/matcher/Trie;>;"
    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->loadPrefs(Landroid/content/Context;)V

    .line 124
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 125
    return-void
.end method

.method private static loadDefaultPrefMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 49
    .local v0, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v1, 0x7f0f00b0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Advertising"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const v1, 0x7f0f00b1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analytics"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const v1, 0x7f0f00b3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Social"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const v1, 0x7f0f00b2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const v1, 0x7f0f00ae

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Webfonts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static loadMatcher(Landroid/content/Context;I[II)Lorg/mozilla/focus/webview/matcher/UrlMatcher;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blockListFile"    # I
    .param p2, "blockListOverrides"    # [I
    .param p3, "entityListFile"    # I

    .prologue
    const/4 v7, 0x0

    .line 72
    invoke-static {p0}, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->loadDefaultPrefMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 74
    .local v1, "categoryPrefMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 75
    .local v0, "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/focus/webview/matcher/Trie;>;"
    :try_start_0
    new-instance v5, Landroid/util/JsonReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .local v5, "jsonReader":Landroid/util/JsonReader;
    const/4 v6, 0x0

    .line 77
    :try_start_1
    sget-object v8, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->BASE_LIST:Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    invoke-static {v5, v0, v8}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;->loadCategoryMap(Landroid/util/JsonReader;Ljava/util/Map;Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 78
    if-eqz v5, :cond_0

    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    :cond_0
    :goto_0
    if-eqz p2, :cond_8

    .line 83
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, p2

    if-ge v4, v6, :cond_8

    .line 84
    :try_start_3
    new-instance v5, Landroid/util/JsonReader;

    .end local v5    # "jsonReader":Landroid/util/JsonReader;
    new-instance v6, Ljava/io/InputStreamReader;

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    aget v9, p2, v4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 84
    .restart local v5    # "jsonReader":Landroid/util/JsonReader;
    const/4 v6, 0x0

    .line 86
    :try_start_4
    sget-object v8, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->OVERRIDE_LIST:Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    invoke-static {v5, v0, v8}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;->loadCategoryMap(Landroid/util/JsonReader;Ljava/util/Map;Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;)Ljava/util/Map;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 87
    if-eqz v5, :cond_1

    if-eqz v7, :cond_5

    :try_start_5
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 83
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    .end local v4    # "i":I
    :catch_0
    move-exception v8

    :try_start_6
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .end local v5    # "jsonReader":Landroid/util/JsonReader;
    :catch_1
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to parse blacklist"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 78
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "jsonReader":Landroid/util/JsonReader;
    :cond_2
    :try_start_7
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 75
    :catch_2
    move-exception v6

    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 78
    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_3
    if-eqz v5, :cond_3

    if-eqz v7, :cond_4

    :try_start_9
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_3
    :goto_4
    :try_start_a
    throw v6

    :catch_3
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 87
    .restart local v4    # "i":I
    :catch_4
    move-exception v8

    :try_start_b
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_2

    .end local v5    # "jsonReader":Landroid/util/JsonReader;
    :catch_5
    move-exception v2

    .line 88
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to parse override blacklist"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 87
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "jsonReader":Landroid/util/JsonReader;
    :cond_5
    :try_start_c
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_2

    .line 84
    :catch_6
    move-exception v6

    :try_start_d
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 87
    :catchall_1
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_5
    if-eqz v5, :cond_6

    if-eqz v7, :cond_7

    :try_start_e
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_6
    :goto_6
    :try_start_f
    throw v6

    :catch_7
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_6

    .line 94
    .end local v4    # "i":I
    :cond_8
    :try_start_10
    new-instance v5, Landroid/util/JsonReader;

    .end local v5    # "jsonReader":Landroid/util/JsonReader;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .restart local v5    # "jsonReader":Landroid/util/JsonReader;
    const/4 v6, 0x0

    .line 95
    :try_start_11
    invoke-static {v5}, Lorg/mozilla/focus/webview/matcher/EntityListProcessor;->getEntityMapFromJSON(Landroid/util/JsonReader;)Lorg/mozilla/focus/webview/matcher/EntityList;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-result-object v3

    .line 96
    .local v3, "entityList":Lorg/mozilla/focus/webview/matcher/EntityList;
    if-eqz v5, :cond_9

    if-eqz v7, :cond_a

    :try_start_12
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    .line 100
    :cond_9
    :goto_7
    new-instance v6, Lorg/mozilla/focus/webview/matcher/UrlMatcher;

    invoke-direct {v6, p0, v1, v0, v3}, Lorg/mozilla/focus/webview/matcher/UrlMatcher;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lorg/mozilla/focus/webview/matcher/EntityList;)V

    return-object v6

    .line 96
    :catch_8
    move-exception v7

    :try_start_13
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_7

    .end local v3    # "entityList":Lorg/mozilla/focus/webview/matcher/EntityList;
    .end local v5    # "jsonReader":Landroid/util/JsonReader;
    :catch_9
    move-exception v2

    .line 97
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to parse entity list"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "entityList":Lorg/mozilla/focus/webview/matcher/EntityList;
    .restart local v5    # "jsonReader":Landroid/util/JsonReader;
    :cond_a
    :try_start_14
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_7

    .line 94
    .end local v3    # "entityList":Lorg/mozilla/focus/webview/matcher/EntityList;
    :catch_a
    move-exception v7

    :try_start_15
    throw v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 96
    :catchall_2
    move-exception v6

    if-eqz v5, :cond_b

    if-eqz v7, :cond_c

    :try_start_16
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    :cond_b
    :goto_8
    :try_start_17
    throw v6

    :catch_b
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_c
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    goto :goto_8

    .line 87
    .restart local v4    # "i":I
    :catchall_3
    move-exception v6

    goto :goto_5

    .line 78
    .end local v4    # "i":I
    :catchall_4
    move-exception v6

    goto/16 :goto_3
.end method

.method private loadPrefs(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 141
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->categoryPrefMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 143
    .local v1, "prefValue":Z
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->setCategoryEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 145
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "prefValue":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->categories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public matches(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 13
    .param p1, "resourceURI"    # Landroid/net/Uri;
    .param p2, "pageURI"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "path":Ljava/lang/String;
    if-nez v3, :cond_0

    move v7, v8

    .line 266
    :goto_0
    return v7

    .line 222
    :cond_0
    iget-boolean v7, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->blockWebfonts:Z

    if-eqz v7, :cond_2

    .line 223
    sget-object v10, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->WEBFONT_EXTENSIONS:[Ljava/lang/String;

    array-length v11, v10

    move v7, v8

    :goto_1
    if-ge v7, v11, :cond_2

    aget-object v1, v10, v7

    .line 224
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v7, v9

    .line 225
    goto :goto_0

    .line 223
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 230
    .end local v1    # "extension":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "resourceURLString":Ljava/lang/String;
    iget-object v7, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->previouslyUnmatched:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    .line 234
    goto :goto_0

    .line 237
    :cond_3
    iget-object v7, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->entityList:Lorg/mozilla/focus/webview/matcher/EntityList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->entityList:Lorg/mozilla/focus/webview/matcher/EntityList;

    .line 238
    invoke-virtual {v7, p2, p1}, Lorg/mozilla/focus/webview/matcher/EntityList;->isWhiteListed(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    .line 241
    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "resourceHost":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "pageHost":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    .line 248
    goto :goto_0

    .line 251
    :cond_5
    iget-object v7, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->previouslyMatched:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v9

    .line 252
    goto :goto_0

    .line 255
    :cond_6
    invoke-static {v4}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->create(Ljava/lang/String;)Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v7

    invoke-virtual {v7}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->reverse()Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v6

    .line 257
    .local v6, "revhost":Lorg/mozilla/focus/webview/matcher/util/FocusString;
    iget-object v7, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->categories:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    .local v0, "category":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/mozilla/focus/webview/matcher/Trie;>;"
    iget-object v7, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->enabledCategories:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/focus/webview/matcher/Trie;

    invoke-virtual {v7, v6}, Lorg/mozilla/focus/webview/matcher/Trie;->findNode(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 260
    iget-object v7, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->previouslyMatched:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v7, v9

    .line 261
    goto/16 :goto_0

    .line 265
    .end local v0    # "category":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/mozilla/focus/webview/matcher/Trie;>;"
    :cond_8
    iget-object v7, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->previouslyUnmatched:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v7, v8

    .line 266
    goto/16 :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "prefName"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v2, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->categoryPrefMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    .local v0, "categoryName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 132
    const/4 v2, 0x0

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 134
    .local v1, "prefValue":Z
    invoke-virtual {p0, v0, v1}, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->setCategoryEnabled(Ljava/lang/String;Z)V

    .line 136
    .end local v1    # "prefValue":Z
    :cond_0
    return-void
.end method

.method public setCategoryEnabled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 184
    const-string v0, "Webfonts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iput-boolean p2, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->blockWebfonts:Z

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t enable/disable inexistant category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_2
    if-eqz p2, :cond_3

    .line 194
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->enabledCategories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->enabledCategories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->previouslyUnmatched:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->enabledCategories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->enabledCategories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/UrlMatcher;->previouslyMatched:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0
.end method

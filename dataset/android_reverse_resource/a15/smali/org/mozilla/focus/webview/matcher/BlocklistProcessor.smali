.class public Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;
.super Ljava/lang/Object;
.source "BlocklistProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$TrieCallback;,
        Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListCallback;,
        Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;,
        Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;
    }
.end annotation


# static fields
.field private static final DISCONNECT_MOVED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IGNORED_CATEGORIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
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
    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    .local v0, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "Legacy Disconnect"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v2, "Legacy Content"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;->IGNORED_CATEGORIES:Ljava/util/Set;

    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 44
    .local v1, "moved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "Facebook"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v2, "Twitter"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;->DISCONNECT_MOVED:Ljava/util/Set;

    .line 48
    return-void
.end method

.method private static extractCategories(Landroid/util/JsonReader;Ljava/util/Map;Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;)V
    .locals 8
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p2, "listType"    # Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/focus/webview/matcher/Trie;",
            ">;",
            "Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/focus/webview/matcher/Trie;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 114
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 116
    .local v3, "socialOverrides":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 117
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "categoryName":Ljava/lang/String;
    sget-object v6, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;->IGNORED_CATEGORIES:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 121
    :cond_0
    const-string v6, "Disconnect"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    new-instance v0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListCallback;

    sget-object v6, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;->DISCONNECT_MOVED:Ljava/util/Set;

    invoke-direct {v0, v3, v6}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListCallback;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 124
    .local v0, "callback":Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListCallback;
    invoke-static {p0, v0}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;->extractCategory(Landroid/util/JsonReader;Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;)V

    goto :goto_0

    .line 128
    .end local v0    # "callback":Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListCallback;
    :cond_1
    sget-object v6, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->BASE_LIST:Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    if-ne p2, v6, :cond_4

    .line 129
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Cannot insert already loaded category"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 133
    :cond_2
    invoke-static {}, Lorg/mozilla/focus/webview/matcher/Trie;->createRootNode()Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object v2

    .line 134
    .local v2, "categoryTrie":Lorg/mozilla/focus/webview/matcher/Trie;
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_3
    new-instance v0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$TrieCallback;

    invoke-direct {v0, v2}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$TrieCallback;-><init>(Lorg/mozilla/focus/webview/matcher/Trie;)V

    .line 145
    .local v0, "callback":Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$TrieCallback;
    invoke-static {p0, v0}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;->extractCategory(Landroid/util/JsonReader;Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;)V

    goto :goto_0

    .line 136
    .end local v0    # "callback":Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$TrieCallback;
    .end local v2    # "categoryTrie":Lorg/mozilla/focus/webview/matcher/Trie;
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/focus/webview/matcher/Trie;

    .line 138
    .restart local v2    # "categoryTrie":Lorg/mozilla/focus/webview/matcher/Trie;
    if-nez v2, :cond_3

    .line 139
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Cannot add override items to nonexistent category"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 149
    .end local v1    # "categoryName":Ljava/lang/String;
    .end local v2    # "categoryTrie":Lorg/mozilla/focus/webview/matcher/Trie;
    :cond_5
    const-string v6, "Social"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/focus/webview/matcher/Trie;

    .line 150
    .local v4, "socialTrie":Lorg/mozilla/focus/webview/matcher/Trie;
    if-nez v4, :cond_6

    sget-object v6, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->BASE_LIST:Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    if-ne p2, v6, :cond_6

    .line 151
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Expected social list to exist. Can\'t copy FB/Twitter into non-existing list"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 154
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 155
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->create(Ljava/lang/String;)Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v7

    invoke-virtual {v7}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->reverse()Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/mozilla/focus/webview/matcher/Trie;->put(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;

    goto :goto_1

    .line 158
    .end local v5    # "url":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 159
    return-void
.end method

.method private static extractCategory(Landroid/util/JsonReader;Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;)V
    .locals 1
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "callback"    # Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 164
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {p0, p1}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;->extractSite(Landroid/util/JsonReader;Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 169
    return-void
.end method

.method private static extractSite(Landroid/util/JsonReader;Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;)V
    .locals 5
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "callback"    # Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 174
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "siteOwner":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 178
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 182
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    .line 184
    .local v1, "nextToken":Landroid/util/JsonToken;
    invoke-virtual {v1}, Landroid/util/JsonToken;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "STRING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 190
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "blockURL":Ljava/lang/String;
    invoke-interface {p1, v0, v2}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 195
    .end local v0    # "blockURL":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 199
    .end local v1    # "nextToken":Landroid/util/JsonToken;
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 202
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 203
    return-void
.end method

.method public static loadCategoryMap(Landroid/util/JsonReader;Ljava/util/Map;Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;)Ljava/util/Map;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p2, "listType"    # Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/focus/webview/matcher/Trie;",
            ">;",
            "Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/focus/webview/matcher/Trie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/focus/webview/matcher/Trie;>;"
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 58
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "name":Ljava/lang/String;
    const-string v1, "categories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {p0, p1, p2}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;->extractCategories(Landroid/util/JsonReader;Ljava/util/Map;Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 68
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 70
    return-object p1
.end method

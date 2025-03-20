.class Lorg/mozilla/focus/webview/matcher/EntityListProcessor;
.super Ljava/lang/Object;
.source "EntityListProcessor.java"


# instance fields
.field private final entityMap:Lorg/mozilla/focus/webview/matcher/EntityList;


# direct methods
.method private constructor <init>(Landroid/util/JsonReader;)V
    .locals 1
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/mozilla/focus/webview/matcher/EntityList;

    invoke-direct {v0}, Lorg/mozilla/focus/webview/matcher/EntityList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/webview/matcher/EntityListProcessor;->entityMap:Lorg/mozilla/focus/webview/matcher/EntityList;

    .line 29
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 31
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 35
    invoke-direct {p0, p1}, Lorg/mozilla/focus/webview/matcher/EntityListProcessor;->handleSite(Landroid/util/JsonReader;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 39
    return-void
.end method

.method public static getEntityMapFromJSON(Landroid/util/JsonReader;)Lorg/mozilla/focus/webview/matcher/EntityList;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lorg/mozilla/focus/webview/matcher/EntityListProcessor;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/webview/matcher/EntityListProcessor;-><init>(Landroid/util/JsonReader;)V

    .line 25
    .local v0, "processor":Lorg/mozilla/focus/webview/matcher/EntityListProcessor;
    iget-object v1, v0, Lorg/mozilla/focus/webview/matcher/EntityListProcessor;->entityMap:Lorg/mozilla/focus/webview/matcher/EntityList;

    return-object v1
.end method

.method private handleSite(Landroid/util/JsonReader;)V
    .locals 7
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 44
    invoke-static {}, Lorg/mozilla/focus/webview/matcher/Trie;->createRootNode()Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object v4

    .line 45
    .local v4, "whitelist":Lorg/mozilla/focus/webview/matcher/Trie;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "propertyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 48
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "itemName":Ljava/lang/String;
    const-string v5, "properties"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 53
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 58
    :cond_2
    const-string v5, "resources"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 61
    :goto_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->create(Ljava/lang/String;)Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->reverse()Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v3

    .line 64
    .local v3, "revhost":Lorg/mozilla/focus/webview/matcher/util/FocusString;
    invoke-virtual {v4, v3}, Lorg/mozilla/focus/webview/matcher/Trie;->put(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;

    goto :goto_2

    .line 67
    .end local v3    # "revhost":Lorg/mozilla/focus/webview/matcher/util/FocusString;
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 71
    .end local v0    # "itemName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, "property":Ljava/lang/String;
    invoke-static {v1}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->create(Ljava/lang/String;)Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->reverse()Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v3

    .line 74
    .restart local v3    # "revhost":Lorg/mozilla/focus/webview/matcher/util/FocusString;
    iget-object v6, p0, Lorg/mozilla/focus/webview/matcher/EntityListProcessor;->entityMap:Lorg/mozilla/focus/webview/matcher/EntityList;

    invoke-virtual {v6, v3, v4}, Lorg/mozilla/focus/webview/matcher/EntityList;->putWhiteList(Lorg/mozilla/focus/webview/matcher/util/FocusString;Lorg/mozilla/focus/webview/matcher/Trie;)V

    goto :goto_3

    .line 77
    .end local v1    # "property":Ljava/lang/String;
    .end local v3    # "revhost":Lorg/mozilla/focus/webview/matcher/util/FocusString;
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 78
    return-void
.end method

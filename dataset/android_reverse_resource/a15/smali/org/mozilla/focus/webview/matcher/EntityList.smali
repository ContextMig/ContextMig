.class Lorg/mozilla/focus/webview/matcher/EntityList;
.super Ljava/lang/Object;
.source "EntityList.java"


# instance fields
.field private final rootNode:Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;->createRootNode()Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/webview/matcher/EntityList;->rootNode:Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;

    .line 21
    return-void
.end method

.method private isWhiteListed(Lorg/mozilla/focus/webview/matcher/util/FocusString;Lorg/mozilla/focus/webview/matcher/util/FocusString;Lorg/mozilla/focus/webview/matcher/Trie;)Z
    .locals 5
    .param p1, "site"    # Lorg/mozilla/focus/webview/matcher/util/FocusString;
    .param p2, "resource"    # Lorg/mozilla/focus/webview/matcher/util/FocusString;
    .param p3, "revHostTrie"    # Lorg/mozilla/focus/webview/matcher/Trie;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    iget-object v3, p3, Lorg/mozilla/focus/webview/matcher/Trie;->children:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;

    .line 50
    .local v0, "next":Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;
    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    iget-object v3, v0, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;->whitelist:Lorg/mozilla/focus/webview/matcher/Trie;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;->whitelist:Lorg/mozilla/focus/webview/matcher/Trie;

    .line 56
    invoke-virtual {v3, p2}, Lorg/mozilla/focus/webview/matcher/Trie;->findNode(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->length()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 64
    invoke-virtual {p1, v2}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->substring(I)Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/mozilla/focus/webview/matcher/EntityList;->isWhiteListed(Lorg/mozilla/focus/webview/matcher/util/FocusString;Lorg/mozilla/focus/webview/matcher/util/FocusString;Lorg/mozilla/focus/webview/matcher/Trie;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public isWhiteListed(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 5
    .param p1, "site"    # Landroid/net/Uri;
    .param p2, "resource"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/focus/utils/UrlUtils;->isPermittedResourceProtocol(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/focus/utils/UrlUtils;->isSupportedProtocol(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->create(Ljava/lang/String;)Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->reverse()Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v1

    .line 37
    .local v1, "revSitehost":Lorg/mozilla/focus/webview/matcher/util/FocusString;
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->create(Ljava/lang/String;)Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->reverse()Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v0

    .line 39
    .local v0, "revResourcehost":Lorg/mozilla/focus/webview/matcher/util/FocusString;
    iget-object v2, p0, Lorg/mozilla/focus/webview/matcher/EntityList;->rootNode:Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;

    invoke-direct {p0, v1, v0, v2}, Lorg/mozilla/focus/webview/matcher/EntityList;->isWhiteListed(Lorg/mozilla/focus/webview/matcher/util/FocusString;Lorg/mozilla/focus/webview/matcher/util/FocusString;Lorg/mozilla/focus/webview/matcher/Trie;)Z

    move-result v2

    goto :goto_0
.end method

.method public putWhiteList(Lorg/mozilla/focus/webview/matcher/util/FocusString;Lorg/mozilla/focus/webview/matcher/Trie;)V
    .locals 1
    .param p1, "revhost"    # Lorg/mozilla/focus/webview/matcher/util/FocusString;
    .param p2, "whitelist"    # Lorg/mozilla/focus/webview/matcher/Trie;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/EntityList;->rootNode:Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;->putWhiteList(Lorg/mozilla/focus/webview/matcher/util/FocusString;Lorg/mozilla/focus/webview/matcher/Trie;)V

    .line 25
    return-void
.end method

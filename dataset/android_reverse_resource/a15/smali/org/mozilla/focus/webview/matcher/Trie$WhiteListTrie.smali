.class public Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;
.super Lorg/mozilla/focus/webview/matcher/Trie;
.source "Trie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/webview/matcher/Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhiteListTrie"
.end annotation


# instance fields
.field whitelist:Lorg/mozilla/focus/webview/matcher/Trie;


# direct methods
.method private constructor <init>(CLorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;)V
    .locals 1
    .param p1, "character"    # C
    .param p2, "parent"    # Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/focus/webview/matcher/Trie;-><init>(CLorg/mozilla/focus/webview/matcher/Trie;Lorg/mozilla/focus/webview/matcher/Trie$1;)V

    .line 17
    iput-object v0, p0, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;->whitelist:Lorg/mozilla/focus/webview/matcher/Trie;

    .line 21
    return-void
.end method

.method public static createRootNode()Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;-><init>(CLorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;)V

    return-object v0
.end method


# virtual methods
.method protected createNode(CLorg/mozilla/focus/webview/matcher/Trie;)Lorg/mozilla/focus/webview/matcher/Trie;
    .locals 1
    .param p1, "character"    # C
    .param p2, "parent"    # Lorg/mozilla/focus/webview/matcher/Trie;

    .prologue
    .line 25
    new-instance v0, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;

    check-cast p2, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;

    .end local p2    # "parent":Lorg/mozilla/focus/webview/matcher/Trie;
    invoke-direct {v0, p1, p2}, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;-><init>(CLorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;)V

    return-object v0
.end method

.method public bridge synthetic findNode(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lorg/mozilla/focus/webview/matcher/Trie;->findNode(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(C)Lorg/mozilla/focus/webview/matcher/Trie;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lorg/mozilla/focus/webview/matcher/Trie;->put(C)Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lorg/mozilla/focus/webview/matcher/Trie;->put(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object v0

    return-object v0
.end method

.method public putWhiteList(Lorg/mozilla/focus/webview/matcher/util/FocusString;Lorg/mozilla/focus/webview/matcher/Trie;)V
    .locals 4
    .param p1, "string"    # Lorg/mozilla/focus/webview/matcher/util/FocusString;
    .param p2, "whitelist"    # Lorg/mozilla/focus/webview/matcher/Trie;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/mozilla/focus/webview/matcher/Trie;->put(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;

    .line 36
    .local v0, "node":Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;
    iget-object v1, v0, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;->whitelist:Lorg/mozilla/focus/webview/matcher/Trie;

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelist already set for node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    iput-object p2, v0, Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;->whitelist:Lorg/mozilla/focus/webview/matcher/Trie;

    .line 41
    return-void
.end method

.class Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$TrieCallback;
.super Ljava/lang/Object;
.source "BlocklistProcessor.java"

# interfaces
.implements Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrieCallback"
.end annotation


# instance fields
.field final trie:Lorg/mozilla/focus/webview/matcher/Trie;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/webview/matcher/Trie;)V
    .locals 0
    .param p1, "trie"    # Lorg/mozilla/focus/webview/matcher/Trie;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$TrieCallback;->trie:Lorg/mozilla/focus/webview/matcher/Trie;

    .line 103
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "siteOwner"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$TrieCallback;->trie:Lorg/mozilla/focus/webview/matcher/Trie;

    invoke-static {p1}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->create(Ljava/lang/String;)Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->reverse()Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/webview/matcher/Trie;->put(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;

    .line 108
    return-void
.end method

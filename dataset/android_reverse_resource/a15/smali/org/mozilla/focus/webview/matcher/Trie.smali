.class Lorg/mozilla/focus/webview/matcher/Trie;
.super Ljava/lang/Object;
.source "Trie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/webview/matcher/Trie$WhiteListTrie;
    }
.end annotation


# instance fields
.field public final children:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/mozilla/focus/webview/matcher/Trie;",
            ">;"
        }
    .end annotation
.end field

.field public terminator:Z


# direct methods
.method private constructor <init>(CLorg/mozilla/focus/webview/matcher/Trie;)V
    .locals 1
    .param p1, "character"    # C
    .param p2, "parent"    # Lorg/mozilla/focus/webview/matcher/Trie;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/webview/matcher/Trie;->children:Landroid/util/SparseArray;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/focus/webview/matcher/Trie;->terminator:Z

    .line 97
    if-eqz p2, :cond_0

    .line 98
    iget-object v0, p2, Lorg/mozilla/focus/webview/matcher/Trie;->children:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(CLorg/mozilla/focus/webview/matcher/Trie;Lorg/mozilla/focus/webview/matcher/Trie$1;)V
    .locals 0
    .param p1, "x0"    # C
    .param p2, "x1"    # Lorg/mozilla/focus/webview/matcher/Trie;
    .param p3, "x2"    # Lorg/mozilla/focus/webview/matcher/Trie$1;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/webview/matcher/Trie;-><init>(CLorg/mozilla/focus/webview/matcher/Trie;)V

    return-void
.end method

.method public static createRootNode()Lorg/mozilla/focus/webview/matcher/Trie;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lorg/mozilla/focus/webview/matcher/Trie;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/webview/matcher/Trie;-><init>(CLorg/mozilla/focus/webview/matcher/Trie;)V

    return-object v0
.end method


# virtual methods
.method protected createNode(CLorg/mozilla/focus/webview/matcher/Trie;)Lorg/mozilla/focus/webview/matcher/Trie;
    .locals 1
    .param p1, "character"    # C
    .param p2, "parent"    # Lorg/mozilla/focus/webview/matcher/Trie;

    .prologue
    .line 108
    new-instance v0, Lorg/mozilla/focus/webview/matcher/Trie;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/focus/webview/matcher/Trie;-><init>(CLorg/mozilla/focus/webview/matcher/Trie;)V

    return-object v0
.end method

.method public findNode(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;
    .locals 5
    .param p1, "string"    # Lorg/mozilla/focus/webview/matcher/util/FocusString;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 48
    iget-boolean v2, p0, Lorg/mozilla/focus/webview/matcher/Trie;->terminator:Z

    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {p1}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v4}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 66
    .end local p0    # "this":Lorg/mozilla/focus/webview/matcher/Trie;
    :cond_0
    :goto_0
    return-object p0

    .line 55
    .restart local p0    # "this":Lorg/mozilla/focus/webview/matcher/Trie;
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    iget-object v2, p0, Lorg/mozilla/focus/webview/matcher/Trie;->children:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/webview/matcher/Trie;

    .line 62
    .local v0, "next":Lorg/mozilla/focus/webview/matcher/Trie;
    if-nez v0, :cond_3

    move-object p0, v1

    .line 63
    goto :goto_0

    .line 66
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->substring(I)Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/webview/matcher/Trie;->findNode(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object p0

    goto :goto_0
.end method

.method public put(C)Lorg/mozilla/focus/webview/matcher/Trie;
    .locals 3
    .param p1, "character"    # C

    .prologue
    .line 83
    iget-object v2, p0, Lorg/mozilla/focus/webview/matcher/Trie;->children:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/webview/matcher/Trie;

    .line 85
    .local v0, "existingChild":Lorg/mozilla/focus/webview/matcher/Trie;
    if-eqz v0, :cond_0

    .line 93
    .end local v0    # "existingChild":Lorg/mozilla/focus/webview/matcher/Trie;
    :goto_0
    return-object v0

    .line 89
    .restart local v0    # "existingChild":Lorg/mozilla/focus/webview/matcher/Trie;
    :cond_0
    invoke-virtual {p0, p1, p0}, Lorg/mozilla/focus/webview/matcher/Trie;->createNode(CLorg/mozilla/focus/webview/matcher/Trie;)Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object v1

    .line 91
    .local v1, "newChild":Lorg/mozilla/focus/webview/matcher/Trie;
    iget-object v2, p0, Lorg/mozilla/focus/webview/matcher/Trie;->children:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 93
    goto :goto_0
.end method

.method public put(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;
    .locals 4
    .param p1, "string"    # Lorg/mozilla/focus/webview/matcher/util/FocusString;

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-virtual {p1}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 71
    iput-boolean v3, p0, Lorg/mozilla/focus/webview/matcher/Trie;->terminator:Z

    .line 79
    .end local p0    # "this":Lorg/mozilla/focus/webview/matcher/Trie;
    :goto_0
    return-object p0

    .line 75
    .restart local p0    # "this":Lorg/mozilla/focus/webview/matcher/Trie;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->charAt(I)C

    move-result v0

    .line 77
    .local v0, "character":C
    invoke-virtual {p0, v0}, Lorg/mozilla/focus/webview/matcher/Trie;->put(C)Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object v1

    .line 79
    .local v1, "child":Lorg/mozilla/focus/webview/matcher/Trie;
    invoke-virtual {p1, v3}, Lorg/mozilla/focus/webview/matcher/util/FocusString;->substring(I)Lorg/mozilla/focus/webview/matcher/util/FocusString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/focus/webview/matcher/Trie;->put(Lorg/mozilla/focus/webview/matcher/util/FocusString;)Lorg/mozilla/focus/webview/matcher/Trie;

    move-result-object p0

    goto :goto_0
.end method

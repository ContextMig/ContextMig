.class public Lcom/fsck/k9/message/signature/HtmlSignatureRemover;
.super Ljava/lang/Object;
.source "HtmlSignatureRemover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stripSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;

    invoke-direct {v0}, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;-><init>()V

    invoke-direct {v0, p0}, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->stripSignatureInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stripSignatureInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 27
    .local v0, "document":Lorg/jsoup/nodes/Document;
    new-instance v1, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor;

    new-instance v2, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;

    invoke-direct {v2}, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;-><init>()V

    invoke-direct {v1, v2}, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor;-><init>(Lcom/fsck/k9/helper/jsoup/NodeFilter;)V

    .line 28
    .local v1, "nodeTraversor":Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor;->filter(Lorg/jsoup/nodes/Node;)Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    .line 30
    invoke-static {v0}, Lcom/fsck/k9/message/html/HtmlProcessor;->toCompactString(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

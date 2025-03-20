.class Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;
.super Ljava/lang/Object;
.source "HeadCleaner.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/message/html/HeadCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CleaningVisitor"
.end annotation


# instance fields
.field private destination:Lorg/jsoup/nodes/Element;

.field private elementToSkip:Lorg/jsoup/nodes/Element;

.field private final root:Lorg/jsoup/nodes/Element;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 0
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "destination"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->root:Lorg/jsoup/nodes/Element;

    .line 43
    iput-object p2, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    .line 44
    return-void
.end method

.method private isMetaRefresh(Lorg/jsoup/nodes/Node;)Z
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 93
    const-string v1, "meta"

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 98
    :goto_0
    return v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    const-string v2, "http-equiv"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "attributeValue":Ljava/lang/String;
    const-string v1, "refresh"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isSafeTag(Lorg/jsoup/nodes/Node;)Z
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->isMetaRefresh(Lorg/jsoup/nodes/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 89
    :goto_0
    return v1

    .line 88
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/fsck/k9/message/html/HeadCleaner;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 10
    .param p1, "source"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 47
    iget-object v8, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->elementToSkip:Lorg/jsoup/nodes/Element;

    if-eqz v8, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    instance-of v8, p1, Lorg/jsoup/nodes/Element;

    if-eqz v8, :cond_3

    move-object v5, p1

    .line 52
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 54
    .local v5, "sourceElement":Lorg/jsoup/nodes/Element;
    invoke-direct {p0, v5}, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->isSafeTag(Lorg/jsoup/nodes/Node;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "sourceTag":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    .line 57
    .local v0, "destinationAttributes":Lorg/jsoup/nodes/Attributes;
    new-instance v1, Lorg/jsoup/nodes/Element;

    invoke-static {v6}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v8

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9, v0}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 59
    .local v1, "destinationChild":Lorg/jsoup/nodes/Element;
    iget-object v8, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v8, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 60
    iput-object v1, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 61
    .end local v0    # "destinationAttributes":Lorg/jsoup/nodes/Attributes;
    .end local v1    # "destinationChild":Lorg/jsoup/nodes/Element;
    .end local v6    # "sourceTag":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->root:Lorg/jsoup/nodes/Element;

    if-eq p1, v8, :cond_0

    .line 62
    iput-object v5, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->elementToSkip:Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 64
    .end local v5    # "sourceElement":Lorg/jsoup/nodes/Element;
    :cond_3
    instance-of v8, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v8, :cond_4

    move-object v7, p1

    .line 65
    check-cast v7, Lorg/jsoup/nodes/TextNode;

    .line 66
    .local v7, "sourceText":Lorg/jsoup/nodes/TextNode;
    new-instance v3, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v7}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v3, "destinationText":Lorg/jsoup/nodes/TextNode;
    iget-object v8, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v8, v3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 68
    .end local v3    # "destinationText":Lorg/jsoup/nodes/TextNode;
    .end local v7    # "sourceText":Lorg/jsoup/nodes/TextNode;
    :cond_4
    instance-of v8, p1, Lorg/jsoup/nodes/DataNode;

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->isSafeTag(Lorg/jsoup/nodes/Node;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v4, p1

    .line 69
    check-cast v4, Lorg/jsoup/nodes/DataNode;

    .line 70
    .local v4, "sourceData":Lorg/jsoup/nodes/DataNode;
    new-instance v2, Lorg/jsoup/nodes/DataNode;

    invoke-virtual {v4}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v2, "destinationData":Lorg/jsoup/nodes/DataNode;
    iget-object v8, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v8, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 1
    .param p1, "source"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->elementToSkip:Lorg/jsoup/nodes/Element;

    if-ne p1, v0, :cond_1

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->elementToSkip:Lorg/jsoup/nodes/Element;

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->isSafeTag(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    goto :goto_0
.end method

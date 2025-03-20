.class Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;
.super Ljava/lang/Object;
.source "HtmlSignatureRemover.java"

# interfaces
.implements Lcom/fsck/k9/helper/jsoup/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/message/signature/HtmlSignatureRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StripSignatureFilter"
.end annotation


# static fields
.field private static final BLOCKQUOTE:Lorg/jsoup/parser/Tag;

.field private static final BR:Lorg/jsoup/parser/Tag;

.field private static final DASH_SIGNATURE_HTML:Ljava/util/regex/Pattern;

.field private static final P:Lorg/jsoup/parser/Tag;


# instance fields
.field private brElementPrecedingDashes:Lorg/jsoup/nodes/Element;

.field private lastElementCausedLineBreak:Z

.field private signatureFound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "\\s*-- \\s*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->DASH_SIGNATURE_HTML:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, "blockquote"

    invoke-static {v0}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->BLOCKQUOTE:Lorg/jsoup/parser/Tag;

    .line 37
    const-string v0, "br"

    invoke-static {v0}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->BR:Lorg/jsoup/parser/Tag;

    .line 38
    const-string v0, "p"

    invoke-static {v0}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->P:Lorg/jsoup/parser/Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->signatureFound:Z

    .line 42
    iput-boolean v0, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->lastElementCausedLineBreak:Z

    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;
    .locals 5
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    iget-boolean v3, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->signatureFound:Z

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    .line 76
    :goto_0
    return-object v3

    .line 53
    :cond_0
    instance-of v3, p1, Lorg/jsoup/nodes/Element;

    if-eqz v3, :cond_1

    .line 54
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->lastElementCausedLineBreak:Z

    move-object v0, p1

    .line 56
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 57
    .local v0, "element":Lorg/jsoup/nodes/Element;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->BLOCKQUOTE:Lorg/jsoup/parser/Tag;

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    sget-object v3, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->SKIP_ENTIRELY:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    goto :goto_0

    .line 60
    .end local v0    # "element":Lorg/jsoup/nodes/Element;
    :cond_1
    instance-of v3, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 61
    check-cast v2, Lorg/jsoup/nodes/TextNode;

    .line 62
    .local v2, "textNode":Lorg/jsoup/nodes/TextNode;
    iget-boolean v3, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->lastElementCausedLineBreak:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->DASH_SIGNATURE_HTML:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 64
    .local v1, "nextNode":Lorg/jsoup/nodes/Node;
    instance-of v3, v1, Lorg/jsoup/nodes/Element;

    if-eqz v3, :cond_3

    check-cast v1, Lorg/jsoup/nodes/Element;

    .end local v1    # "nextNode":Lorg/jsoup/nodes/Node;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->BR:Lorg/jsoup/parser/Tag;

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->signatureFound:Z

    .line 66
    iget-object v3, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->brElementPrecedingDashes:Lorg/jsoup/nodes/Element;

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->brElementPrecedingDashes:Lorg/jsoup/nodes/Element;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->remove()V

    .line 68
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->brElementPrecedingDashes:Lorg/jsoup/nodes/Element;

    .line 71
    :cond_2
    sget-object v3, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    goto :goto_0

    .line 76
    .end local v2    # "textNode":Lorg/jsoup/nodes/TextNode;
    :cond_3
    sget-object v3, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    goto :goto_0
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;
    .locals 4
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
    iget-boolean v2, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->signatureFound:Z

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    .line 97
    :goto_0
    return-object v2

    .line 86
    :cond_0
    instance-of v2, p1, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 87
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 88
    .local v0, "element":Lorg/jsoup/nodes/Element;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->BR:Lorg/jsoup/parser/Tag;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 89
    .local v1, "elementIsBr":Z
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->P:Lorg/jsoup/parser/Tag;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->lastElementCausedLineBreak:Z

    .line 91
    if-eqz v1, :cond_2

    .end local v0    # "element":Lorg/jsoup/nodes/Element;
    :goto_1
    iput-object v0, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->brElementPrecedingDashes:Lorg/jsoup/nodes/Element;

    .line 92
    sget-object v2, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    goto :goto_0

    .line 91
    .restart local v0    # "element":Lorg/jsoup/nodes/Element;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 96
    .end local v0    # "element":Lorg/jsoup/nodes/Element;
    .end local v1    # "elementIsBr":Z
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover$StripSignatureFilter;->lastElementCausedLineBreak:Z

    .line 97
    sget-object v2, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    goto :goto_0
.end method

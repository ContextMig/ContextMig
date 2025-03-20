.class public Lcom/fsck/k9/view/MessageTitleView;
.super Landroid/widget/TextView;
.source "MessageTitleView.java"


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"

.field private static final MAX_LINES:I = 0x2


# instance fields
.field private mHeader:Lcom/fsck/k9/view/MessageHeader;

.field private mNeedEllipsizeCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/view/MessageTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/view/MessageTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/MessageTitleView;->mNeedEllipsizeCheck:Z

    .line 31
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 49
    iget-boolean v1, p0, Lcom/fsck/k9/view/MessageTitleView;->mNeedEllipsizeCheck:Z

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageTitleView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fsck/k9/view/MessageTitleView;->mHeader:Lcom/fsck/k9/view/MessageHeader;

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageTitleView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageTitleView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 53
    .local v0, "lineEndIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageTitleView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    add-int/lit8 v3, v0, -0x2

    invoke-interface {v2, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/MessageTitleView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageTitleView;->showSubjectInMessageHeader()V

    .line 56
    .end local v0    # "lineEndIndex":I
    :cond_0
    iput-boolean v4, p0, Lcom/fsck/k9/view/MessageTitleView;->mNeedEllipsizeCheck:Z

    .line 59
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/MessageTitleView;->mNeedEllipsizeCheck:Z

    .line 38
    return-void
.end method

.method public setMessageHeader(Lcom/fsck/k9/view/MessageHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/fsck/k9/view/MessageHeader;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/fsck/k9/view/MessageTitleView;->mHeader:Lcom/fsck/k9/view/MessageHeader;

    .line 64
    return-void
.end method

.method public showSubjectInMessageHeader()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fsck/k9/view/MessageTitleView;->mHeader:Lcom/fsck/k9/view/MessageHeader;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/fsck/k9/view/MessageTitleView;->mHeader:Lcom/fsck/k9/view/MessageHeader;

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageHeader;->showSubjectLine()V

    .line 70
    :cond_0
    return-void
.end method

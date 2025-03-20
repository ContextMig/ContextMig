.class public Lcom/fsck/k9/view/MessageCryptoStatusView;
.super Landroid/widget/FrameLayout;
.source "MessageCryptoStatusView.java"


# instance fields
.field private iconCombinedFirst:Landroid/widget/ImageView;

.field private iconCombinedSecond:Landroid/widget/ImageView;

.field private iconDotsBackground:Landroid/widget/ImageView;

.field private iconSingle:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 36
    const v0, 0x7f0c00bb

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageCryptoStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconSingle:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageCryptoStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconCombinedFirst:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f0c00b9

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageCryptoStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconCombinedSecond:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0c00b8

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/MessageCryptoStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconDotsBackground:Landroid/widget/ImageView;

    .line 40
    return-void
.end method

.method public setCryptoDisplayStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V
    .locals 5
    .param p1, "displayStatus"    # Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageCryptoStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->colorAttr:I

    invoke-static {v1, v2}, Lcom/fsck/k9/view/ThemeUtils;->getStyledColor(Landroid/content/Context;I)I

    move-result v0

    .line 45
    .local v0, "color":I
    iget-object v1, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusDotsRes:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconCombinedFirst:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconCombinedSecond:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconDotsBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconSingle:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconCombinedFirst:Landroid/widget/ImageView;

    iget v2, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusIconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconCombinedFirst:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 53
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconCombinedSecond:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusDotsRes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconCombinedSecond:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconCombinedFirst:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconCombinedSecond:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconDotsBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconSingle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconSingle:Landroid/widget/ImageView;

    iget v2, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusIconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v1, p0, Lcom/fsck/k9/view/MessageCryptoStatusView;->iconSingle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.class public Lcom/fsck/k9/view/LinearViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "LinearViewAnimator.java"


# instance fields
.field private downInAnimation:Landroid/view/animation/Animation;

.field private downOutAnimation:Landroid/view/animation/Animation;

.field private upInAnimation:Landroid/view/animation/Animation;

.field private upOutAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/view/LinearViewAnimator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/view/LinearViewAnimator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 41
    sget-object v2, Lcom/fsck/k9/R$styleable;->LinearViewAnimator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 44
    .local v1, "resource":I
    if-lez v1, :cond_0

    .line 45
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/view/LinearViewAnimator;->setDownInAnimation(Landroid/content/Context;I)V

    .line 48
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 49
    if-lez v1, :cond_1

    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/view/LinearViewAnimator;->setDownOutAnimation(Landroid/content/Context;I)V

    .line 53
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 54
    if-lez v1, :cond_2

    .line 55
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/view/LinearViewAnimator;->setUpInAnimation(Landroid/content/Context;I)V

    .line 58
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 59
    if-lez v1, :cond_3

    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/view/LinearViewAnimator;->setUpOutAnimation(Landroid/content/Context;I)V

    .line 63
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method


# virtual methods
.method public setDisplayedChild(I)V
    .locals 1
    .param p1, "whichChild"    # I

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/view/LinearViewAnimator;->setDisplayedChild(IZ)V

    .line 101
    return-void
.end method

.method public setDisplayedChild(IZ)V
    .locals 2
    .param p1, "whichChild"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/fsck/k9/view/LinearViewAnimator;->getDisplayedChild()I

    move-result v0

    .line 105
    .local v0, "displayedChild":I
    if-ne v0, p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 108
    :cond_0
    if-nez p2, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/LinearViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/LinearViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 118
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 111
    :cond_1
    if-ge v0, p1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/fsck/k9/view/LinearViewAnimator;->downInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/LinearViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 113
    iget-object v1, p0, Lcom/fsck/k9/view/LinearViewAnimator;->downOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/LinearViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/view/LinearViewAnimator;->upInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/LinearViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 116
    iget-object v1, p0, Lcom/fsck/k9/view/LinearViewAnimator;->upOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/LinearViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public setDownInAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 91
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/LinearViewAnimator;->setDownInAnimation(Landroid/view/animation/Animation;)V

    .line 92
    return-void
.end method

.method public setDownInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fsck/k9/view/LinearViewAnimator;->downInAnimation:Landroid/view/animation/Animation;

    .line 96
    return-void
.end method

.method public setDownOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 83
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/LinearViewAnimator;->setDownOutAnimation(Landroid/view/animation/Animation;)V

    .line 84
    return-void
.end method

.method public setDownOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/fsck/k9/view/LinearViewAnimator;->downOutAnimation:Landroid/view/animation/Animation;

    .line 88
    return-void
.end method

.method public setUpInAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 75
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/LinearViewAnimator;->setUpInAnimation(Landroid/view/animation/Animation;)V

    .line 76
    return-void
.end method

.method public setUpInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fsck/k9/view/LinearViewAnimator;->upInAnimation:Landroid/view/animation/Animation;

    .line 80
    return-void
.end method

.method public setUpOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 67
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/LinearViewAnimator;->setUpOutAnimation(Landroid/view/animation/Animation;)V

    .line 68
    return-void
.end method

.method public setUpOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fsck/k9/view/LinearViewAnimator;->upOutAnimation:Landroid/view/animation/Animation;

    .line 72
    return-void
.end method

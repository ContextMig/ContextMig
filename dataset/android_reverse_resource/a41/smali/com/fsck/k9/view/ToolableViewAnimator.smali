.class public Lcom/fsck/k9/view/ToolableViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "ToolableViewAnimator.java"


# instance fields
.field private mInitChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/view/ToolableViewAnimator;->mInitChild:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v2, p0, Lcom/fsck/k9/view/ToolableViewAnimator;->mInitChild:I

    .line 53
    invoke-virtual {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/fsck/k9/R$styleable;->ToolableViewAnimator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/view/ToolableViewAnimator;->mInitChild:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v2, p0, Lcom/fsck/k9/view/ToolableViewAnimator;->mInitChild:I

    .line 63
    invoke-virtual {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lcom/fsck/k9/R$styleable;->ToolableViewAnimator:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/view/ToolableViewAnimator;->mInitChild:I

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fsck/k9/view/ToolableViewAnimator;->mInitChild:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fsck/k9/view/ToolableViewAnimator;->mInitChild:I

    if-lez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDisplayedChildId()I
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/ToolableViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .param p1, "whichChild"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->getDisplayedChild()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public setDisplayedChild(IZ)V
    .locals 3
    .param p1, "whichChild"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChild(I)V

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 92
    .local v0, "savedInAnim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 93
    .local v1, "savedOutAnim":Landroid/view/animation/Animation;
    invoke-virtual {p0, v2}, Lcom/fsck/k9/view/ToolableViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/fsck/k9/view/ToolableViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChild(I)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/ToolableViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/ToolableViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setDisplayedChildId(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->getDisplayedChildId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 107
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/ToolableViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 108
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 106
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/view/ToolableViewAnimator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No view with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

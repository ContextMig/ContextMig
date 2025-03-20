.class public Lorg/mozilla/focus/widget/ShiftDrawable;
.super Lorg/mozilla/focus/widget/DrawableWrapper;
.source "ShiftDrawable.java"


# instance fields
.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private mPath:Landroid/graphics/Path;

.field private final mVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILandroid/view/animation/Interpolator;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/mozilla/focus/widget/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mVisibleRect:Landroid/graphics/Rect;

    .line 35
    iget-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    iget-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 37
    iget-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez p3, :cond_0

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    .end local p3    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :cond_0
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    iget-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/mozilla/focus/widget/ShiftDrawable$1;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/widget/ShiftDrawable$1;-><init>(Lorg/mozilla/focus/widget/ShiftDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    iget-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 47
    return-void

    .line 16
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateBounds()V
    .locals 9

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/ShiftDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 105
    .local v6, "b":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/mozilla/focus/widget/ShiftDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    float-to-int v8, v0

    .line 106
    .local v8, "width":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 107
    .local v7, "radius":F
    iget-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 110
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mPath:Landroid/graphics/Path;

    .line 111
    iget-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mPath:Landroid/graphics/Path;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    sub-float/2addr v3, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 112
    iget-object v0, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mPath:Landroid/graphics/Path;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v8

    int-to-float v1, v1

    sub-float/2addr v1, v7

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 113
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 79
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/ShiftDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 81
    .local v1, "fraction":F
    iget-object v5, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 82
    .local v4, "width":I
    int-to-float v5, v4

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 83
    .local v2, "offset":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 85
    .local v3, "stack":I
    iget-object v5, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    neg-int v5, v2

    int-to-float v5, v5

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    sub-int v5, v4, v2

    int-to-float v5, v5

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 100
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 101
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lorg/mozilla/focus/widget/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 67
    invoke-direct {p0}, Lorg/mozilla/focus/widget/ShiftDrawable;->updateBounds()V

    .line 68
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 72
    invoke-super {p0, p1}, Lorg/mozilla/focus/widget/DrawableWrapper;->onLevelChange(I)Z

    move-result v0

    .line 73
    .local v0, "result":Z
    invoke-direct {p0}, Lorg/mozilla/focus/widget/ShiftDrawable;->updateBounds()V

    .line 74
    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lorg/mozilla/focus/widget/DrawableWrapper;->setVisible(ZZ)Z

    move-result v0

    .line 56
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/ShiftDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    :goto_0
    return v0

    .line 59
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/widget/ShiftDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0
.end method

.class Landroid/support/transition/ViewUtilsApi14;
.super Ljava/lang/Object;
.source "ViewUtilsApi14.java"

# interfaces
.implements Landroid/support/transition/ViewUtilsImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget v0, Landroid/support/transition/R$id;->save_non_transition_alpha:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method

.method public getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-static {p1}, Landroid/support/transition/ViewOverlayApi14;->createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlayApi14;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    sget v1, Landroid/support/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 53
    .local v0, "savedAlpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    .line 56
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    goto :goto_0
.end method

.method public getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    new-instance v0, Landroid/support/transition/WindowIdApi14;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/transition/WindowIdApi14;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    sget v0, Landroid/support/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    sget v0, Landroid/support/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    :cond_0
    return-void
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->setLeft(I)V

    .line 146
    invoke-virtual {p1, p3}, Landroid/view/View;->setTop(I)V

    .line 147
    invoke-virtual {p1, p4}, Landroid/view/View;->setRight(I)V

    .line 148
    invoke-virtual {p1, p5}, Landroid/view/View;->setBottom(I)V

    .line 149
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 42
    sget v1, Landroid/support/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 43
    .local v0, "savedAlpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 79
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 80
    check-cast v2, Landroid/view/View;

    .line 81
    .local v2, "vp":Landroid/view/View;
    invoke-virtual {p0, v2, p2}, Landroid/support/transition/ViewUtilsApi14;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 84
    .end local v2    # "vp":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 86
    .local v1, "vm":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 89
    :cond_1
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 94
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v3, v1

    .line 95
    check-cast v3, Landroid/view/View;

    .line 96
    .local v3, "vp":Landroid/view/View;
    invoke-virtual {p0, v3, p2}, Landroid/support/transition/ViewUtilsApi14;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 97
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 99
    .end local v3    # "vp":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 101
    .local v2, "vm":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 103
    .local v0, "inverted":Landroid/graphics/Matrix;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 107
    .end local v0    # "inverted":Landroid/graphics/Matrix;
    :cond_1
    return-void
.end method

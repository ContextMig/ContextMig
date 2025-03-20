.class public final Lcom/admob/android/ads/an;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private final a:[F

.field private final b:[F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Z

.field private g:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 50
    new-array v1, v2, [F

    aput v0, v1, v3

    aput p1, v1, v4

    aput v0, v1, v5

    new-array v2, v2, [F

    aput v0, v2, v3

    aput p2, v2, v4

    aput v0, v2, v5

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/an;-><init>([F[FFFFZ)V

    .line 52
    return-void
.end method

.method public constructor <init>([F[FFFFZ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/admob/android/ads/an;->a:[F

    .line 73
    iput-object p2, p0, Lcom/admob/android/ads/an;->b:[F

    .line 74
    iput p3, p0, Lcom/admob/android/ads/an;->c:F

    .line 75
    iput p4, p0, Lcom/admob/android/ads/an;->d:F

    .line 76
    iput p5, p0, Lcom/admob/android/ads/an;->e:F

    .line 77
    iput-boolean p6, p0, Lcom/admob/android/ads/an;->f:Z

    .line 78
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 91
    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_0

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 93
    :cond_0
    sget v0, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 133
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/admob/android/ads/an;->a:[F

    .line 99
    iget-object v3, p0, Lcom/admob/android/ads/an;->b:[F

    .line 100
    new-array v4, v9, [F

    move v0, v1

    .line 102
    :goto_1
    if-ge v0, v9, :cond_2

    .line 104
    aget v5, v2, v0

    aget v6, v3, v0

    aget v7, v2, v0

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    aput v5, v4, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_2
    iget v0, p0, Lcom/admob/android/ads/an;->c:F

    .line 109
    iget v2, p0, Lcom/admob/android/ads/an;->d:F

    .line 110
    iget-object v3, p0, Lcom/admob/android/ads/an;->g:Landroid/graphics/Camera;

    .line 112
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 114
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 115
    iget-boolean v6, p0, Lcom/admob/android/ads/an;->f:Z

    if-eqz v6, :cond_3

    .line 117
    iget v6, p0, Lcom/admob/android/ads/an;->e:F

    mul-float/2addr v6, p1

    invoke-virtual {v3, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 123
    :goto_2
    aget v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 124
    const/4 v1, 0x1

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 125
    const/4 v1, 0x2

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 126
    invoke-virtual {v3, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 127
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 129
    neg-float v1, v0

    neg-float v3, v2

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 130
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 132
    sget v0, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_0

    .line 121
    :cond_3
    iget v6, p0, Lcom/admob/android/ads/an;->e:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    invoke-virtual {v3, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_2
.end method

.method public final initialize(IIII)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 85
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/an;->g:Landroid/graphics/Camera;

    .line 86
    return-void
.end method

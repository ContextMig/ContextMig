.class public final Lcom/admob/android/ads/ao;
.super Landroid/view/animation/Animation;
.source "SkewAnimation.java"


# instance fields
.field private a:[F

.field private b:[F


# direct methods
.method public constructor <init>([F[FLandroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/admob/android/ads/ao;->a:[F

    .line 16
    iput-object p2, p0, Lcom/admob/android/ads/ao;->b:[F

    .line 17
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 26
    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_0

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 28
    :cond_0
    sget v0, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 44
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 36
    iget-object v0, p0, Lcom/admob/android/ads/ao;->a:[F

    array-length v0, v0

    new-array v3, v0, [F

    move v0, v1

    .line 37
    :goto_1
    iget-object v4, p0, Lcom/admob/android/ads/ao;->a:[F

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 39
    iget-object v4, p0, Lcom/admob/android/ads/ao;->a:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/admob/android/ads/ao;->b:[F

    aget v5, v5, v0

    iget-object v6, p0, Lcom/admob/android/ads/ao;->a:[F

    aget v6, v6, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    aput v4, v3, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/ao;->a:[F

    aget v0, v0, v1

    iget-object v1, p0, Lcom/admob/android/ads/ao;->a:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setSkew(FF)V

    .line 43
    sget v0, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_0
.end method

.class public final Lcom/admob/android/ads/aj;
.super Landroid/view/animation/Animation;
.source "BackgroundColorAnimation.java"


# instance fields
.field private a:[I

.field private b:[I

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(IILandroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 22
    iput-object p3, p0, Lcom/admob/android/ads/aj;->c:Landroid/view/View;

    .line 24
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/admob/android/ads/aj;->a:[I

    .line 25
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/admob/android/ads/aj;->b:[I

    .line 28
    iget-object v0, p0, Lcom/admob/android/ads/aj;->a:[I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    aput v1, v0, v2

    .line 29
    iget-object v0, p0, Lcom/admob/android/ads/aj;->a:[I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    aput v1, v0, v3

    .line 30
    iget-object v0, p0, Lcom/admob/android/ads/aj;->a:[I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    aput v1, v0, v4

    .line 31
    iget-object v0, p0, Lcom/admob/android/ads/aj;->a:[I

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    aput v1, v0, v5

    .line 33
    iget-object v0, p0, Lcom/admob/android/ads/aj;->b:[I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    aput v1, v0, v2

    .line 34
    iget-object v0, p0, Lcom/admob/android/ads/aj;->b:[I

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    aput v1, v0, v3

    .line 35
    iget-object v0, p0, Lcom/admob/android/ads/aj;->b:[I

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    aput v1, v0, v4

    .line 36
    iget-object v0, p0, Lcom/admob/android/ads/aj;->b:[I

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    aput v1, v0, v5

    .line 37
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 47
    sget v0, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 48
    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_0

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    new-array v2, v6, [I

    move v0, v1

    .line 56
    :goto_1
    if-ge v0, v6, :cond_2

    .line 58
    iget-object v3, p0, Lcom/admob/android/ads/aj;->a:[I

    aget v3, v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/admob/android/ads/aj;->b:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/admob/android/ads/aj;->a:[I

    aget v5, v5, v0

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_2
    aget v0, v2, v1

    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x3

    aget v2, v2, v4

    invoke-static {v0, v1, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/admob/android/ads/aj;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

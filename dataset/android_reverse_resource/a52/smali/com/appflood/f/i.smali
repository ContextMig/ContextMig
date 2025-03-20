.class public final Lcom/appflood/f/i;
.super Lcom/appflood/f/a;


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Landroid/graphics/Paint;

.field private i:Lcom/appflood/e/b;

.field private j:Lcom/appflood/e/b;

.field private k:I

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FZ)V
    .locals 6

    const/high16 v5, 0x43360000    # 182.0f

    const/high16 v4, 0x431b0000    # 155.0f

    const/high16 v3, 0x41000000    # 8.0f

    const/16 v0, 0xf

    const/high16 v2, 0x41700000    # 15.0f

    invoke-direct {p0, p1}, Lcom/appflood/f/a;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/appflood/f/i;->d:I

    iput v0, p0, Lcom/appflood/f/i;->e:I

    iput v0, p0, Lcom/appflood/f/i;->f:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/appflood/f/i;->g:F

    new-instance v0, Lcom/appflood/e/b;

    const/high16 v1, 0x42b20000    # 89.0f

    invoke-direct {v0, v5, v1}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v0, p0, Lcom/appflood/f/i;->i:Lcom/appflood/e/b;

    new-instance v0, Lcom/appflood/e/b;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-direct {v0, v5, v1}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v0, p0, Lcom/appflood/f/i;->j:Lcom/appflood/e/b;

    const/16 v0, 0x14

    iput v0, p0, Lcom/appflood/f/i;->k:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/appflood/f/i;->m:I

    iput p2, p0, Lcom/appflood/f/i;->g:F

    iput-boolean p3, p0, Lcom/appflood/f/i;->l:Z

    iget-boolean v0, p0, Lcom/appflood/f/i;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appflood/f/i;->g:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/i;->d:I

    iget v0, p0, Lcom/appflood/f/i;->d:I

    iput v0, p0, Lcom/appflood/f/i;->e:I

    iget v0, p0, Lcom/appflood/f/i;->g:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/i;->f:I

    iget-object v0, p0, Lcom/appflood/f/i;->i:Lcom/appflood/e/b;

    invoke-virtual {v0, p2}, Lcom/appflood/e/b;->a(F)V

    iget-object v0, p0, Lcom/appflood/f/i;->j:Lcom/appflood/e/b;

    invoke-virtual {v0, p2}, Lcom/appflood/e/b;->a(F)V

    iget v0, p0, Lcom/appflood/f/i;->m:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/i;->m:I

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/i;->k:I

    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    return-void

    :cond_0
    const/high16 v0, 0x41300000    # 11.0f

    iget v1, p0, Lcom/appflood/f/i;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/i;->d:I

    iget v0, p0, Lcom/appflood/f/i;->g:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/i;->e:I

    iget v0, p0, Lcom/appflood/f/i;->g:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/i;->f:I

    new-instance v0, Lcom/appflood/e/b;

    const/high16 v1, 0x42980000    # 76.0f

    invoke-direct {v0, v4, v1}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v0, p0, Lcom/appflood/f/i;->i:Lcom/appflood/e/b;

    iget-object v0, p0, Lcom/appflood/f/i;->i:Lcom/appflood/e/b;

    invoke-virtual {v0, p2}, Lcom/appflood/e/b;->a(F)V

    new-instance v0, Lcom/appflood/e/b;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {v0, v4, v1}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v0, p0, Lcom/appflood/f/i;->j:Lcom/appflood/e/b;

    iget-object v0, p0, Lcom/appflood/f/i;->j:Lcom/appflood/e/b;

    invoke-virtual {v0, p2}, Lcom/appflood/e/b;->a(F)V

    iget v0, p0, Lcom/appflood/f/i;->m:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/i;->m:I

    mul-float v0, v2, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/i;->k:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/appflood/c/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/appflood/f/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appflood/f/i;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appflood/f/i;->postInvalidate()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Lcom/appflood/f/a;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/appflood/f/i;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    const v1, -0x80703

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/appflood/f/i;->m:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/appflood/f/i;->m:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/appflood/f/i;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    iget v5, p0, Lcom/appflood/f/i;->m:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/appflood/f/i;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    iget v6, p0, Lcom/appflood/f/i;->m:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/appflood/f/i;->f:I

    iget v2, p0, Lcom/appflood/f/i;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/appflood/f/i;->d:I

    iget v3, p0, Lcom/appflood/f/i;->m:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/appflood/f/i;->f:I

    iget-object v4, p0, Lcom/appflood/f/i;->i:Lcom/appflood/e/b;

    iget v4, v4, Lcom/appflood/e/b;->a:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/appflood/f/i;->m:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/appflood/f/i;->d:I

    iget-object v5, p0, Lcom/appflood/f/i;->i:Lcom/appflood/e/b;

    iget v5, v5, Lcom/appflood/e/b;->b:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/appflood/f/i;->m:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/appflood/f/i;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appflood/f/i;->c:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget v0, p0, Lcom/appflood/f/i;->f:I

    iget v2, p0, Lcom/appflood/f/i;->m:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/appflood/f/i;->e:I

    iget v3, p0, Lcom/appflood/f/i;->d:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/appflood/f/i;->i:Lcom/appflood/e/b;

    iget v3, v3, Lcom/appflood/e/b;->b:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/appflood/f/i;->m:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/appflood/f/i;->j:Lcom/appflood/e/b;

    iget v3, v3, Lcom/appflood/e/b;->a:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/appflood/f/i;->j:Lcom/appflood/e/b;

    iget v4, v4, Lcom/appflood/e/b;->b:F

    float-to-int v4, v4

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v3, v0

    add-int/2addr v4, v2

    invoke-direct {v5, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/appflood/f/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    const v2, -0x100e0c

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const v5, -0x5aa200

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/appflood/f/i;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/appflood/f/i;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/appflood/f/i;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :array_0
    .array-data 4
        -0x2bb000
        -0xd8300
    .end array-data
.end method

.class public final Lcom/appflood/f/e;
.super Lcom/appflood/f/a;


# instance fields
.field d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Paint;

.field private f:Lcom/appflood/e/b;

.field private g:Lcom/appflood/e/b;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/Rect;

.field private k:I

.field private l:I

.field private m:F

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FI)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/appflood/f/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/appflood/e/b;

    const v1, 0x43d28000    # 421.0f

    const/high16 v2, 0x434e0000    # 206.0f

    invoke-direct {v0, v1, v2}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v0, p0, Lcom/appflood/f/e;->f:Lcom/appflood/e/b;

    new-instance v0, Lcom/appflood/e/b;

    const/high16 v1, 0x42d00000    # 104.0f

    const/high16 v2, 0x42200000    # 40.0f

    invoke-direct {v0, v1, v2}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v0, p0, Lcom/appflood/f/e;->g:Lcom/appflood/e/b;

    const/16 v0, 0xd

    iput v0, p0, Lcom/appflood/f/e;->k:I

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/appflood/f/e;->m:F

    const/16 v0, 0x10

    iput v0, p0, Lcom/appflood/f/e;->n:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/appflood/f/e;->o:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appflood/f/e;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/appflood/f/e;->f:Lcom/appflood/e/b;

    invoke-virtual {v0, p2}, Lcom/appflood/e/b;->a(F)V

    iget-object v0, p0, Lcom/appflood/f/e;->g:Lcom/appflood/e/b;

    invoke-virtual {v0, p2}, Lcom/appflood/e/b;->a(F)V

    iget v0, p0, Lcom/appflood/f/e;->k:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/e;->k:I

    iget v0, p0, Lcom/appflood/f/e;->m:F

    mul-float/2addr v0, p2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/appflood/f/e;->m:F

    iget v0, p0, Lcom/appflood/f/e;->n:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/e;->n:I

    iget v0, p0, Lcom/appflood/f/e;->o:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/e;->o:I

    int-to-float v0, p3

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/e;->l:I

    new-instance v0, Lcom/appflood/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/appflood/c/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/appflood/f/e$1;

    invoke-direct {v1, p0}, Lcom/appflood/f/e$1;-><init>(Lcom/appflood/f/e;)V

    iput-object v1, v0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v0}, Lcom/appflood/b/b;->e()V

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Lcom/appflood/f/a;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget v0, p0, Lcom/appflood/f/e;->l:I

    iget v1, p0, Lcom/appflood/f/e;->l:I

    invoke-virtual {p0}, Lcom/appflood/f/e;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/appflood/f/e;->l:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/appflood/f/e;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p0, Lcom/appflood/f/e;->l:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v2, v2

    int-to-float v7, v3

    invoke-direct {v4, v5, v6, v2, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/appflood/f/e;->h:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    iget v4, p0, Lcom/appflood/f/e;->k:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, p0, Lcom/appflood/f/e;->k:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/appflood/f/e;->k:I

    add-int/2addr v0, v6

    iget-object v6, p0, Lcom/appflood/f/e;->f:Lcom/appflood/e/b;

    iget v6, v6, Lcom/appflood/e/b;->a:F

    float-to-int v6, v6

    add-int/2addr v0, v6

    int-to-float v0, v0

    iget-object v6, p0, Lcom/appflood/f/e;->f:Lcom/appflood/e/b;

    iget v6, v6, Lcom/appflood/e/b;->b:F

    float-to-int v6, v6

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-direct {v2, v4, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/appflood/f/e;->i:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/appflood/f/e;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v8

    iget-object v1, p0, Lcom/appflood/f/e;->g:Lcom/appflood/e/b;

    iget v1, v1, Lcom/appflood/e/b;->a:F

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/appflood/f/e;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v3

    iget-object v3, p0, Lcom/appflood/f/e;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/appflood/f/e;->g:Lcom/appflood/e/b;

    iget v3, v3, Lcom/appflood/e/b;->b:F

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/appflood/f/e;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/appflood/f/e;->g:Lcom/appflood/e/b;

    iget v3, v3, Lcom/appflood/e/b;->b:F

    float-to-int v3, v3

    add-int/2addr v3, v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/appflood/f/e;->j:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/appflood/f/e;->e:Landroid/graphics/Paint;

    const v1, -0x80703

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appflood/f/e;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/appflood/f/e;->h:Landroid/graphics/RectF;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/appflood/f/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/appflood/f/e;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/f/e;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/appflood/f/e;->i:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0xaaa08c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v1, p0, Lcom/appflood/f/e;->m:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/appflood/f/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/appflood/f/e;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appflood/f/e;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/appflood/f/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/appflood/f/e;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/appflood/f/e;->j:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, p0, Lcom/appflood/f/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v1, p0, Lcom/appflood/f/e;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/appflood/f/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/appflood/f/e;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/appflood/f/e;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/appflood/f/e;->d:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/appflood/f/e;->j:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

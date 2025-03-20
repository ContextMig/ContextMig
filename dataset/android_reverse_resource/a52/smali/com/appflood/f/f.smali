.class public final Lcom/appflood/f/f;
.super Lcom/appflood/f/a;


# instance fields
.field private d:Landroid/graphics/Paint;

.field private e:Lcom/appflood/e/b;

.field private f:Lcom/appflood/e/b;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/RectF;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FI)V
    .locals 4

    const/16 v3, 0x10

    invoke-direct {p0, p1}, Lcom/appflood/f/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/appflood/e/b;

    const/high16 v1, 0x43e30000    # 454.0f

    const/high16 v2, 0x435e0000    # 222.0f

    invoke-direct {v0, v1, v2}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v0, p0, Lcom/appflood/f/f;->e:Lcom/appflood/e/b;

    new-instance v0, Lcom/appflood/e/b;

    const/high16 v1, 0x43f30000    # 486.0f

    const/high16 v2, 0x437b0000    # 251.0f

    invoke-direct {v0, v1, v2}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v0, p0, Lcom/appflood/f/f;->f:Lcom/appflood/e/b;

    iput v3, p0, Lcom/appflood/f/f;->i:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/appflood/f/f;->k:I

    iput v3, p0, Lcom/appflood/f/f;->l:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/appflood/f/f;->m:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appflood/f/f;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/appflood/f/f;->e:Lcom/appflood/e/b;

    invoke-virtual {v0, p2}, Lcom/appflood/e/b;->a(F)V

    iget-object v0, p0, Lcom/appflood/f/f;->f:Lcom/appflood/e/b;

    invoke-virtual {v0, p2}, Lcom/appflood/e/b;->a(F)V

    iget v0, p0, Lcom/appflood/f/f;->i:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/f;->i:I

    iget v0, p0, Lcom/appflood/f/f;->k:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/f;->k:I

    iget v0, p0, Lcom/appflood/f/f;->l:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/f;->l:I

    iget v0, p0, Lcom/appflood/f/f;->m:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/f;->m:I

    int-to-float v0, p3

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/f/f;->j:I

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/appflood/f/a;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget v0, p0, Lcom/appflood/f/f;->j:I

    iget-object v1, p0, Lcom/appflood/f/f;->f:Lcom/appflood/e/b;

    iget v1, v1, Lcom/appflood/e/b;->a:F

    float-to-int v1, v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/appflood/f/f;->f:Lcom/appflood/e/b;

    iget v2, v2, Lcom/appflood/e/b;->b:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x0

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v0

    const/4 v5, 0x0

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v3, v4, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/appflood/f/f;->g:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/appflood/f/f;->i:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/appflood/f/f;->i:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    iget v4, p0, Lcom/appflood/f/f;->i:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/appflood/f/f;->e:Lcom/appflood/e/b;

    iget v4, v4, Lcom/appflood/e/b;->a:F

    float-to-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lcom/appflood/f/f;->e:Lcom/appflood/e/b;

    iget v4, v4, Lcom/appflood/e/b;->b:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/appflood/f/f;->h:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/appflood/f/f;->d:Landroid/graphics/Paint;

    const v1, -0x80703

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appflood/f/f;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/appflood/f/f;->g:Landroid/graphics/RectF;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/appflood/f/f;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/appflood/f/f;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/f/f;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/appflood/f/f;->h:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class public final Lcom/appflood/f/b;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/appflood/f/b;->d:Landroid/graphics/RectF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/appflood/f/b;->a:I

    iput p2, p0, Lcom/appflood/f/b;->b:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appflood/f/b;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/appflood/f/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/appflood/f/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/appflood/f/b;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appflood/f/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/appflood/f/b;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/appflood/f/b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v0, p0, Lcom/appflood/f/b;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/appflood/f/b;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/appflood/f/b;->b:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/appflood/f/b;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/appflood/f/b;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/appflood/f/b;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/appflood/f/b;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/appflood/f/b;->d:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appflood/f/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

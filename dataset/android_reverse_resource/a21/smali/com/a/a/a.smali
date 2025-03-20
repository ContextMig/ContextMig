.class public Lcom/a/a/a;
.super Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Landroid/graphics/drawable/shapes/RectShape;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:F

.field private final j:I


# direct methods
.method private constructor <init>(Lcom/a/a/c;)V
    .locals 2

    invoke-static {p1}, Lcom/a/a/c;->a(Lcom/a/a/c;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-static {p1}, Lcom/a/a/c;->a(Lcom/a/a/c;)Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a;->e:Landroid/graphics/drawable/shapes/RectShape;

    invoke-static {p1}, Lcom/a/a/c;->b(Lcom/a/a/c;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->f:I

    invoke-static {p1}, Lcom/a/a/c;->c(Lcom/a/a/c;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->g:I

    iget v0, p1, Lcom/a/a/c;->b:F

    iput v0, p0, Lcom/a/a/a;->i:F

    invoke-static {p1}, Lcom/a/a/c;->d(Lcom/a/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/a/a/c;->e(Lcom/a/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/a/a/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/a/a/c;->f(Lcom/a/a/c;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->d:I

    invoke-static {p1}, Lcom/a/a/c;->g(Lcom/a/a/c;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->h:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    iget v1, p1, Lcom/a/a/c;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/a/a/c;->h(Lcom/a/a/c;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/a/a/c;->i(Lcom/a/a/c;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/a/a/c;->j(Lcom/a/a/c;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {p1}, Lcom/a/a/c;->j(Lcom/a/a/c;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->j:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/a/a/a;->d:I

    invoke-direct {p0, v1}, Lcom/a/a/a;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/a/a/a;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/a/a/a;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/a/a/a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/a/a/c;->e(Lcom/a/a/c;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/a/a/c;Lcom/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/a;-><init>(Lcom/a/a/c;)V

    return-void
.end method

.method private a(I)I
    .locals 4

    const v3, 0x3f666666    # 0.9f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/a/a/f;
    .locals 2

    new-instance v0, Lcom/a/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/c;-><init>(Lcom/a/a/b;)V

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/a/a/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/a/a/a;->j:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/a;->j:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p0, Lcom/a/a/a;->e:Landroid/graphics/drawable/shapes/RectShape;

    instance-of v1, v1, Landroid/graphics/drawable/shapes/OvalShape;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/a/a/a;->e:Landroid/graphics/drawable/shapes/RectShape;

    instance-of v1, v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/a/a/a;->i:F

    iget v2, p0, Lcom/a/a/a;->i:F

    iget-object v3, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/a/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/a/a/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, p0, Lcom/a/a/a;->j:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/a/a/a;->a(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/a/a/a;->g:I

    if-gez v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/a/a/a;->f:I

    if-gez v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_1
    iget v2, p0, Lcom/a/a/a;->h:I

    if-gez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_2
    iget-object v4, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/a/a/a;->c:Ljava/lang/String;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v4, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/a/a/a;->g:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/a/a/a;->f:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/a/a/a;->h:I

    goto :goto_2
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/a/a/a;->f:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/a/a/a;->g:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

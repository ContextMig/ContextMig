.class public Lcom/mikepenz/iconics/a;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/Path;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lcom/mikepenz/iconics/typeface/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/a;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v0, p0, Lcom/mikepenz/iconics/a;->b:I

    iput v0, p0, Lcom/mikepenz/iconics/a;->e:I

    iput v1, p0, Lcom/mikepenz/iconics/a;->j:I

    iput v1, p0, Lcom/mikepenz/iconics/a;->k:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/mikepenz/iconics/a;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/iconics/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mikepenz/iconics/a;->a()V

    invoke-virtual {p0, p2}, Lcom/mikepenz/iconics/a;->a(Lcom/mikepenz/iconics/typeface/a;)Lcom/mikepenz/iconics/a;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/iconics/a;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/iconics/a;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/a;->h:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/a;->g:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/a;->f:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 6

    iget v0, p0, Lcom/mikepenz/iconics/a;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mikepenz/iconics/a;->i:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/mikepenz/iconics/a;->i:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->f:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/mikepenz/iconics/a;->i:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/mikepenz/iconics/a;->i:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/mikepenz/iconics/a;->i:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/mikepenz/iconics/a;->i:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v7, v0, v1

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->n:Lcom/mikepenz/iconics/typeface/a;

    invoke-interface {v0}, Lcom/mikepenz/iconics/typeface/a;->a()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mikepenz/iconics/a;->h:Landroid/graphics/Path;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->h:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/mikepenz/iconics/a;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lcom/mikepenz/iconics/a;->g:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v0, v5

    iget-object v5, p0, Lcom/mikepenz/iconics/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mikepenz/iconics/a;->g:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v5, v6

    cmpg-float v6, v0, v5

    if-gez v6, :cond_0

    :goto_0
    mul-float/2addr v0, v7

    iget-object v5, p0, Lcom/mikepenz/iconics/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mikepenz/iconics/a;->h:Landroid/graphics/Path;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mikepenz/iconics/a;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method private c(Landroid/graphics/Rect;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mikepenz/iconics/a;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/mikepenz/iconics/a;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mikepenz/iconics/a;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/mikepenz/iconics/a;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/mikepenz/iconics/a;->h:Landroid/graphics/Path;

    iget v3, p0, Lcom/mikepenz/iconics/a;->j:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/mikepenz/iconics/a;->k:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->offset(FF)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/mikepenz/iconics/a;
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    iget-object v3, p0, Lcom/mikepenz/iconics/a;->c:Landroid/graphics/Paint;

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/a;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/mikepenz/iconics/a;->invalidateSelf()V

    return-object p0
.end method

.method public a(Lcom/mikepenz/iconics/typeface/a;)Lcom/mikepenz/iconics/a;
    .locals 3

    iput-object p1, p0, Lcom/mikepenz/iconics/a;->n:Lcom/mikepenz/iconics/typeface/a;

    invoke-interface {p1}, Lcom/mikepenz/iconics/typeface/a;->b()Lcom/mikepenz/iconics/typeface/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/iconics/a;->c:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/mikepenz/iconics/a;->a:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/mikepenz/iconics/typeface/b;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/mikepenz/iconics/a;->invalidateSelf()V

    return-object p0
.end method

.method public b(I)Lcom/mikepenz/iconics/a;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/a;->a(I)Lcom/mikepenz/iconics/a;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/mikepenz/iconics/a;
    .locals 2

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->a:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/mikepenz/iconics/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/a;->d(I)Lcom/mikepenz/iconics/a;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/mikepenz/iconics/a;
    .locals 1

    const/4 v0, 0x0

    iput p1, p0, Lcom/mikepenz/iconics/a;->b:I

    invoke-virtual {p0, v0, v0, p1, p1}, Lcom/mikepenz/iconics/a;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/mikepenz/iconics/a;->invalidateSelf()V

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->n:Lcom/mikepenz/iconics/typeface/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mikepenz/iconics/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mikepenz/iconics/a;->a(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/mikepenz/iconics/a;->b(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/mikepenz/iconics/a;->c(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/mikepenz/iconics/a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mikepenz/iconics/a;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/iconics/a;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-boolean v0, p0, Lcom/mikepenz/iconics/a;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mikepenz/iconics/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/mikepenz/iconics/a;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mikepenz/iconics/a;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mikepenz/iconics/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/mikepenz/iconics/a;->l:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/mikepenz/iconics/a;->b:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/mikepenz/iconics/a;->b:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/mikepenz/iconics/a;->l:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/iconics/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setState([I)Z
    .locals 1

    iget v0, p0, Lcom/mikepenz/iconics/a;->l:I

    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/a;->setAlpha(I)V

    const/4 v0, 0x1

    return v0
.end method

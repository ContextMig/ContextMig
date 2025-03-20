.class public Lcom/db/chart/view/LineChartView;
.super Lcom/db/chart/view/ChartView;
.source "LineChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/db/chart/view/LineChartView$Style;
    }
.end annotation


# instance fields
.field private mClickableRadius:F

.field private final mStyle:Lcom/db/chart/view/LineChartView$Style;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/db/chart/view/ChartView;-><init>(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/LineChartView;->setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V

    .line 70
    new-instance v0, Lcom/db/chart/view/LineChartView$Style;

    invoke-direct {v0, p0}, Lcom/db/chart/view/LineChartView$Style;-><init>(Lcom/db/chart/view/LineChartView;)V

    iput-object v0, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    .line 71
    invoke-virtual {p0}, Lcom/db/chart/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/db/williamchart/R$dimen;->dot_region_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/db/chart/view/LineChartView;->mClickableRadius:F

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/db/chart/view/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    sget-object v0, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/LineChartView;->setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V

    .line 61
    new-instance v0, Lcom/db/chart/view/LineChartView$Style;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/db/williamchart/R$styleable;->ChartAttrs:[I

    .line 62
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/db/chart/view/LineChartView$Style;-><init>(Lcom/db/chart/view/LineChartView;Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    .line 63
    invoke-virtual {p0}, Lcom/db/chart/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/db/williamchart/R$dimen;->dot_region_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/db/chart/view/LineChartView;->mClickableRadius:F

    .line 64
    return-void
.end method

.method private applyShadow(Landroid/graphics/Paint;Lcom/db/chart/model/LineSet;)V
    .locals 8
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "set"    # Lcom/db/chart/model/LineSet;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    .line 376
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getAlpha()F

    move-result v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 377
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getShadowRadius()F

    move-result v1

    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getShadowDx()F

    move-result v2

    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getShadowDy()F

    move-result v3

    .line 378
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getAlpha()F

    move-result v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getShadowColor()[I

    move-result-object v4

    aget v4, v4, v6

    if-ge v0, v4, :cond_0

    .line 379
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getAlpha()F

    move-result v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 381
    :goto_0
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getShadowColor()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 382
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getShadowColor()[I

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    .line 383
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getShadowColor()[I

    move-result-object v6

    const/4 v7, 0x3

    aget v6, v6, v7

    .line 378
    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 377
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 384
    return-void

    .line 380
    :cond_0
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getShadowColor()[I

    move-result-object v0

    aget v0, v0, v6

    goto :goto_0
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Lcom/db/chart/model/LineSet;F)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "set"    # Lcom/db/chart/model/LineSet;
    .param p4, "minDisplayY"    # F

    .prologue
    .line 307
    invoke-super {p0}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v4

    .line 309
    .local v4, "innerChartBottom":F
    iget-object v0, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v0}, Lcom/db/chart/view/LineChartView$Style;->access$500(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p3}, Lcom/db/chart/model/LineSet;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 311
    invoke-virtual {p3}, Lcom/db/chart/model/LineSet;->hasFill()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v0}, Lcom/db/chart/view/LineChartView$Style;->access$500(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p3}, Lcom/db/chart/model/LineSet;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    :cond_0
    invoke-virtual {p3}, Lcom/db/chart/model/LineSet;->hasGradientFill()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v0}, Lcom/db/chart/view/LineChartView$Style;->access$500(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v8

    new-instance v0, Landroid/graphics/LinearGradient;

    .line 316
    invoke-super {p0}, Lcom/db/chart/view/ChartView;->getInnerChartLeft()F

    move-result v1

    .line 318
    invoke-super {p0}, Lcom/db/chart/view/ChartView;->getInnerChartLeft()F

    move-result v3

    .line 320
    invoke-virtual {p3}, Lcom/db/chart/model/LineSet;->getGradientColors()[I

    move-result-object v5

    .line 321
    invoke-virtual {p3}, Lcom/db/chart/model/LineSet;->getGradientPositions()[F

    move-result-object v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, p4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 314
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 324
    :cond_1
    invoke-virtual {p3}, Lcom/db/chart/model/LineSet;->getEnd()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v0

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 325
    invoke-virtual {p3}, Lcom/db/chart/model/LineSet;->getBegin()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v0

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 326
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 327
    iget-object v0, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v0}, Lcom/db/chart/view/LineChartView$Style;->access$500(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 328
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Lcom/db/chart/model/LineSet;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "set"    # Lcom/db/chart/model/LineSet;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/db/chart/view/LineChartView;->getInnerChartBottom()F

    move-result v4

    .line 183
    .local v4, "minY":F
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 184
    .local v5, "path":Landroid/graphics/Path;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 186
    .local v1, "bgPath":Landroid/graphics/Path;
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getBegin()I

    move-result v0

    .line 187
    .local v0, "begin":I
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getEnd()I

    move-result v2

    .line 190
    .local v2, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 192
    invoke-virtual {p2, v3}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v6

    .line 193
    .local v6, "x":F
    invoke-virtual {p2, v3}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v7

    .line 196
    .local v7, "y":F
    cmpg-float v8, v7, v4

    if-gez v8, :cond_0

    .line 197
    move v4, v7

    .line 199
    :cond_0
    if-ne v3, v0, :cond_1

    .line 201
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 203
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 213
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_2
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->hasFill()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->hasGradientFill()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 214
    :cond_3
    invoke-direct {p0, p1, v1, p2, v4}, Lcom/db/chart/view/LineChartView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Lcom/db/chart/model/LineSet;F)V

    .line 217
    :cond_4
    iget-object v8, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v8}, Lcom/db/chart/view/LineChartView$Style;->access$200(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 218
    return-void
.end method

.method private drawPoints(Landroid/graphics/Canvas;Lcom/db/chart/model/LineSet;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "set"    # Lcom/db/chart/model/LineSet;

    .prologue
    const/high16 v9, 0x437f0000    # 255.0f

    .line 133
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getBegin()I

    move-result v0

    .line 134
    .local v0, "begin":I
    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getEnd()I

    move-result v3

    .line 136
    .local v3, "end":I
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 138
    invoke-virtual {p2, v4}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/Point;

    .line 140
    .local v1, "dot":Lcom/db/chart/model/Point;
    invoke-virtual {v1}, Lcom/db/chart/model/Point;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v5}, Lcom/db/chart/view/LineChartView$Style;->access$300(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v5, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v5}, Lcom/db/chart/view/LineChartView$Style;->access$300(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getAlpha()F

    move-result v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    iget-object v5, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v5}, Lcom/db/chart/view/LineChartView$Style;->access$300(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getAlpha()F

    move-result v6

    invoke-virtual {p0, v5, v6, v1}, Lcom/db/chart/view/LineChartView;->applyShadow(Landroid/graphics/Paint;FLcom/db/chart/model/ChartEntry;)V

    .line 148
    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getY()F

    move-result v6

    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getRadius()F

    move-result v7

    iget-object v8, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v8}, Lcom/db/chart/view/LineChartView$Style;->access$300(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {v1}, Lcom/db/chart/model/Point;->hasStroke()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    iget-object v5, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v5}, Lcom/db/chart/view/LineChartView$Style;->access$400(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getStrokeThickness()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    iget-object v5, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v5}, Lcom/db/chart/view/LineChartView$Style;->access$400(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getStrokeColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v5, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v5}, Lcom/db/chart/view/LineChartView$Style;->access$400(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getAlpha()F

    move-result v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    iget-object v5, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v5}, Lcom/db/chart/view/LineChartView$Style;->access$400(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p2}, Lcom/db/chart/model/LineSet;->getAlpha()F

    move-result v6

    invoke-virtual {p0, v5, v6, v1}, Lcom/db/chart/view/LineChartView;->applyShadow(Landroid/graphics/Paint;FLcom/db/chart/model/ChartEntry;)V

    .line 159
    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getY()F

    move-result v6

    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getRadius()F

    move-result v7

    iget-object v8, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v8}, Lcom/db/chart/view/LineChartView$Style;->access$400(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 163
    :cond_0
    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 164
    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lcom/db/chart/Tools;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 165
    .local v2, "dotsBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 166
    invoke-virtual {v1}, Lcom/db/chart/model/Point;->getY()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v7}, Lcom/db/chart/view/LineChartView$Style;->access$300(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v7

    .line 165
    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    .end local v2    # "dotsBitmap":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 171
    .end local v1    # "dot":Lcom/db/chart/model/Point;
    :cond_2
    return-void
.end method

.method private drawSmoothLine(Landroid/graphics/Canvas;Lcom/db/chart/model/LineSet;)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "set"    # Lcom/db/chart/model/LineSet;

    .prologue
    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/LineChartView;->getInnerChartBottom()F

    move-result v23

    .line 244
    .local v23, "minY":F
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 245
    .local v4, "path":Landroid/graphics/Path;
    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->getBegin()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->getBegin()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v13

    invoke-virtual {v13}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v13

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 247
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 248
    .local v11, "bgPath":Landroid/graphics/Path;
    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->getBegin()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->getBegin()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v13

    invoke-virtual {v13}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->getBegin()I

    move-result v18

    .line 251
    .local v18, "begin":I
    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->getEnd()I

    move-result v19

    .line 254
    .local v19, "end":I
    move/from16 v22, v18

    .local v22, "i":I
    :goto_0
    add-int/lit8 v12, v19, -0x1

    move/from16 v0, v22

    if-ge v0, v12, :cond_1

    .line 256
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v28

    .line 257
    .local v28, "x":F
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v29

    .line 260
    .local v29, "y":F
    cmpg-float v12, v29, v23

    if-gez v12, :cond_0

    .line 261
    move/from16 v23, v29

    .line 263
    :cond_0
    move/from16 v26, v28

    .line 264
    .local v26, "thisPointX":F
    move/from16 v27, v29

    .line 266
    .local v27, "thisPointY":F
    add-int/lit8 v12, v22, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v9

    .line 267
    .local v9, "nextPointX":F
    add-int/lit8 v12, v22, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v10

    .line 269
    .local v10, "nextPointY":F
    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->size()I

    move-result v12

    add-int/lit8 v13, v22, -0x1

    invoke-static {v12, v13}, Lcom/db/chart/view/LineChartView;->si(II)I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v12

    sub-float v24, v9, v12

    .line 270
    .local v24, "startDiffX":F
    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->size()I

    move-result v12

    add-int/lit8 v13, v22, -0x1

    invoke-static {v12, v13}, Lcom/db/chart/view/LineChartView;->si(II)I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v12

    sub-float v25, v10, v12

    .line 272
    .local v25, "startDiffY":F
    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->size()I

    move-result v12

    add-int/lit8 v13, v22, 0x2

    invoke-static {v12, v13}, Lcom/db/chart/view/LineChartView;->si(II)I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v12

    sub-float v20, v12, v26

    .line 273
    .local v20, "endDiffX":F
    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->size()I

    move-result v12

    add-int/lit8 v13, v22, 0x2

    invoke-static {v12, v13}, Lcom/db/chart/view/LineChartView;->si(II)I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/db/chart/model/LineSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v12

    sub-float v21, v12, v27

    .line 275
    .local v21, "endDiffY":F
    const v12, 0x3e19999a    # 0.15f

    mul-float v12, v12, v24

    add-float v5, v26, v12

    .line 276
    .local v5, "firstControlX":F
    const v12, 0x3e19999a    # 0.15f

    mul-float v12, v12, v25

    add-float v6, v27, v12

    .line 278
    .local v6, "firstControlY":F
    const v12, 0x3e19999a    # 0.15f

    mul-float v12, v12, v20

    sub-float v7, v9, v12

    .line 279
    .local v7, "secondControlX":F
    const v12, 0x3e19999a    # 0.15f

    mul-float v12, v12, v21

    sub-float v8, v10, v12

    .line 282
    .local v8, "secondControlY":F
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    .line 286
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 254
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 291
    .end local v5    # "firstControlX":F
    .end local v6    # "firstControlY":F
    .end local v7    # "secondControlX":F
    .end local v8    # "secondControlY":F
    .end local v9    # "nextPointX":F
    .end local v10    # "nextPointY":F
    .end local v20    # "endDiffX":F
    .end local v21    # "endDiffY":F
    .end local v24    # "startDiffX":F
    .end local v25    # "startDiffY":F
    .end local v26    # "thisPointX":F
    .end local v27    # "thisPointY":F
    .end local v28    # "x":F
    .end local v29    # "y":F
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->hasFill()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/db/chart/model/LineSet;->hasGradientFill()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 292
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/db/chart/view/LineChartView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Lcom/db/chart/model/LineSet;F)V

    .line 295
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v12}, Lcom/db/chart/view/LineChartView$Style;->access$200(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 297
    return-void
.end method

.method private static si(II)I
    .locals 1
    .param p0, "setSize"    # I
    .param p1, "i"    # I

    .prologue
    .line 395
    add-int/lit8 v0, p0, -0x1

    if-le p1, v0, :cond_1

    .line 396
    add-int/lit8 p1, p0, -0x1

    .line 399
    .end local p1    # "i":I
    :cond_0
    :goto_0
    return p1

    .line 397
    .restart local p1    # "i":I
    :cond_1
    if-gez p1, :cond_0

    .line 398
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public defineRegions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Region;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/graphics/Region;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    .line 355
    .local v3, "set":Lcom/db/chart/model/ChartSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    .local v1, "regionSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Region;>;"
    invoke-virtual {v3}, Lcom/db/chart/model/ChartSet;->getEntries()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    .line 358
    .local v0, "e":Lcom/db/chart/model/ChartEntry;
    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v4

    .line 359
    .local v4, "x":F
    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v5

    .line 360
    .local v5, "y":F
    new-instance v8, Landroid/graphics/Region;

    iget v9, p0, Lcom/db/chart/view/LineChartView;->mClickableRadius:F

    sub-float v9, v4, v9

    float-to-int v9, v9

    iget v10, p0, Lcom/db/chart/view/LineChartView;->mClickableRadius:F

    sub-float v10, v5, v10

    float-to-int v10, v10

    iget v11, p0, Lcom/db/chart/view/LineChartView;->mClickableRadius:F

    add-float/2addr v11, v4

    float-to-int v11, v11

    iget v12, p0, Lcom/db/chart/view/LineChartView;->mClickableRadius:F

    add-float/2addr v12, v5

    float-to-int v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 365
    .end local v0    # "e":Lcom/db/chart/model/ChartEntry;
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 368
    .end local v1    # "regionSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Region;>;"
    .end local v3    # "set":Lcom/db/chart/model/ChartSet;
    :cond_1
    return-object v2
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/db/chart/view/ChartView;->onAttachedToWindow()V

    .line 77
    iget-object v0, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v0}, Lcom/db/chart/view/LineChartView$Style;->access$000(Lcom/db/chart/view/LineChartView$Style;)V

    .line 78
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/db/chart/view/ChartView;->onDetachedFromWindow()V

    .line 83
    iget-object v0, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v0}, Lcom/db/chart/view/LineChartView$Style;->access$100(Lcom/db/chart/view/LineChartView$Style;)V

    .line 84
    return-void
.end method

.method public onDrawChart(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/ChartSet;

    .local v1, "set":Lcom/db/chart/model/ChartSet;
    move-object v0, v1

    .line 98
    check-cast v0, Lcom/db/chart/model/LineSet;

    .line 100
    .local v0, "lineSet":Lcom/db/chart/model/LineSet;
    invoke-virtual {v0}, Lcom/db/chart/model/LineSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v3}, Lcom/db/chart/view/LineChartView$Style;->access$200(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/db/chart/model/LineSet;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v3, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v3}, Lcom/db/chart/view/LineChartView$Style;->access$200(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/db/chart/model/LineSet;->getThickness()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v3, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v3}, Lcom/db/chart/view/LineChartView$Style;->access$200(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/db/chart/view/LineChartView;->applyShadow(Landroid/graphics/Paint;Lcom/db/chart/model/LineSet;)V

    .line 106
    invoke-virtual {v0}, Lcom/db/chart/model/LineSet;->isDashed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v3}, Lcom/db/chart/view/LineChartView$Style;->access$200(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v3

    new-instance v4, Landroid/graphics/DashPathEffect;

    .line 108
    invoke-virtual {v0}, Lcom/db/chart/model/LineSet;->getDashedIntervals()[F

    move-result-object v5

    invoke-virtual {v0}, Lcom/db/chart/model/LineSet;->getDashedPhase()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 113
    :goto_1
    invoke-virtual {v0}, Lcom/db/chart/model/LineSet;->isSmooth()Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/db/chart/view/LineChartView;->drawLine(Landroid/graphics/Canvas;Lcom/db/chart/model/LineSet;)V

    .line 119
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/db/chart/view/LineChartView;->drawPoints(Landroid/graphics/Canvas;Lcom/db/chart/model/LineSet;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/db/chart/view/LineChartView;->mStyle:Lcom/db/chart/view/LineChartView$Style;

    invoke-static {v3}, Lcom/db/chart/view/LineChartView$Style;->access$200(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_1

    .line 116
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/db/chart/view/LineChartView;->drawSmoothLine(Landroid/graphics/Canvas;Lcom/db/chart/model/LineSet;)V

    goto :goto_2

    .line 123
    .end local v0    # "lineSet":Lcom/db/chart/model/LineSet;
    .end local v1    # "set":Lcom/db/chart/model/ChartSet;
    :cond_3
    return-void
.end method

.method public setClickablePointRadius(F)Lcom/db/chart/view/LineChartView;
    .locals 0
    .param p1, "radius"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 410
    iput p1, p0, Lcom/db/chart/view/LineChartView;->mClickableRadius:F

    .line 411
    return-object p0
.end method

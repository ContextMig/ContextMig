.class public abstract Lcom/db/chart/view/BaseBarChartView;
.super Lcom/db/chart/view/ChartView;
.source "BaseBarChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/db/chart/view/BaseBarChartView$Style;
    }
.end annotation


# instance fields
.field barWidth:F

.field drawingOffset:F

.field final style:Lcom/db/chart/view/BaseBarChartView$Style;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/db/chart/view/ChartView;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/db/chart/view/BaseBarChartView$Style;

    invoke-direct {v0, p0}, Lcom/db/chart/view/BaseBarChartView$Style;-><init>(Lcom/db/chart/view/BaseBarChartView;)V

    iput-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/db/chart/view/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lcom/db/chart/view/BaseBarChartView$Style;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/db/williamchart/R$styleable;->ChartAttrs:[I

    .line 58
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/db/chart/view/BaseBarChartView$Style;-><init>(Lcom/db/chart/view/BaseBarChartView;Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    .line 60
    return-void
.end method


# virtual methods
.method calculateBarsWidth(IFF)V
    .locals 3
    .param p1, "nSets"    # I
    .param p2, "x0"    # F
    .param p3, "x1"    # F

    .prologue
    .line 142
    sub-float v0, p3, p2

    iget-object v1, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barSpacing:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->setSpacing:F

    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/BaseBarChartView;->barWidth:F

    .line 143
    return-void
.end method

.method calculatePositionOffset(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 155
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 156
    int-to-float v0, p1

    iget v1, p0, Lcom/db/chart/view/BaseBarChartView;->barWidth:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->setSpacing:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/BaseBarChartView;->drawingOffset:F

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/db/chart/view/BaseBarChartView;->barWidth:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->setSpacing:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/BaseBarChartView;->drawingOffset:F

    goto :goto_0
.end method

.method drawBar(Landroid/graphics/Canvas;FFFF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 109
    new-instance v0, Landroid/graphics/RectF;

    float-to-int v1, p2

    int-to-float v1, v1

    float-to-int v2, p3

    int-to-float v2, v2

    float-to-int v3, p4

    int-to-float v3, v3

    float-to-int v4, p5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->cornerRadius:F

    iget-object v2, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->cornerRadius:F

    iget-object v3, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v3, v3, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 112
    return-void
.end method

.method drawBarBackground(Landroid/graphics/Canvas;FFFF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 127
    new-instance v0, Landroid/graphics/RectF;

    float-to-int v1, p2

    int-to-float v1, v1

    float-to-int v2, p3

    int-to-float v2, v2

    float-to-int v3, p4

    int-to-float v3, v3

    float-to-int v4, p5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->cornerRadius:F

    iget-object v2, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->cornerRadius:F

    iget-object v3, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v3, v3, Lcom/db/chart/view/BaseBarChartView$Style;->barBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 130
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/db/chart/view/ChartView;->onAttachedToWindow()V

    .line 74
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    invoke-static {v0}, Lcom/db/chart/view/BaseBarChartView$Style;->access$000(Lcom/db/chart/view/BaseBarChartView$Style;)V

    .line 75
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/db/chart/view/ChartView;->onDetachedFromWindow()V

    .line 81
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    invoke-static {v0}, Lcom/db/chart/view/BaseBarChartView$Style;->access$100(Lcom/db/chart/view/BaseBarChartView$Style;)V

    .line 82
    return-void
.end method

.method protected onDrawChart(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 94
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/db/chart/view/ChartView;->reset()V

    .line 165
    invoke-virtual {p0}, Lcom/db/chart/view/BaseBarChartView;->setMandatoryBorderSpacing()V

    .line 166
    return-void
.end method

.method public setBarBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 203
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/db/chart/view/BaseBarChartView$Style;->hasBarBackground:Z

    .line 204
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    invoke-static {v0, p1}, Lcom/db/chart/view/BaseBarChartView$Style;->access$202(Lcom/db/chart/view/BaseBarChartView$Style;I)I

    .line 205
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v0, v0, Lcom/db/chart/view/BaseBarChartView$Style;->barBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v0, v0, Lcom/db/chart/view/BaseBarChartView$Style;->barBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    invoke-static {v1}, Lcom/db/chart/view/BaseBarChartView$Style;->access$200(Lcom/db/chart/view/BaseBarChartView$Style;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public setBarSpacing(F)V
    .locals 1
    .param p1, "spacing"    # F

    .prologue
    .line 182
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iput p1, v0, Lcom/db/chart/view/BaseBarChartView$Style;->barSpacing:F

    .line 183
    return-void
.end method

.method public setRoundCorners(F)V
    .locals 1
    .param p1, "radius"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 216
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iput p1, v0, Lcom/db/chart/view/BaseBarChartView$Style;->cornerRadius:F

    .line 217
    return-void
.end method

.method public setSetSpacing(F)V
    .locals 1
    .param p1, "spacing"    # F

    .prologue
    .line 192
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iput p1, v0, Lcom/db/chart/view/BaseBarChartView$Style;->setSpacing:F

    .line 193
    return-void
.end method

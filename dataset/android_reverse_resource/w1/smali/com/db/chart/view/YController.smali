.class public Lcom/db/chart/view/YController;
.super Lcom/db/chart/view/AxisController;
.source "YController.java"


# direct methods
.method public constructor <init>(Lcom/db/chart/view/ChartView;)V
    .locals 0
    .param p1, "chartView"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/db/chart/view/AxisController;-><init>(Lcom/db/chart/view/ChartView;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/db/chart/view/ChartView;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "chartView"    # Lcom/db/chart/view/ChartView;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/db/chart/view/AxisController;-><init>(Lcom/db/chart/view/ChartView;Landroid/content/res/TypedArray;)V

    .line 42
    return-void
.end method

.method private getLabelHeight(Ljava/lang/String;)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 179
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v1, v1, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 180
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    return v1
.end method


# virtual methods
.method protected defineAxisPosition()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->getInnerChartLeft()F

    move-result v0

    iput v0, p0, Lcom/db/chart/view/YController;->axisPosition:F

    .line 137
    iget-boolean v0, p0, Lcom/db/chart/view/YController;->hasAxis:Z

    if-eqz v0, :cond_0

    .line 138
    iget v0, p0, Lcom/db/chart/view/YController;->axisPosition:F

    iget-object v1, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v1, v1, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget v1, v1, Lcom/db/chart/view/ChartView$Style;->axisThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/YController;->axisPosition:F

    .line 139
    :cond_0
    return-void
.end method

.method defineLabelsPosition(FF)V
    .locals 1
    .param p1, "innerStart"    # F
    .param p2, "innerEnd"    # F

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lcom/db/chart/view/AxisController;->defineLabelsPosition(FF)V

    .line 167
    iget-object v0, p0, Lcom/db/chart/view/YController;->labelsPos:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 168
    return-void
.end method

.method protected defineStaticLabelsPosition()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 149
    iget v0, p0, Lcom/db/chart/view/YController;->axisPosition:F

    iput v0, p0, Lcom/db/chart/view/YController;->labelsStaticPos:F

    .line 151
    iget-object v0, p0, Lcom/db/chart/view/YController;->labelsPositioning:Lcom/db/chart/view/AxisController$LabelPosition;

    sget-object v1, Lcom/db/chart/view/AxisController$LabelPosition;->INSIDE:Lcom/db/chart/view/AxisController$LabelPosition;

    if-ne v0, v1, :cond_1

    .line 152
    iget v0, p0, Lcom/db/chart/view/YController;->labelsStaticPos:F

    iget v1, p0, Lcom/db/chart/view/YController;->distLabelToAxis:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/YController;->labelsStaticPos:F

    .line 153
    iget-boolean v0, p0, Lcom/db/chart/view/YController;->hasAxis:Z

    if-eqz v0, :cond_0

    .line 154
    iget v0, p0, Lcom/db/chart/view/YController;->labelsStaticPos:F

    iget-object v1, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v1, v1, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget v1, v1, Lcom/db/chart/view/ChartView$Style;->axisThickness:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/YController;->labelsStaticPos:F

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/db/chart/view/YController;->labelsPositioning:Lcom/db/chart/view/AxisController$LabelPosition;

    sget-object v1, Lcom/db/chart/view/AxisController$LabelPosition;->OUTSIDE:Lcom/db/chart/view/AxisController$LabelPosition;

    if-ne v0, v1, :cond_0

    .line 157
    iget v0, p0, Lcom/db/chart/view/YController;->labelsStaticPos:F

    iget v1, p0, Lcom/db/chart/view/YController;->distLabelToAxis:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/YController;->labelsStaticPos:F

    .line 158
    iget-boolean v0, p0, Lcom/db/chart/view/YController;->hasAxis:Z

    if-eqz v0, :cond_0

    .line 159
    iget v0, p0, Lcom/db/chart/view/YController;->labelsStaticPos:F

    iget-object v1, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v1, v1, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget v1, v1, Lcom/db/chart/view/ChartView$Style;->axisThickness:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/YController;->labelsStaticPos:F

    goto :goto_0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/db/chart/view/AxisController;->dispose()V

    .line 60
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->getInnerChartTop()F

    move-result v0

    iget-object v1, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {v1}, Lcom/db/chart/view/ChartView;->getChartBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/db/chart/view/YController;->defineMandatoryBorderSpacing(FF)V

    .line 61
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->getInnerChartTop()F

    move-result v0

    iget-object v1, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {v1}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/db/chart/view/YController;->defineLabelsPosition(FF)V

    .line 62
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/db/chart/view/YController;->hasAxis:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iget v4, v0, Lcom/db/chart/view/XController;->axisPosition:F

    .line 190
    .local v4, "bottom":F
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iget-boolean v0, v0, Lcom/db/chart/view/XController;->hasAxis:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget v0, v0, Lcom/db/chart/view/ChartView$Style;->axisThickness:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v4, v0

    .line 193
    :cond_0
    iget v1, p0, Lcom/db/chart/view/YController;->axisPosition:F

    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    .line 194
    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->getChartTop()I

    move-result v0

    int-to-float v2, v0

    iget v3, p0, Lcom/db/chart/view/YController;->axisPosition:F

    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v5, v0, Lcom/db/chart/view/ChartView$Style;->chartPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 193
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 200
    .end local v4    # "bottom":F
    :cond_1
    iget-object v0, p0, Lcom/db/chart/view/YController;->labelsPositioning:Lcom/db/chart/view/AxisController$LabelPosition;

    sget-object v1, Lcom/db/chart/view/AxisController$LabelPosition;->NONE:Lcom/db/chart/view/AxisController$LabelPosition;

    if-eq v0, v1, :cond_3

    .line 202
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v1, v0, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/db/chart/view/YController;->labelsPositioning:Lcom/db/chart/view/AxisController$LabelPosition;

    sget-object v2, Lcom/db/chart/view/AxisController$LabelPosition;->OUTSIDE:Lcom/db/chart/view/AxisController$LabelPosition;

    if-ne v0, v2, :cond_2

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 207
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v0, p0, Lcom/db/chart/view/YController;->nLabels:I

    if-ge v6, v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/db/chart/view/YController;->labels:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/db/chart/view/YController;->labelsStaticPos:F

    iget-object v1, p0, Lcom/db/chart/view/YController;->labelsPos:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v1, p0, Lcom/db/chart/view/YController;->labels:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/db/chart/view/YController;->getLabelHeight(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v3, v3, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v3, v3, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    .line 208
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 202
    .end local v6    # "i":I
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 214
    :cond_3
    return-void
.end method

.method measure()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {p0}, Lcom/db/chart/view/YController;->measureInnerChartLeft()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/db/chart/view/ChartView;->setInnerChartLeft(F)V

    .line 49
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {p0}, Lcom/db/chart/view/YController;->measureInnerChartBottom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/db/chart/view/ChartView;->setInnerChartBottom(F)V

    .line 50
    return-void
.end method

.method public measureInnerChartBottom()F
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/db/chart/view/YController;->labelsPositioning:Lcom/db/chart/view/AxisController$LabelPosition;

    sget-object v1, Lcom/db/chart/view/AxisController$LabelPosition;->NONE:Lcom/db/chart/view/AxisController$LabelPosition;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/db/chart/view/YController;->borderSpacing:F

    invoke-virtual {p0}, Lcom/db/chart/view/YController;->getLabelsMaxHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->getChartBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/db/chart/view/YController;->getLabelsMaxHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->getChartBottom()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public measureInnerChartLeft()F
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "result":F
    iget-boolean v4, p0, Lcom/db/chart/view/YController;->hasAxis:Z

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v4, v4, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget v4, v4, Lcom/db/chart/view/ChartView$Style;->axisThickness:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {v4}, Lcom/db/chart/view/ChartView;->getChartLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 98
    iget-boolean v4, p0, Lcom/db/chart/view/YController;->hasAxis:Z

    if-eqz v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v4, v4, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget v4, v4, Lcom/db/chart/view/ChartView$Style;->axisThickness:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/db/chart/view/YController;->labelsPositioning:Lcom/db/chart/view/AxisController$LabelPosition;

    sget-object v5, Lcom/db/chart/view/AxisController$LabelPosition;->OUTSIDE:Lcom/db/chart/view/AxisController$LabelPosition;

    if-ne v4, v5, :cond_4

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "maxLabelLength":F
    iget-object v4, p0, Lcom/db/chart/view/YController;->labels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "label":Ljava/lang/String;
    iget-object v5, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v5, v5, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v5, v5, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .local v0, "aux":F
    cmpl-float v5, v0, v2

    if-lez v5, :cond_2

    .line 106
    move v2, v0

    goto :goto_0

    .line 107
    .end local v0    # "aux":F
    .end local v1    # "label":Ljava/lang/String;
    :cond_3
    iget v4, p0, Lcom/db/chart/view/YController;->distLabelToAxis:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 109
    .end local v2    # "maxLabelLength":F
    :cond_4
    return v3
.end method

.method parsePos(ID)F
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/db/chart/view/YController;->handleValues:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/db/chart/view/YController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iget v0, v0, Lcom/db/chart/view/XController;->axisPosition:F

    float-to-double v2, v0

    iget v0, p0, Lcom/db/chart/view/YController;->minLabelValue:I

    int-to-double v0, v0

    sub-double v0, p2, v0

    iget v4, p0, Lcom/db/chart/view/YController;->screenStep:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    iget-object v0, p0, Lcom/db/chart/view/YController;->labelsValues:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/db/chart/view/YController;->minLabelValue:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v4, v0

    sub-double v0, v2, v0

    double-to-float v0, v0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/YController;->labelsPos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

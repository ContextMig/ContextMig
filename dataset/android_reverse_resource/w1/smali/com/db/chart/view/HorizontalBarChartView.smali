.class public Lcom/db/chart/view/HorizontalBarChartView;
.super Lcom/db/chart/view/BaseBarChartView;
.source "HorizontalBarChartView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/db/chart/view/BaseBarChartView;-><init>(Landroid/content/Context;)V

    .line 49
    sget-object v0, Lcom/db/chart/view/ChartView$Orientation;->HORIZONTAL:Lcom/db/chart/view/ChartView$Orientation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/HorizontalBarChartView;->setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V

    .line 50
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->setMandatoryBorderSpacing()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/db/chart/view/BaseBarChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget-object v0, Lcom/db/chart/view/ChartView$Orientation;->HORIZONTAL:Lcom/db/chart/view/ChartView$Orientation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/HorizontalBarChartView;->setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V

    .line 42
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->setMandatoryBorderSpacing()V

    .line 43
    return-void
.end method


# virtual methods
.method public defineRegions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
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
    .line 160
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 161
    .local v5, "nSets":I
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v8}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v4

    .line 163
    .local v4, "nEntries":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/graphics/Region;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 166
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    .line 175
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v8, v2}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v8

    iget v9, p0, Lcom/db/chart/view/HorizontalBarChartView;->drawingOffset:F

    sub-float v6, v8, v9

    .line 177
    .local v6, "offset":F
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 179
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/BarSet;

    .line 180
    .local v1, "barSet":Lcom/db/chart/model/BarSet;
    invoke-virtual {v1, v2}, Lcom/db/chart/model/BarSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/Bar;

    .line 182
    .local v0, "bar":Lcom/db/chart/model/Bar;
    invoke-virtual {v0}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 183
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/Region;

    .line 184
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->getZeroPosition()F

    move-result v10

    float-to-int v10, v10

    float-to-int v11, v6

    .line 186
    invoke-virtual {v0}, Lcom/db/chart/model/Bar;->getX()F

    move-result v12

    float-to-int v12, v12

    iget v13, p0, Lcom/db/chart/view/HorizontalBarChartView;->barWidth:F

    add-float/2addr v13, v6

    float-to-int v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Region;-><init>(IIII)V

    .line 183
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_3
    add-int/lit8 v8, v5, -0x1

    if-eq v3, v8, :cond_1

    .line 197
    iget-object v8, p0, Lcom/db/chart/view/HorizontalBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v8, v8, Lcom/db/chart/view/BaseBarChartView$Style;->setSpacing:F

    add-float/2addr v6, v8

    .line 177
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 189
    :cond_2
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/Region;

    .line 190
    invoke-virtual {v0}, Lcom/db/chart/model/Bar;->getX()F

    move-result v10

    float-to-int v10, v10

    float-to-int v11, v6

    .line 192
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->getZeroPosition()F

    move-result v12

    float-to-int v12, v12

    iget v13, p0, Lcom/db/chart/view/HorizontalBarChartView;->barWidth:F

    add-float/2addr v13, v6

    float-to-int v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Region;-><init>(IIII)V

    .line 189
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 172
    .end local v0    # "bar":Lcom/db/chart/model/Bar;
    .end local v1    # "barSet":Lcom/db/chart/model/BarSet;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    .end local v3    # "j":I
    .end local v6    # "offset":F
    :cond_4
    return-object v7
.end method

.method public onDrawChart(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 12
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
    .line 65
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 66
    .local v11, "nSets":I
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v10

    .line 72
    .local v10, "nEntries":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_5

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0, v8}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v0

    iget v1, p0, Lcom/db/chart/view/HorizontalBarChartView;->drawingOffset:F

    sub-float v3, v0, v1

    .line 77
    .local v3, "offset":F
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v11, :cond_4

    .line 79
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/db/chart/model/BarSet;

    .line 80
    .local v7, "barSet":Lcom/db/chart/model/BarSet;
    invoke-virtual {v7, v8}, Lcom/db/chart/model/BarSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v6

    check-cast v6, Lcom/db/chart/model/Bar;

    .line 83
    .local v6, "bar":Lcom/db/chart/model/Bar;
    invoke-virtual {v7}, Lcom/db/chart/model/BarSet;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/db/chart/view/HorizontalBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v0, v0, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/db/chart/model/Bar;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/db/chart/view/HorizontalBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v0, v0, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/db/chart/model/BarSet;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    iget-object v0, p0, Lcom/db/chart/view/HorizontalBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v0, v0, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/db/chart/model/BarSet;->getAlpha()F

    move-result v1

    invoke-virtual {p0, v0, v1, v6}, Lcom/db/chart/view/HorizontalBarChartView;->applyShadow(Landroid/graphics/Paint;FLcom/db/chart/model/ChartEntry;)V

    .line 91
    iget-object v0, p0, Lcom/db/chart/view/HorizontalBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-boolean v0, v0, Lcom/db/chart/view/BaseBarChartView$Style;->hasBarBackground:Z

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->getInnerChartLeft()F

    move-result v2

    .line 94
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->getInnerChartRight()F

    move-result v4

    iget v0, p0, Lcom/db/chart/view/HorizontalBarChartView;->barWidth:F

    add-float v5, v3, v0

    move-object v0, p0

    move-object v1, p1

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/db/chart/view/HorizontalBarChartView;->drawBarBackground(Landroid/graphics/Canvas;FFFF)V

    .line 98
    :cond_2
    invoke-virtual {v6}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->getZeroPosition()F

    move-result v2

    .line 102
    invoke-virtual {v6}, Lcom/db/chart/model/Bar;->getX()F

    move-result v4

    iget v0, p0, Lcom/db/chart/view/HorizontalBarChartView;->barWidth:F

    add-float v5, v3, v0

    move-object v0, p0

    move-object v1, p1

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/db/chart/view/HorizontalBarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    .line 109
    :goto_3
    iget v0, p0, Lcom/db/chart/view/HorizontalBarChartView;->barWidth:F

    add-float/2addr v3, v0

    .line 112
    add-int/lit8 v0, v11, -0x1

    if-eq v9, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/db/chart/view/HorizontalBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v0, v0, Lcom/db/chart/view/BaseBarChartView$Style;->setSpacing:F

    add-float/2addr v3, v0

    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {v6}, Lcom/db/chart/model/Bar;->getX()F

    move-result v2

    .line 107
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->getZeroPosition()F

    move-result v4

    iget v0, p0, Lcom/db/chart/view/HorizontalBarChartView;->barWidth:F

    add-float v5, v3, v0

    move-object v0, p0

    move-object v1, p1

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/db/chart/view/HorizontalBarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    goto :goto_3

    .line 72
    .end local v6    # "bar":Lcom/db/chart/model/Bar;
    .end local v7    # "barSet":Lcom/db/chart/model/BarSet;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 116
    .end local v3    # "offset":F
    .end local v9    # "j":I
    :cond_5
    return-void
.end method

.method protected onPreDrawChart(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/db/chart/view/HorizontalBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iput v4, v0, Lcom/db/chart/view/BaseBarChartView$Style;->barSpacing:F

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->getInnerChartBottom()F

    move-result v1

    .line 133
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->getInnerChartTop()F

    move-result v2

    sub-float/2addr v1, v2

    .line 134
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalBarChartView;->getBorderSpacing()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 132
    invoke-virtual {p0, v0, v4, v1}, Lcom/db/chart/view/HorizontalBarChartView;->calculateBarsWidth(IFF)V

    .line 140
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/db/chart/view/HorizontalBarChartView;->calculatePositionOffset(I)V

    .line 141
    return-void

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0, v2}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v2

    .line 138
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0, v3}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v0

    .line 137
    invoke-virtual {p0, v1, v2, v0}, Lcom/db/chart/view/HorizontalBarChartView;->calculateBarsWidth(IFF)V

    goto :goto_0
.end method

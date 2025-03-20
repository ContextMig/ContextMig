.class public Lcom/db/chart/view/BarChartView;
.super Lcom/db/chart/view/BaseBarChartView;
.source "BarChartView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/db/chart/view/BaseBarChartView;-><init>(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/BarChartView;->setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V

    .line 52
    invoke-virtual {p0}, Lcom/db/chart/view/BarChartView;->setMandatoryBorderSpacing()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/db/chart/view/BaseBarChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget-object v0, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/BarChartView;->setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V

    .line 44
    invoke-virtual {p0}, Lcom/db/chart/view/BarChartView;->setMandatoryBorderSpacing()V

    .line 45
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
    .line 172
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 173
    .local v5, "nSets":I
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v8}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v4

    .line 175
    .local v4, "nEntries":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/graphics/Region;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 178
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    .line 187
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v8, v2}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v8

    iget v9, p0, Lcom/db/chart/view/BarChartView;->drawingOffset:F

    sub-float v6, v8, v9

    .line 189
    .local v6, "offset":F
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 191
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/BarSet;

    .line 192
    .local v1, "barSet":Lcom/db/chart/model/BarSet;
    invoke-virtual {v1, v2}, Lcom/db/chart/model/BarSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/Bar;

    .line 194
    .local v0, "bar":Lcom/db/chart/model/Bar;
    invoke-virtual {v0}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 195
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/Region;

    float-to-int v10, v6

    .line 197
    invoke-virtual {v0}, Lcom/db/chart/model/Bar;->getY()F

    move-result v11

    float-to-int v11, v11

    iget v12, p0, Lcom/db/chart/view/BarChartView;->barWidth:F

    add-float/2addr v6, v12

    float-to-int v12, v6

    .line 199
    invoke-virtual {p0}, Lcom/db/chart/view/BarChartView;->getZeroPosition()F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Region;-><init>(IIII)V

    .line 195
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :goto_3
    add-int/lit8 v8, v5, -0x1

    if-eq v3, v8, :cond_1

    .line 209
    iget-object v8, p0, Lcom/db/chart/view/BarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v8, v8, Lcom/db/chart/view/BaseBarChartView$Style;->setSpacing:F

    add-float/2addr v6, v8

    .line 189
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 201
    :cond_2
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/Region;

    float-to-int v10, v6

    .line 203
    invoke-virtual {p0}, Lcom/db/chart/view/BarChartView;->getZeroPosition()F

    move-result v11

    float-to-int v11, v11

    iget v12, p0, Lcom/db/chart/view/BarChartView;->barWidth:F

    add-float/2addr v6, v12

    float-to-int v12, v6

    .line 205
    invoke-virtual {v0}, Lcom/db/chart/model/Bar;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Region;-><init>(IIII)V

    .line 201
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 184
    .end local v0    # "bar":Lcom/db/chart/model/Bar;
    .end local v1    # "barSet":Lcom/db/chart/model/BarSet;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    .end local v3    # "j":I
    .end local v6    # "offset":F
    :cond_4
    return-object v7
.end method

.method public onDrawChart(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 17
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
    .line 66
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 67
    .local v14, "nSets":I
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v1}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v13

    .line 73
    .local v13, "nEntries":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_6

    .line 76
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v1, v11}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/db/chart/view/BarChartView;->drawingOffset:F

    sub-float v15, v1, v2

    .line 78
    .local v15, "offset":F
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v14, :cond_5

    .line 80
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/db/chart/model/BarSet;

    .line 81
    .local v10, "barSet":Lcom/db/chart/model/BarSet;
    invoke-virtual {v10, v11}, Lcom/db/chart/model/BarSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v9

    check-cast v9, Lcom/db/chart/model/Bar;

    .line 84
    .local v9, "bar":Lcom/db/chart/model/Bar;
    invoke-virtual {v10}, Lcom/db/chart/model/BarSet;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->hasGradientColor()Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/BarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/BarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Lcom/db/chart/model/BarSet;->getAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/BarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Lcom/db/chart/model/BarSet;->getAlpha()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v9}, Lcom/db/chart/view/BarChartView;->applyShadow(Landroid/graphics/Paint;FLcom/db/chart/model/ChartEntry;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/BarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-boolean v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->hasBarBackground:Z

    if-eqz v1, :cond_2

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/BarChartView;->getInnerChartTop()F

    move-result v4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/db/chart/view/BarChartView;->barWidth:F

    add-float v5, v15, v1

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/BarChartView;->getInnerChartBottom()F

    move-result v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v15

    .line 104
    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/BarChartView;->drawBarBackground(Landroid/graphics/Canvas;FFFF)V

    .line 110
    :cond_2
    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 113
    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/db/chart/view/BarChartView;->barWidth:F

    add-float v5, v15, v1

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/BarChartView;->getZeroPosition()F

    move-result v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v15

    .line 112
    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/BarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    .line 121
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/db/chart/view/BarChartView;->barWidth:F

    add-float/2addr v15, v1

    .line 124
    add-int/lit8 v1, v14, -0x1

    if-eq v12, v1, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/BarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->setSpacing:F

    add-float/2addr v15, v1

    goto/16 :goto_2

    .line 90
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/BarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v0, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    new-instance v1, Landroid/graphics/LinearGradient;

    .line 92
    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->getX()F

    move-result v2

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/BarChartView;->getZeroPosition()F

    move-result v3

    .line 94
    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->getX()F

    move-result v4

    .line 95
    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->getY()F

    move-result v5

    .line 96
    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->getGradientColors()[I

    move-result-object v6

    .line 97
    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->getGradientPositions()[F

    move-result-object v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 90
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_3

    .line 118
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/BarChartView;->getZeroPosition()F

    move-result v4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/db/chart/view/BarChartView;->barWidth:F

    add-float v5, v15, v1

    .line 119
    invoke-virtual {v9}, Lcom/db/chart/model/Bar;->getY()F

    move-result v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v15

    .line 117
    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/BarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    goto :goto_4

    .line 73
    .end local v9    # "bar":Lcom/db/chart/model/Bar;
    .end local v10    # "barSet":Lcom/db/chart/model/BarSet;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 128
    .end local v12    # "j":I
    .end local v15    # "offset":F
    :cond_6
    return-void
.end method

.method protected onPreDrawChart(Ljava/util/ArrayList;)V
    .locals 6
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 142
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 143
    iget-object v0, p0, Lcom/db/chart/view/BarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iput v4, v0, Lcom/db/chart/view/BaseBarChartView$Style;->barSpacing:F

    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/db/chart/view/BarChartView;->getInnerChartRight()F

    move-result v1

    .line 145
    invoke-virtual {p0}, Lcom/db/chart/view/BarChartView;->getInnerChartLeft()F

    move-result v2

    sub-float/2addr v1, v2

    .line 146
    invoke-virtual {p0}, Lcom/db/chart/view/BarChartView;->getBorderSpacing()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 144
    invoke-virtual {p0, v0, v4, v1}, Lcom/db/chart/view/BarChartView;->calculateBarsWidth(IFF)V

    .line 152
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/db/chart/view/BarChartView;->calculatePositionOffset(I)V

    .line 153
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0, v3}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v2

    .line 150
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0, v5}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v0

    .line 149
    invoke-virtual {p0, v1, v2, v0}, Lcom/db/chart/view/BarChartView;->calculateBarsWidth(IFF)V

    goto :goto_0
.end method

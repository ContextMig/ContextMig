.class public Lcom/db/chart/view/HorizontalStackBarChartView;
.super Lcom/db/chart/view/BaseStackBarChartView;
.source "HorizontalStackBarChartView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/db/chart/view/BaseStackBarChartView;-><init>(Landroid/content/Context;)V

    .line 49
    sget-object v0, Lcom/db/chart/view/ChartView$Orientation;->HORIZONTAL:Lcom/db/chart/view/ChartView$Orientation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/HorizontalStackBarChartView;->setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V

    .line 50
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalStackBarChartView;->setMandatoryBorderSpacing()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/db/chart/view/BaseStackBarChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget-object v0, Lcom/db/chart/view/ChartView$Orientation;->HORIZONTAL:Lcom/db/chart/view/ChartView$Orientation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/HorizontalStackBarChartView;->setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V

    .line 42
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalStackBarChartView;->setMandatoryBorderSpacing()V

    .line 43
    return-void
.end method


# virtual methods
.method public defineRegions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 23
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
    .line 243
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 244
    .local v5, "dataSize":I
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v15}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v12

    .line 245
    .local v12, "setSize":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/graphics/Region;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 247
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/HorizontalStackBarChartView;->getZeroPosition()F

    move-result v14

    .line 261
    .local v14, "zeroPosition":F
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v12, :cond_5

    .line 264
    const/4 v10, 0x0

    .line 265
    .local v10, "offset":F
    const/4 v9, 0x0

    .line 267
    .local v9, "negOffset":F
    move v4, v14

    .line 268
    .local v4, "currBottom":F
    move v8, v14

    .line 270
    .local v8, "negCurrBottom":F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v5, :cond_4

    .line 272
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/db/chart/model/BarSet;

    .line 273
    .local v2, "barSet":Lcom/db/chart/model/BarSet;
    invoke-virtual {v2, v6}, Lcom/db/chart/model/BarSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/Bar;

    .line 275
    .local v1, "bar":Lcom/db/chart/model/Bar;
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getX()F

    move-result v15

    sub-float v15, v14, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 282
    .local v3, "barSize":F
    invoke-virtual {v2}, Lcom/db/chart/model/BarSet;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v15

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_1

    const/high16 v15, 0x40000000    # 2.0f

    cmpg-float v15, v3, v15

    if-gez v15, :cond_2

    .line 270
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 285
    :cond_2
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v15

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_3

    .line 287
    sub-float v15, v3, v10

    add-float v13, v14, v15

    .line 288
    .local v13, "x1":F
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    new-instance v16, Landroid/graphics/Region;

    float-to-int v0, v4

    move/from16 v17, v0

    .line 290
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->barWidth:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    float-to-int v0, v13

    move/from16 v19, v0

    .line 292
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->barWidth:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Region;-><init>(IIII)V

    .line 288
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    move v4, v13

    .line 295
    const/high16 v15, 0x40000000    # 2.0f

    sub-float v15, v3, v15

    sub-float/2addr v10, v15

    goto :goto_3

    .line 298
    .end local v13    # "x1":F
    :cond_3
    add-float v15, v3, v9

    sub-float v13, v14, v15

    .line 299
    .restart local v13    # "x1":F
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    new-instance v16, Landroid/graphics/Region;

    float-to-int v0, v13

    move/from16 v17, v0

    .line 301
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->barWidth:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    float-to-int v0, v8

    move/from16 v19, v0

    .line 303
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->barWidth:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Region;-><init>(IIII)V

    .line 299
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    move v8, v13

    .line 306
    add-float/2addr v9, v3

    goto/16 :goto_3

    .line 261
    .end local v1    # "bar":Lcom/db/chart/model/Bar;
    .end local v2    # "barSet":Lcom/db/chart/model/BarSet;
    .end local v3    # "barSize":F
    .end local v13    # "x1":F
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 311
    .end local v4    # "currBottom":F
    .end local v7    # "j":I
    .end local v8    # "negCurrBottom":F
    .end local v9    # "negOffset":F
    .end local v10    # "offset":F
    :cond_5
    return-object v11
.end method

.method public onDrawChart(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 25
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
    .line 79
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 80
    .local v13, "dataSize":I
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v1}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v19

    .line 81
    .local v19, "setSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/HorizontalStackBarChartView;->getZeroPosition()F

    move-result v24

    .line 83
    .local v24, "zeroPosition":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v14, v0, :cond_b

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-boolean v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->hasBarBackground:Z

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/HorizontalStackBarChartView;->getInnerChartLeft()F

    move-result v1

    float-to-int v1, v1

    int-to-float v3, v1

    const/4 v1, 0x0

    .line 89
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v1, v14}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->barWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v4, v1

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/HorizontalStackBarChartView;->getInnerChartRight()F

    move-result v1

    float-to-int v1, v1

    int-to-float v5, v1

    const/4 v1, 0x0

    .line 91
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v1, v14}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->barWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 87
    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/HorizontalStackBarChartView;->drawBarBackground(Landroid/graphics/Canvas;FFFF)V

    .line 95
    :cond_0
    const/16 v18, 0x0

    .line 96
    .local v18, "offset":F
    const/16 v17, 0x0

    .line 99
    .local v17, "negOffset":F
    move/from16 v12, v24

    .line 100
    .local v12, "currBottom":F
    move/from16 v16, v24

    .line 104
    .local v16, "negCurrBottom":F
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/db/chart/view/HorizontalStackBarChartView;->discoverBottomSet(ILjava/util/ArrayList;)I

    move-result v10

    .line 105
    .local v10, "bottomSetIndex":I
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/db/chart/view/HorizontalStackBarChartView;->discoverTopSet(ILjava/util/ArrayList;)I

    move-result v20

    .line 107
    .local v20, "topSetIndex":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    if-ge v15, v13, :cond_a

    .line 109
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/db/chart/model/BarSet;

    .line 110
    .local v8, "barSet":Lcom/db/chart/model/BarSet;
    invoke-virtual {v8, v14}, Lcom/db/chart/model/BarSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v7

    check-cast v7, Lcom/db/chart/model/Bar;

    .line 112
    .local v7, "bar":Lcom/db/chart/model/Bar;
    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getX()F

    move-result v1

    sub-float v1, v24, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 119
    .local v9, "barSize":F
    invoke-virtual {v8}, Lcom/db/chart/model/BarSet;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v1, v9, v1

    if-gez v1, :cond_2

    .line 107
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 122
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lcom/db/chart/model/BarSet;->getAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lcom/db/chart/model/BarSet;->getAlpha()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v7}, Lcom/db/chart/view/HorizontalStackBarChartView;->applyShadow(Landroid/graphics/Paint;FLcom/db/chart/model/ChartEntry;)V

    .line 126
    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->barWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v22, v1, v2

    .line 127
    .local v22, "y0":F
    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->barWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v23, v1, v2

    .line 130
    .local v23, "y1":F
    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 132
    sub-float v1, v9, v18

    add-float v21, v24, v1

    .line 135
    .local v21, "x1":F
    if-ne v15, v10, :cond_4

    .line 136
    float-to-int v1, v12

    int-to-float v3, v1

    move/from16 v0, v22

    float-to-int v1, v0

    int-to-float v4, v1

    move/from16 v0, v21

    float-to-int v1, v0

    int-to-float v5, v1

    move/from16 v0, v23

    float-to-int v1, v0

    int-to-float v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/HorizontalStackBarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    .line 137
    move/from16 v0, v20

    if-eq v10, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->cornerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 139
    sub-float v1, v21, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 140
    .local v11, "cornersPatch":F
    new-instance v1, Landroid/graphics/Rect;

    sub-float v2, v21, v11

    float-to-int v2, v2

    move/from16 v0, v22

    float-to-int v3, v0

    move/from16 v0, v21

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 159
    .end local v11    # "cornersPatch":F
    :cond_3
    :goto_3
    move/from16 v12, v21

    .line 162
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-eqz v1, :cond_1

    .line 164
    const/4 v1, 0x0

    sub-float v1, v9, v1

    sub-float v18, v18, v1

    goto/16 :goto_2

    .line 145
    :cond_4
    move/from16 v0, v20

    if-ne v15, v0, :cond_5

    .line 146
    float-to-int v1, v12

    int-to-float v3, v1

    move/from16 v0, v22

    float-to-int v1, v0

    int-to-float v4, v1

    move/from16 v0, v21

    float-to-int v1, v0

    int-to-float v5, v1

    move/from16 v0, v23

    float-to-int v1, v0

    int-to-float v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/HorizontalStackBarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    .line 148
    sub-float v1, v21, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 149
    .restart local v11    # "cornersPatch":F
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v2, v12

    move/from16 v0, v22

    float-to-int v3, v0

    add-float v4, v12, v11

    float-to-int v4, v4

    move/from16 v0, v23

    float-to-int v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 154
    .end local v11    # "cornersPatch":F
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v2, v12

    move/from16 v0, v22

    float-to-int v3, v0

    move/from16 v0, v21

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 169
    .end local v21    # "x1":F
    :cond_6
    add-float v1, v9, v17

    sub-float v21, v24, v1

    .line 171
    .restart local v21    # "x1":F
    if-ne v15, v10, :cond_8

    .line 172
    move/from16 v0, v21

    float-to-int v1, v0

    int-to-float v3, v1

    move/from16 v0, v22

    float-to-int v1, v0

    int-to-float v4, v1

    move/from16 v0, v16

    float-to-int v1, v0

    int-to-float v5, v1

    move/from16 v0, v23

    float-to-int v1, v0

    int-to-float v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/HorizontalStackBarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    .line 173
    move/from16 v0, v20

    if-eq v10, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->cornerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 175
    sub-float v1, v16, v21

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 176
    .restart local v11    # "cornersPatch":F
    new-instance v1, Landroid/graphics/Rect;

    sub-float v2, v16, v11

    float-to-int v2, v2

    move/from16 v0, v22

    float-to-int v3, v0

    move/from16 v0, v16

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 195
    .end local v11    # "cornersPatch":F
    :cond_7
    :goto_4
    move/from16 v16, v21

    .line 198
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-eqz v1, :cond_1

    .line 199
    add-float v17, v17, v9

    goto/16 :goto_2

    .line 181
    :cond_8
    move/from16 v0, v20

    if-ne v15, v0, :cond_9

    .line 182
    move/from16 v0, v21

    float-to-int v1, v0

    int-to-float v3, v1

    move/from16 v0, v22

    float-to-int v1, v0

    int-to-float v4, v1

    move/from16 v0, v16

    float-to-int v1, v0

    int-to-float v5, v1

    move/from16 v0, v23

    float-to-int v1, v0

    int-to-float v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/HorizontalStackBarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    .line 184
    sub-float v1, v16, v21

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 185
    .restart local v11    # "cornersPatch":F
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v0, v21

    float-to-int v2, v0

    move/from16 v0, v22

    float-to-int v3, v0

    add-float v4, v21, v11

    float-to-int v4, v4

    move/from16 v0, v23

    float-to-int v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 190
    .end local v11    # "cornersPatch":F
    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v0, v21

    float-to-int v2, v0

    move/from16 v0, v22

    float-to-int v3, v0

    move/from16 v0, v16

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/HorizontalStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 83
    .end local v7    # "bar":Lcom/db/chart/model/Bar;
    .end local v8    # "barSet":Lcom/db/chart/model/BarSet;
    .end local v9    # "barSize":F
    .end local v21    # "x1":F
    .end local v22    # "y0":F
    .end local v23    # "y1":F
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 204
    .end local v10    # "bottomSetIndex":I
    .end local v12    # "currBottom":F
    .end local v15    # "j":I
    .end local v16    # "negCurrBottom":F
    .end local v17    # "negOffset":F
    .end local v18    # "offset":F
    .end local v20    # "topSetIndex":I
    :cond_b
    return-void
.end method

.method public onPreDrawChart(Ljava/util/ArrayList;)V
    .locals 4
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

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalStackBarChartView;->getInnerChartBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalStackBarChartView;->getInnerChartTop()F

    move-result v1

    sub-float/2addr v0, v1

    .line 221
    invoke-virtual {p0}, Lcom/db/chart/view/HorizontalStackBarChartView;->getBorderSpacing()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/HorizontalStackBarChartView;->barWidth:F

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0, v2}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0, v3}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/db/chart/view/HorizontalStackBarChartView;->calculateBarsWidth(IFF)V

    goto :goto_0
.end method

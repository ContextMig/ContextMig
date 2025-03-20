.class public Lcom/db/chart/view/StackBarChartView;
.super Lcom/db/chart/view/BaseStackBarChartView;
.source "StackBarChartView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/db/chart/view/BaseStackBarChartView;-><init>(Landroid/content/Context;)V

    .line 48
    sget-object v0, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/StackBarChartView;->setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V

    .line 49
    invoke-virtual {p0}, Lcom/db/chart/view/StackBarChartView;->setMandatoryBorderSpacing()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/db/chart/view/BaseStackBarChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v0, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/StackBarChartView;->setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V

    .line 41
    invoke-virtual {p0}, Lcom/db/chart/view/StackBarChartView;->setMandatoryBorderSpacing()V

    .line 42
    return-void
.end method


# virtual methods
.method public defineRegions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 22
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
    .line 242
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 243
    .local v5, "dataSize":I
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v15}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v11

    .line 244
    .local v11, "setSize":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/graphics/Region;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 246
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/StackBarChartView;->getZeroPosition()F

    move-result v14

    .line 260
    .local v14, "zeroPosition":F
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v11, :cond_5

    .line 263
    const/4 v12, 0x0

    .line 264
    .local v12, "verticalOffset":F
    const/4 v9, 0x0

    .line 266
    .local v9, "negVerticalOffset":F
    move v4, v14

    .line 267
    .local v4, "currBottomY":F
    move v8, v14

    .line 269
    .local v8, "negCurrBottomY":F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v5, :cond_4

    .line 271
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/db/chart/model/BarSet;

    .line 272
    .local v2, "barSet":Lcom/db/chart/model/BarSet;
    invoke-virtual {v2, v6}, Lcom/db/chart/model/BarSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/Bar;

    .line 274
    .local v1, "bar":Lcom/db/chart/model/Bar;
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getY()F

    move-result v15

    sub-float v15, v14, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 281
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

    .line 269
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 284
    :cond_2
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v15

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_3

    .line 286
    add-float v15, v3, v12

    sub-float v13, v14, v15

    .line 287
    .local v13, "y1":F
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    new-instance v16, Landroid/graphics/Region;

    .line 288
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getX()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/db/chart/view/StackBarChartView;->barWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    float-to-int v0, v13

    move/from16 v18, v0

    .line 290
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/db/chart/view/StackBarChartView;->barWidth:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    float-to-int v0, v4

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Region;-><init>(IIII)V

    .line 287
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    move v4, v13

    .line 294
    const/high16 v15, 0x40000000    # 2.0f

    add-float/2addr v15, v3

    add-float/2addr v12, v15

    goto :goto_3

    .line 297
    .end local v13    # "y1":F
    :cond_3
    sub-float v15, v3, v9

    add-float v13, v14, v15

    .line 298
    .restart local v13    # "y1":F
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    new-instance v16, Landroid/graphics/Region;

    .line 299
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getX()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/db/chart/view/StackBarChartView;->barWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    float-to-int v0, v8

    move/from16 v18, v0

    .line 301
    invoke-virtual {v1}, Lcom/db/chart/model/Bar;->getX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/db/chart/view/StackBarChartView;->barWidth:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    float-to-int v0, v13

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Region;-><init>(IIII)V

    .line 298
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    move v8, v13

    .line 305
    sub-float/2addr v9, v3

    goto/16 :goto_3

    .line 260
    .end local v1    # "bar":Lcom/db/chart/model/Bar;
    .end local v2    # "barSet":Lcom/db/chart/model/BarSet;
    .end local v3    # "barSize":F
    .end local v13    # "y1":F
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 310
    .end local v4    # "currBottomY":F
    .end local v7    # "j":I
    .end local v8    # "negCurrBottomY":F
    .end local v9    # "negVerticalOffset":F
    .end local v12    # "verticalOffset":F
    :cond_5
    return-object v10
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
    .line 78
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 79
    .local v13, "dataSize":I
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v1}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v18

    .line 80
    .local v18, "setSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/StackBarChartView;->getZeroPosition()F

    move-result v24

    .line 82
    .local v24, "zeroPosition":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v14, v0, :cond_b

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-boolean v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->hasBarBackground:Z

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x0

    .line 87
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v1, v14}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/db/chart/view/StackBarChartView;->barWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v3, v1

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/StackBarChartView;->getInnerChartTop()F

    move-result v1

    float-to-int v1, v1

    int-to-float v4, v1

    const/4 v1, 0x0

    .line 89
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v1, v14}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/db/chart/view/StackBarChartView;->barWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v5, v1

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/db/chart/view/StackBarChartView;->getInnerChartBottom()F

    move-result v1

    float-to-int v1, v1

    int-to-float v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 86
    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/StackBarChartView;->drawBarBackground(Landroid/graphics/Canvas;FFFF)V

    .line 94
    :cond_0
    const/16 v20, 0x0

    .line 95
    .local v20, "verticalOffset":F
    const/16 v17, 0x0

    .line 98
    .local v17, "negVerticalOffset":F
    move/from16 v12, v24

    .line 99
    .local v12, "currBottomY":F
    move/from16 v16, v24

    .line 103
    .local v16, "negCurrBottomY":F
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/db/chart/view/StackBarChartView;->discoverBottomSet(ILjava/util/ArrayList;)I

    move-result v10

    .line 104
    .local v10, "bottomSetIndex":I
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/db/chart/view/StackBarChartView;->discoverTopSet(ILjava/util/ArrayList;)I

    move-result v19

    .line 106
    .local v19, "topSetIndex":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    if-ge v15, v13, :cond_a

    .line 108
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/db/chart/model/BarSet;

    .line 109
    .local v8, "barSet":Lcom/db/chart/model/BarSet;
    invoke-virtual {v8, v14}, Lcom/db/chart/model/BarSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v7

    check-cast v7, Lcom/db/chart/model/Bar;

    .line 111
    .local v7, "bar":Lcom/db/chart/model/Bar;
    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getY()F

    move-result v1

    sub-float v1, v24, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 118
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

    .line 106
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 121
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lcom/db/chart/model/BarSet;->getAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lcom/db/chart/model/BarSet;->getAlpha()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v7}, Lcom/db/chart/view/StackBarChartView;->applyShadow(Landroid/graphics/Paint;FLcom/db/chart/model/ChartEntry;)V

    .line 125
    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/db/chart/view/StackBarChartView;->barWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v21, v1, v2

    .line 126
    .local v21, "x0":F
    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/db/chart/view/StackBarChartView;->barWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v22, v1, v2

    .line 129
    .local v22, "x1":F
    invoke-virtual {v7}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 131
    add-float v1, v9, v20

    sub-float v23, v24, v1

    .line 134
    .local v23, "y1":F
    if-ne v15, v10, :cond_4

    .line 135
    move/from16 v0, v21

    float-to-int v1, v0

    int-to-float v3, v1

    move/from16 v0, v23

    float-to-int v1, v0

    int-to-float v4, v1

    move/from16 v0, v22

    float-to-int v1, v0

    int-to-float v5, v1

    float-to-int v1, v12

    int-to-float v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/StackBarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    .line 136
    move/from16 v0, v19

    if-eq v10, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->cornerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 138
    sub-float v1, v12, v23

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 139
    .local v11, "cornersPatch":F
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v0, v21

    float-to-int v2, v0

    move/from16 v0, v23

    float-to-int v3, v0

    move/from16 v0, v22

    float-to-int v4, v0

    add-float v5, v23, v11

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    .end local v11    # "cornersPatch":F
    :cond_3
    :goto_3
    move/from16 v12, v23

    .line 161
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-eqz v1, :cond_1

    .line 163
    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v1, v9

    add-float v20, v20, v1

    goto/16 :goto_2

    .line 144
    :cond_4
    move/from16 v0, v19

    if-ne v15, v0, :cond_5

    .line 145
    move/from16 v0, v21

    float-to-int v1, v0

    int-to-float v3, v1

    move/from16 v0, v23

    float-to-int v1, v0

    int-to-float v4, v1

    move/from16 v0, v22

    float-to-int v1, v0

    int-to-float v5, v1

    float-to-int v1, v12

    int-to-float v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/StackBarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    .line 147
    sub-float v1, v12, v23

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 148
    .restart local v11    # "cornersPatch":F
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v0, v21

    float-to-int v2, v0

    sub-float v3, v12, v11

    float-to-int v3, v3

    move/from16 v0, v22

    float-to-int v4, v0

    float-to-int v5, v12

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 153
    .end local v11    # "cornersPatch":F
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v0, v21

    float-to-int v2, v0

    move/from16 v0, v23

    float-to-int v3, v0

    move/from16 v0, v22

    float-to-int v4, v0

    float-to-int v5, v12

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 168
    .end local v23    # "y1":F
    :cond_6
    sub-float v1, v9, v17

    add-float v23, v24, v1

    .line 170
    .restart local v23    # "y1":F
    if-ne v15, v10, :cond_8

    .line 171
    move/from16 v0, v21

    float-to-int v1, v0

    int-to-float v3, v1

    move/from16 v0, v16

    float-to-int v1, v0

    int-to-float v4, v1

    move/from16 v0, v22

    float-to-int v1, v0

    int-to-float v5, v1

    move/from16 v0, v23

    float-to-int v1, v0

    int-to-float v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/StackBarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    .line 172
    move/from16 v0, v19

    if-eq v10, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->cornerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 174
    sub-float v1, v23, v16

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 175
    .restart local v11    # "cornersPatch":F
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v0, v21

    float-to-int v2, v0

    move/from16 v0, v16

    float-to-int v3, v0

    move/from16 v0, v22

    float-to-int v4, v0

    add-float v5, v16, v11

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 194
    .end local v11    # "cornersPatch":F
    :cond_7
    :goto_4
    move/from16 v16, v23

    .line 197
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-eqz v1, :cond_1

    .line 198
    sub-float v17, v17, v9

    goto/16 :goto_2

    .line 180
    :cond_8
    move/from16 v0, v19

    if-ne v15, v0, :cond_9

    .line 181
    move/from16 v0, v21

    float-to-int v1, v0

    int-to-float v3, v1

    move/from16 v0, v16

    float-to-int v1, v0

    int-to-float v4, v1

    move/from16 v0, v22

    float-to-int v1, v0

    int-to-float v5, v1

    move/from16 v0, v23

    float-to-int v1, v0

    int-to-float v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/db/chart/view/StackBarChartView;->drawBar(Landroid/graphics/Canvas;FFFF)V

    .line 183
    sub-float v1, v23, v16

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 184
    .restart local v11    # "cornersPatch":F
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v0, v21

    float-to-int v2, v0

    sub-float v3, v23, v11

    float-to-int v3, v3

    move/from16 v0, v22

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 189
    .end local v11    # "cornersPatch":F
    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v0, v21

    float-to-int v2, v0

    move/from16 v0, v16

    float-to-int v3, v0

    move/from16 v0, v22

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/chart/view/StackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget-object v2, v2, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 82
    .end local v7    # "bar":Lcom/db/chart/model/Bar;
    .end local v8    # "barSet":Lcom/db/chart/model/BarSet;
    .end local v9    # "barSize":F
    .end local v21    # "x0":F
    .end local v22    # "x1":F
    .end local v23    # "y1":F
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 203
    .end local v10    # "bottomSetIndex":I
    .end local v12    # "currBottomY":F
    .end local v15    # "j":I
    .end local v16    # "negCurrBottomY":F
    .end local v17    # "negVerticalOffset":F
    .end local v19    # "topSetIndex":I
    .end local v20    # "verticalOffset":F
    :cond_b
    return-void
.end method

.method public onPreDrawChart(Ljava/util/ArrayList;)V
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/db/chart/view/StackBarChartView;->getInnerChartRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/db/chart/view/StackBarChartView;->getInnerChartLeft()F

    move-result v1

    sub-float/2addr v0, v1

    .line 220
    invoke-virtual {p0}, Lcom/db/chart/view/StackBarChartView;->getBorderSpacing()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/StackBarChartView;->barWidth:F

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0, v3}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0, v4}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/db/chart/view/StackBarChartView;->calculateBarsWidth(IFF)V

    goto :goto_0
.end method

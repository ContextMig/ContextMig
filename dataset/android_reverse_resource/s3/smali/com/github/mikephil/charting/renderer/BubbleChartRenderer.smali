.class public Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;
.source "BubbleChartRenderer.java"


# instance fields
.field private _hsvBuffer:[F

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

.field private pointBuffer:[F

.field private sizeBuffer:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 30
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    .line 31
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 33
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 47
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v0

    .line 50
    .local v0, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v1

    .line 51
    .local v1, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 52
    .local v4, "setCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 55
    .local v3, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 56
    invoke-virtual {p0, p1, v3}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)V

    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .prologue
    .line 72
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v9

    .line 74
    .local v9, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    .line 76
    .local v6, "phaseY":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-virtual {v10, v11, p2}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 78
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 79
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 81
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 83
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isNormalizeSizeEnabled()Z

    move-result v5

    .line 86
    .local v5, "normalizeSize":Z
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 87
    .local v4, "maxBubbleWidth":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 88
    .local v3, "maxBubbleHeight":F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 90
    .local v7, "referenceSize":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .local v2, "j":I
    :goto_0
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v10, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v11, v11, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v10, v11

    if-gt v2, v10, :cond_2

    .line 92
    invoke-interface {p2, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 94
    .local v1, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getX()F

    move-result v12

    aput v12, v10, v11

    .line 95
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    const/4 v11, 0x1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getY()F

    move-result v12

    mul-float/2addr v12, v6

    aput v12, v10, v11

    .line 96
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 98
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v10

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getMaxSize()F

    move-result v11

    invoke-virtual {p0, v10, v11, v7, v5}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFFZ)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v10, v11

    .line 100
    .local v8, "shapeHalf":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    add-float/2addr v11, v8

    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v11, v8

    .line 101
    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v10

    if-nez v10, :cond_1

    .line 90
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    add-float/2addr v11, v8

    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-float/2addr v11, v8

    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v10

    if-nez v10, :cond_3

    .line 115
    .end local v1    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v8    # "shapeHalf":F
    :cond_2
    return-void

    .line 110
    .restart local v1    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v8    # "shapeHalf":F
    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-interface {p2, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getColor(I)I

    move-result v0

    .line 112
    .local v0, "color":I
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v8, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 178
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v4

    .line 187
    .local v4, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v12

    .line 189
    .local v12, "phaseY":F
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v7, p2, v17

    .line 191
    .local v7, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 193
    .local v14, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    if-eqz v14, :cond_0

    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isHighlightEnabled()Z

    move-result v19

    if-nez v19, :cond_1

    .line 189
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v19

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForXPos(F)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 198
    .local v6, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    move-object/from16 v19, v0

    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v16

    .line 203
    .local v16, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 208
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isNormalizeSizeEnabled()Z

    move-result v10

    .line 211
    .local v10, "normalizeSize":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 212
    .local v9, "maxBubbleWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v19, v0

    .line 213
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v20

    sub-float v19, v19, v20

    .line 212
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 214
    .local v8, "maxBubbleHeight":F
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 216
    .local v13, "referenceSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BubbleEntry;->getX()F

    move-result v21

    aput v21, v19, v20

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BubbleEntry;->getY()F

    move-result v21

    mul-float v21, v21, v12

    aput v21, v19, v20

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 222
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v19

    .line 223
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getMaxSize()F

    move-result v20

    .line 222
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v13, v10}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFFZ)F

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    div-float v15, v19, v20

    .line 227
    .local v15, "shapeHalf":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    add-float v20, v20, v15

    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    sub-float v20, v20, v15

    .line 228
    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v20, v20, v15

    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v20, v20, v15

    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v19

    if-nez v19, :cond_3

    .line 248
    .end local v6    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v7    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v8    # "maxBubbleHeight":F
    .end local v9    # "maxBubbleWidth":F
    .end local v10    # "normalizeSize":Z
    .end local v13    # "referenceSize":F
    .end local v14    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    .end local v15    # "shapeHalf":F
    .end local v16    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    :cond_2
    return-void

    .line 237
    .restart local v6    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v7    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    .restart local v8    # "maxBubbleHeight":F
    .restart local v9    # "maxBubbleWidth":F
    .restart local v10    # "normalizeSize":Z
    .restart local v13    # "referenceSize":F
    .restart local v14    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    .restart local v15    # "shapeHalf":F
    .restart local v16    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    :cond_3
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BubbleEntry;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getColor(I)I

    move-result v11

    .line 239
    .local v11, "originalColor":I
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v19

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v20

    .line 240
    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v22, v0

    .line 239
    invoke-static/range {v19 .. v22}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v21, v19, v20

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v21, v21, v22

    aput v21, v19, v20

    .line 242
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v5

    .line 244
    .local v5, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getHighlightCircleWidth()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v11

    .line 122
    .local v11, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    if-nez v11, :cond_1

    .line 174
    :cond_0
    return-void

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v13

    .line 130
    .local v13, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v15, v1

    .line 132
    .local v15, "lineHeight":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 134
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 136
    .local v12, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isDrawValuesEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 132
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 142
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 143
    .local v16, "phaseX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v17

    .line 145
    .local v17, "phaseY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-virtual {v1, v2, v12}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v3, v3, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    .line 148
    move/from16 v0, v17

    invoke-virtual {v1, v12, v0, v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesBubble(Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;FII)[F

    move-result-object v18

    .line 150
    .local v18, "positions":[F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v16, v1

    if-nez v1, :cond_5

    move/from16 v10, v17

    .line 152
    .local v10, "alpha":F
    :goto_1
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    move-object/from16 v0, v18

    array-length v1, v0

    if-ge v14, v1, :cond_2

    .line 154
    div-int/lit8 v1, v14, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v1, v2

    invoke-interface {v12, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getValueTextColor(I)I

    move-result v9

    .line 155
    .local v9, "valueTextColor":I
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 156
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 155
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    .line 158
    aget v7, v18, v14

    .line 159
    .local v7, "x":F
    add-int/lit8 v1, v14, 0x1

    aget v19, v18, v1

    .line 161
    .local v19, "y":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_6

    .line 152
    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x2

    goto :goto_2

    .end local v7    # "x":F
    .end local v9    # "valueTextColor":I
    .end local v10    # "alpha":F
    .end local v14    # "j":I
    .end local v19    # "y":F
    :cond_5
    move/from16 v10, v16

    .line 150
    goto :goto_1

    .line 167
    .restart local v7    # "x":F
    .restart local v9    # "valueTextColor":I
    .restart local v10    # "alpha":F
    .restart local v14    # "j":I
    .restart local v19    # "y":F
    :cond_6
    div-int/lit8 v1, v14, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v1, v2

    invoke-interface {v12, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 169
    .local v5, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v3

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v4

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v15

    add-float v8, v19, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_3
.end method

.method protected getShapeSize(FFFZ)F
    .locals 4
    .param p1, "entrySize"    # F
    .param p2, "maxSize"    # F
    .param p3, "reference"    # F
    .param p4, "normalizeSize"    # Z

    .prologue
    .line 64
    if-eqz p4, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    .local v0, "factor":F
    :goto_0
    mul-float v1, p3, v0

    .line 67
    .local v1, "shapeSize":F
    return v1

    .line 64
    .end local v0    # "factor":F
    .end local v1    # "shapeSize":F
    :cond_0
    div-float v2, p1, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

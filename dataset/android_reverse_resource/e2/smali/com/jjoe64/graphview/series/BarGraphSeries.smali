.class public Lcom/jjoe64/graphview/series/BarGraphSeries;
.super Lcom/jjoe64/graphview/series/BaseSeries;
.source "BarGraphSeries.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/jjoe64/graphview/series/DataPointInterface;",
        ">",
        "Lcom/jjoe64/graphview/series/BaseSeries",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mDataPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/RectF;",
            "TE;>;"
        }
    .end annotation
.end field

.field private mDrawValuesOnTop:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSpacing:I

.field private mValueDependentColor:Lcom/jjoe64/graphview/ValueDependentColor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/ValueDependentColor",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mValuesOnTopColor:I

.field private mValuesOnTopSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    invoke-direct {p0}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDataPoints:Ljava/util/Map;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    .line 92
    return-void
.end method

.method public constructor <init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    .local p1, "data":[Lcom/jjoe64/graphview/series/DataPointInterface;, "[TE;"
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDataPoints:Ljava/util/Map;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    .line 102
    return-void
.end method


# virtual methods
.method public draw(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V
    .locals 74
    .param p1, "graphView"    # Lcom/jjoe64/graphview/GraphView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "isSecondScale"    # Z

    .prologue
    .line 113
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 114
    move-object/from16 v0, p0

    iget v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    const/4 v11, 0x0

    cmpl-float v6, v6, v11

    if-nez v6, :cond_0

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    .line 117
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v32

    .line 121
    .local v32, "maxX":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v38

    .line 125
    .local v38, "minX":D
    if-eqz p3, :cond_4

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jjoe64/graphview/SecondScale;->getMaxY()D

    move-result-wide v34

    .line 127
    .local v34, "maxY":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jjoe64/graphview/SecondScale;->getMinY()D

    move-result-wide v40

    .line 136
    .local v40, "minY":D
    :goto_0
    const/16 v31, 0x0

    .line 137
    .local v31, "numBarSeries":I
    const/16 v22, 0x0

    .line 138
    .local v22, "currentSeriesOrder":I
    const/16 v43, 0x0

    .line 140
    .local v43, "numValues":I
    new-instance v64, Ljava/util/TreeSet;

    invoke-direct/range {v64 .. v64}, Ljava/util/TreeSet;-><init>()V

    .line 141
    .local v64, "xVals":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Double;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getSeries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jjoe64/graphview/series/Series;

    .line 142
    .local v28, "inspectedSeries":Lcom/jjoe64/graphview/series/Series;
    move-object/from16 v0, v28

    instance-of v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;

    if-eqz v6, :cond_1

    .line 143
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_5

    const/16 v29, 0x1

    .line 144
    .local v29, "isCurrentSeries":Z
    :goto_1
    if-eqz v29, :cond_2

    .line 145
    move/from16 v22, v31

    .line 147
    :cond_2
    add-int/lit8 v31, v31, 0x1

    .line 154
    move-object/from16 v0, v28

    move-wide/from16 v1, v38

    move-wide/from16 v3, v32

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jjoe64/graphview/series/Series;->getValues(DD)Ljava/util/Iterator;

    move-result-object v21

    .line 155
    .local v21, "curValues":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 156
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v6}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v70

    invoke-static/range {v70 .. v71}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v0, v64

    invoke-interface {v0, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 157
    if-eqz v29, :cond_3

    add-int/lit8 v43, v43, 0x1

    .line 158
    :cond_3
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v6}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v70

    invoke-static/range {v70 .. v71}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v0, v64

    invoke-interface {v0, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 160
    if-eqz v29, :cond_3

    add-int/lit8 v43, v43, 0x1

    goto :goto_2

    .line 129
    .end local v21    # "curValues":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .end local v22    # "currentSeriesOrder":I
    .end local v28    # "inspectedSeries":Lcom/jjoe64/graphview/series/Series;
    .end local v29    # "isCurrentSeries":Z
    .end local v31    # "numBarSeries":I
    .end local v34    # "maxY":D
    .end local v40    # "minY":D
    .end local v43    # "numValues":I
    .end local v64    # "xVals":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Double;>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v34

    .line 130
    .restart local v34    # "maxY":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v40

    .restart local v40    # "minY":D
    goto/16 :goto_0

    .line 143
    .restart local v22    # "currentSeriesOrder":I
    .restart local v28    # "inspectedSeries":Lcom/jjoe64/graphview/series/Series;
    .restart local v31    # "numBarSeries":I
    .restart local v43    # "numValues":I
    .restart local v64    # "xVals":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Double;>;"
    :cond_5
    const/16 v29, 0x0

    goto :goto_1

    .line 165
    .end local v28    # "inspectedSeries":Lcom/jjoe64/graphview/series/Series;
    :cond_6
    if-nez v43, :cond_8

    .line 270
    :cond_7
    return-void

    .line 169
    :cond_8
    const/16 v30, 0x0

    .line 170
    .local v30, "lastVal":Ljava/lang/Double;
    const-wide/16 v36, 0x0

    .line 171
    .local v36, "minGap":D
    invoke-interface/range {v64 .. v64}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    .line 172
    .local v20, "curVal":Ljava/lang/Double;
    if-eqz v30, :cond_a

    .line 173
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v70

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v72

    sub-double v70, v70, v72

    invoke-static/range {v70 .. v71}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    .line 174
    .local v18, "curGap":D
    const-wide/16 v70, 0x0

    cmpl-double v11, v36, v70

    if-eqz v11, :cond_9

    const-wide/16 v70, 0x0

    cmpl-double v11, v18, v70

    if-lez v11, :cond_a

    cmpg-double v11, v18, v36

    if-gez v11, :cond_a

    .line 175
    :cond_9
    move-wide/from16 v36, v18

    .line 178
    .end local v18    # "curGap":D
    :cond_a
    move-object/from16 v30, v20

    .line 179
    goto :goto_3

    .line 181
    .end local v20    # "curVal":Ljava/lang/Double;
    :cond_b
    const-wide/16 v70, 0x0

    cmpl-double v6, v36, v70

    if-nez v6, :cond_f

    const/16 v42, 0x1

    .line 183
    .local v42, "numBarSlots":I
    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jjoe64/graphview/series/BarGraphSeries;->getValues(DD)Ljava/util/Iterator;

    move-result-object v61

    .line 187
    .local v61, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v6, 0x1

    move/from16 v0, v42

    if-ne v0, v6, :cond_10

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v6

    int-to-float v12, v6

    .line 190
    .local v12, "barSlotWidth":F
    :goto_5
    const-string v6, "BarGraphSeries"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "numBars="

    move-object/from16 v0, v65

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    iget v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mSpacing:I

    int-to-float v6, v6

    mul-float/2addr v6, v12

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v6, v11

    const v11, 0x3f7ae148    # 0.98f

    mul-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v52

    .line 195
    .local v52, "spacing":F
    sub-float v6, v12, v52

    move/from16 v0, v31

    int-to-float v11, v0

    div-float v13, v6, v11

    .line 197
    .local v13, "barWidth":F
    const/high16 v6, 0x40000000    # 2.0f

    div-float v44, v12, v6

    .line 199
    .local v44, "offset":F
    sub-double v26, v34, v40

    .line 200
    .local v26, "diffY":D
    sub-double v24, v32, v38

    .line 201
    .local v24, "diffX":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v6

    int-to-float v14, v6

    .line 202
    .local v14, "contentHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v6

    int-to-float v0, v6

    move/from16 v17, v0

    .line 203
    .local v17, "contentWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v6

    int-to-float v15, v6

    .line 204
    .local v15, "contentLeft":F
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v6

    int-to-float v0, v6

    move/from16 v16, v0

    .line 207
    .local v16, "contentTop":F
    const/16 v23, 0x0

    .line 208
    .local v23, "i":I
    :goto_6
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 209
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 211
    .local v60, "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    invoke-interface/range {v60 .. v60}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v70

    sub-double v56, v70, v40

    .line 212
    .local v56, "valY":D
    div-double v48, v56, v26

    .line 213
    .local v48, "ratY":D
    float-to-double v0, v14

    move-wide/from16 v70, v0

    mul-double v66, v70, v48

    .line 215
    .local v66, "y":D
    const-wide/16 v70, 0x0

    sub-double v58, v70, v40

    .line 216
    .local v58, "valY0":D
    div-double v50, v58, v26

    .line 217
    .local v50, "ratY0":D
    float-to-double v0, v14

    move-wide/from16 v70, v0

    mul-double v68, v70, v50

    .line 219
    .local v68, "y0":D
    invoke-interface/range {v60 .. v60}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v70

    sub-double v54, v70, v38

    .line 220
    .local v54, "valX":D
    div-double v46, v54, v24

    .line 221
    .local v46, "ratX":D
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v70, v0

    mul-double v62, v70, v46

    .line 224
    .local v62, "x":D
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/BarGraphSeries;->getValueDependentColor()Lcom/jjoe64/graphview/ValueDependentColor;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 225
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/BarGraphSeries;->getValueDependentColor()Lcom/jjoe64/graphview/ValueDependentColor;

    move-result-object v11

    move-object/from16 v0, v60

    invoke-interface {v11, v0}, Lcom/jjoe64/graphview/ValueDependentColor;->get(Lcom/jjoe64/graphview/series/DataPointInterface;)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    :goto_7
    move-wide/from16 v0, v62

    double-to-float v6, v0

    add-float/2addr v6, v15

    sub-float v6, v6, v44

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v52, v11

    add-float/2addr v6, v11

    move/from16 v0, v22

    int-to-float v11, v0

    mul-float/2addr v11, v13

    add-float v7, v6, v11

    .line 231
    .local v7, "left":F
    move-wide/from16 v0, v66

    double-to-float v6, v0

    sub-float v6, v16, v6

    add-float v8, v6, v14

    .line 232
    .local v8, "top":F
    add-float v9, v7, v13

    .line 233
    .local v9, "right":F
    move-wide/from16 v0, v68

    double-to-float v6, v0

    sub-float v6, v16, v6

    add-float v11, v6, v14

    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GridLabelRenderer;->isHighlightZeroLines()Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x4

    :goto_8
    int-to-float v6, v6

    sub-float v10, v11, v6

    .line 235
    .local v10, "bottom":F
    cmpl-float v6, v8, v10

    if-lez v6, :cond_13

    const/16 v45, 0x1

    .line 236
    .local v45, "reverse":Z
    :goto_9
    if-eqz v45, :cond_c

    .line 237
    move/from16 v53, v8

    .line 238
    .local v53, "tmp":F
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GridLabelRenderer;->isHighlightZeroLines()Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x4

    :goto_a
    int-to-float v6, v6

    add-float v8, v10, v6

    .line 239
    move/from16 v10, v53

    .line 243
    .end local v53    # "tmp":F
    :cond_c
    invoke-static {v7, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 244
    add-float v6, v15, v17

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 245
    add-float v6, v16, v14

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 246
    move/from16 v0, v16

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 248
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDataPoints:Ljava/util/Map;

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v60

    invoke-interface {v6, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 253
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDrawValuesOnTop:Z

    if-eqz v6, :cond_e

    .line 254
    if-eqz v45, :cond_15

    .line 255
    move-object/from16 v0, p0

    iget v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    add-float/2addr v6, v10

    const/high16 v11, 0x40800000    # 4.0f

    add-float v8, v6, v11

    .line 256
    add-float v6, v16, v14

    cmpl-float v6, v8, v6

    if-lez v6, :cond_d

    add-float v8, v16, v14

    .line 262
    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopColor:I

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jjoe64/graphview/GridLabelRenderer;->getLabelFormatter()Lcom/jjoe64/graphview/LabelFormatter;

    move-result-object v6

    invoke-interface/range {v60 .. v60}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v70

    const/4 v11, 0x0

    move-wide/from16 v0, v70

    invoke-interface {v6, v0, v1, v11}, Lcom/jjoe64/graphview/LabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v6

    add-float v11, v7, v9

    const/high16 v65, 0x40000000    # 2.0f

    div-float v11, v11, v65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v65, v0

    .line 263
    move-object/from16 v0, p2

    move-object/from16 v1, v65

    invoke-virtual {v0, v6, v11, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    :cond_e
    add-int/lit8 v23, v23, 0x1

    .line 269
    goto/16 :goto_6

    .line 181
    .end local v7    # "left":F
    .end local v8    # "top":F
    .end local v9    # "right":F
    .end local v10    # "bottom":F
    .end local v12    # "barSlotWidth":F
    .end local v13    # "barWidth":F
    .end local v14    # "contentHeight":F
    .end local v15    # "contentLeft":F
    .end local v16    # "contentTop":F
    .end local v17    # "contentWidth":F
    .end local v23    # "i":I
    .end local v24    # "diffX":D
    .end local v26    # "diffY":D
    .end local v42    # "numBarSlots":I
    .end local v44    # "offset":F
    .end local v45    # "reverse":Z
    .end local v46    # "ratX":D
    .end local v48    # "ratY":D
    .end local v50    # "ratY0":D
    .end local v52    # "spacing":F
    .end local v54    # "valX":D
    .end local v56    # "valY":D
    .end local v58    # "valY0":D
    .end local v60    # "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    .end local v61    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .end local v62    # "x":D
    .end local v66    # "y":D
    .end local v68    # "y0":D
    :cond_f
    sub-double v70, v32, v38

    div-double v70, v70, v36

    invoke-static/range {v70 .. v71}, Ljava/lang/Math;->round(D)J

    move-result-wide v70

    move-wide/from16 v0, v70

    long-to-int v6, v0

    add-int/lit8 v42, v6, 0x1

    goto/16 :goto_4

    .line 189
    .restart local v42    # "numBarSlots":I
    .restart local v61    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v6

    add-int/lit8 v11, v42, -0x1

    div-int/2addr v6, v11

    int-to-float v12, v6

    goto/16 :goto_5

    .line 227
    .restart local v12    # "barSlotWidth":F
    .restart local v13    # "barWidth":F
    .restart local v14    # "contentHeight":F
    .restart local v15    # "contentLeft":F
    .restart local v16    # "contentTop":F
    .restart local v17    # "contentWidth":F
    .restart local v23    # "i":I
    .restart local v24    # "diffX":D
    .restart local v26    # "diffY":D
    .restart local v44    # "offset":F
    .restart local v46    # "ratX":D
    .restart local v48    # "ratY":D
    .restart local v50    # "ratY0":D
    .restart local v52    # "spacing":F
    .restart local v54    # "valX":D
    .restart local v56    # "valY":D
    .restart local v58    # "valY0":D
    .restart local v60    # "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    .restart local v62    # "x":D
    .restart local v66    # "y":D
    .restart local v68    # "y0":D
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/BarGraphSeries;->getColor()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_7

    .line 233
    .restart local v7    # "left":F
    .restart local v8    # "top":F
    .restart local v9    # "right":F
    :cond_12
    const/4 v6, 0x1

    goto/16 :goto_8

    .line 235
    .restart local v10    # "bottom":F
    :cond_13
    const/16 v45, 0x0

    goto/16 :goto_9

    .line 238
    .restart local v45    # "reverse":Z
    .restart local v53    # "tmp":F
    :cond_14
    const/4 v6, 0x1

    goto/16 :goto_a

    .line 258
    .end local v53    # "tmp":F
    :cond_15
    const/high16 v6, 0x40800000    # 4.0f

    sub-float/2addr v8, v6

    .line 259
    cmpg-float v6, v8, v16

    if-gtz v6, :cond_d

    const/high16 v6, 0x40800000    # 4.0f

    add-float v6, v6, v16

    add-float/2addr v8, v6

    goto :goto_b
.end method

.method protected findDataPoint(FF)Lcom/jjoe64/graphview/series/DataPointInterface;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TE;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iget-object v1, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDataPoints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 372
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/RectF;TE;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 373
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 374
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 377
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/RectF;TE;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpacing()I
    .locals 1

    .prologue
    .line 294
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iget v0, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mSpacing:I

    return v0
.end method

.method public getValueDependentColor()Lcom/jjoe64/graphview/ValueDependentColor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jjoe64/graphview/ValueDependentColor",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValueDependentColor:Lcom/jjoe64/graphview/ValueDependentColor;

    return-object v0
.end method

.method public getValuesOnTopColor()I
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iget v0, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopColor:I

    return v0
.end method

.method public getValuesOnTopSize()F
    .locals 1

    .prologue
    .line 342
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iget v0, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    return v0
.end method

.method public isDrawValuesOnTop()Z
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iget-boolean v0, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDrawValuesOnTop:Z

    return v0
.end method

.method protected resetDataPoints()V
    .locals 1

    .prologue
    .line 358
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDataPoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 359
    return-void
.end method

.method public setDrawValuesOnTop(Z)V
    .locals 0
    .param p1, "mDrawValuesOnTop"    # Z

    .prologue
    .line 318
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iput-boolean p1, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mDrawValuesOnTop:Z

    .line 319
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "mSpacing"    # I

    .prologue
    .line 303
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iput p1, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mSpacing:I

    .line 304
    return-void
.end method

.method public setValueDependentColor(Lcom/jjoe64/graphview/ValueDependentColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jjoe64/graphview/ValueDependentColor",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    .local p1, "mValueDependentColor":Lcom/jjoe64/graphview/ValueDependentColor;, "Lcom/jjoe64/graphview/ValueDependentColor<TE;>;"
    iput-object p1, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValueDependentColor:Lcom/jjoe64/graphview/ValueDependentColor;

    .line 288
    return-void
.end method

.method public setValuesOnTopColor(I)V
    .locals 0
    .param p1, "mValuesOnTopColor"    # I

    .prologue
    .line 334
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iput p1, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopColor:I

    .line 335
    return-void
.end method

.method public setValuesOnTopSize(F)V
    .locals 0
    .param p1, "mValuesOnTopSize"    # F

    .prologue
    .line 350
    .local p0, "this":Lcom/jjoe64/graphview/series/BarGraphSeries;, "Lcom/jjoe64/graphview/series/BarGraphSeries<TE;>;"
    iput p1, p0, Lcom/jjoe64/graphview/series/BarGraphSeries;->mValuesOnTopSize:F

    .line 351
    return-void
.end method

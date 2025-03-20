.class public Lcom/jjoe64/graphview/series/PointsGraphSeries;
.super Lcom/jjoe64/graphview/series/BaseSeries;
.source "PointsGraphSeries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;,
        Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;,
        Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;
    }
.end annotation

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
.field private mCustomShape:Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;

.field private mPaint:Landroid/graphics/Paint;

.field private mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/series/PointsGraphSeries",
            "<TE;>.Styles;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    .local p0, "this":Lcom/jjoe64/graphview/series/PointsGraphSeries;, "Lcom/jjoe64/graphview/series/PointsGraphSeries<TE;>;"
    invoke-direct {p0}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>()V

    .line 118
    invoke-virtual {p0}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/jjoe64/graphview/series/PointsGraphSeries;, "Lcom/jjoe64/graphview/series/PointsGraphSeries<TE;>;"
    .local p1, "data":[Lcom/jjoe64/graphview/series/DataPointInterface;, "[TE;"
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 128
    invoke-virtual {p0}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->init()V

    .line 129
    return-void
.end method

.method private drawArrows([Landroid/graphics/Point;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "point"    # [Landroid/graphics/Point;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 249
    .local p0, "this":Lcom/jjoe64/graphview/series/PointsGraphSeries;, "Lcom/jjoe64/graphview/series/PointsGraphSeries<TE;>;"
    const/16 v2, 0x8

    new-array v5, v2, [F

    .line 250
    .local v5, "points":[F
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v5, v2

    .line 251
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v5, v2

    .line 252
    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v5, v2

    .line 253
    const/4 v2, 0x3

    const/4 v3, 0x1

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v5, v2

    .line 254
    const/4 v2, 0x4

    const/4 v3, 0x2

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v5, v2

    .line 255
    const/4 v2, 0x5

    const/4 v3, 0x2

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v5, v2

    .line 256
    const/4 v2, 0x6

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v5, v2

    .line 257
    const/4 v2, 0x7

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v5, v2

    .line 259
    sget-object v3, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v2 .. v14}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 260
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 261
    .local v15, "path":Landroid/graphics/Path;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 262
    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    const/4 v2, 0x2

    aget-object v2, p1, v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 264
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 265
    return-void
.end method


# virtual methods
.method public draw(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V
    .locals 60
    .param p1, "graphView"    # Lcom/jjoe64/graphview/GraphView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "isSecondScale"    # Z

    .prologue
    .line 152
    .local p0, "this":Lcom/jjoe64/graphview/series/PointsGraphSeries;, "Lcom/jjoe64/graphview/series/PointsGraphSeries<TE;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->resetDataPoints()V

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v32

    .line 156
    .local v32, "maxX":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v36

    .line 160
    .local v36, "minX":D
    if-eqz p3, :cond_4

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jjoe64/graphview/SecondScale;->getMaxY()D

    move-result-wide v34

    .line 162
    .local v34, "maxY":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jjoe64/graphview/SecondScale;->getMinY()D

    move-result-wide v38

    .line 168
    .local v38, "minY":D
    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getValues(DD)Ljava/util/Iterator;

    move-result-object v54

    .line 171
    .local v54, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const-wide/16 v30, 0x0

    .line 172
    .local v30, "lastEndY":D
    const-wide/16 v28, 0x0

    .line 175
    .local v28, "lastEndX":D
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    sub-double v20, v34, v38

    .line 178
    .local v20, "diffY":D
    sub-double v18, v32, v36

    .line 180
    .local v18, "diffX":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v6

    int-to-float v0, v6

    move/from16 v23, v0

    .line 181
    .local v23, "graphHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v6

    int-to-float v0, v6

    move/from16 v26, v0

    .line 182
    .local v26, "graphWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v6

    int-to-float v0, v6

    move/from16 v24, v0

    .line 183
    .local v24, "graphLeft":F
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v6

    int-to-float v0, v6

    move/from16 v25, v0

    .line 185
    .local v25, "graphTop":F
    const-wide/16 v30, 0x0

    .line 186
    const-wide/16 v28, 0x0

    .line 187
    const/16 v22, 0x0

    .line 188
    .local v22, "firstX":F
    const/16 v27, 0x0

    .line 189
    .local v27, "i":I
    :goto_1
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 190
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 192
    .local v11, "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    invoke-interface {v11}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v6

    sub-double v52, v6, v38

    .line 193
    .local v52, "valY":D
    div-double v48, v52, v20

    .line 194
    .local v48, "ratY":D
    move/from16 v0, v23

    float-to-double v6, v0

    mul-double v58, v6, v48

    .line 196
    .local v58, "y":D
    invoke-interface {v11}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v6

    sub-double v50, v6, v36

    .line 197
    .local v50, "valX":D
    div-double v46, v50, v18

    .line 198
    .local v46, "ratX":D
    move/from16 v0, v26

    float-to-double v6, v0

    mul-double v56, v6, v46

    .line 200
    .local v56, "x":D
    move-wide/from16 v40, v56

    .line 201
    .local v40, "orgX":D
    move-wide/from16 v42, v58

    .line 204
    .local v42, "orgY":D
    const/16 v44, 0x0

    .line 205
    .local v44, "overdraw":Z
    move/from16 v0, v26

    float-to-double v6, v0

    cmpl-double v6, v56, v6

    if-lez v6, :cond_0

    .line 206
    const/16 v44, 0x1

    .line 208
    :cond_0
    const-wide/16 v6, 0x0

    cmpg-double v6, v58, v6

    if-gez v6, :cond_1

    .line 209
    const/16 v44, 0x1

    .line 211
    :cond_1
    move/from16 v0, v23

    float-to-double v6, v0

    cmpl-double v6, v58, v6

    if-lez v6, :cond_2

    .line 212
    const/16 v44, 0x1

    .line 215
    :cond_2
    move-wide/from16 v0, v56

    double-to-float v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    add-float v7, v7, v24

    add-float v9, v6, v7

    .line 216
    .local v9, "endX":F
    move/from16 v0, v25

    float-to-double v6, v0

    sub-double v6, v6, v58

    double-to-float v6, v6

    add-float v10, v6, v23

    .line 217
    .local v10, "endY":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->registerDataPoint(FFLcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 220
    if-nez v44, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mCustomShape:Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;

    if-eqz v6, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mCustomShape:Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p2

    invoke-interface/range {v6 .. v11}, Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFLcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 236
    :cond_3
    :goto_2
    add-int/lit8 v27, v27, 0x1

    .line 237
    goto :goto_1

    .line 164
    .end local v9    # "endX":F
    .end local v10    # "endY":F
    .end local v11    # "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    .end local v18    # "diffX":D
    .end local v20    # "diffY":D
    .end local v22    # "firstX":F
    .end local v23    # "graphHeight":F
    .end local v24    # "graphLeft":F
    .end local v25    # "graphTop":F
    .end local v26    # "graphWidth":F
    .end local v27    # "i":I
    .end local v28    # "lastEndX":D
    .end local v30    # "lastEndY":D
    .end local v34    # "maxY":D
    .end local v38    # "minY":D
    .end local v40    # "orgX":D
    .end local v42    # "orgY":D
    .end local v44    # "overdraw":Z
    .end local v46    # "ratX":D
    .end local v48    # "ratY":D
    .end local v50    # "valX":D
    .end local v52    # "valY":D
    .end local v54    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .end local v56    # "x":D
    .end local v58    # "y":D
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v34

    .line 165
    .restart local v34    # "maxY":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v38

    .restart local v38    # "minY":D
    goto/16 :goto_0

    .line 223
    .restart local v9    # "endX":F
    .restart local v10    # "endY":F
    .restart local v11    # "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    .restart local v18    # "diffX":D
    .restart local v20    # "diffY":D
    .restart local v22    # "firstX":F
    .restart local v23    # "graphHeight":F
    .restart local v24    # "graphLeft":F
    .restart local v25    # "graphTop":F
    .restart local v26    # "graphWidth":F
    .restart local v27    # "i":I
    .restart local v28    # "lastEndX":D
    .restart local v30    # "lastEndY":D
    .restart local v40    # "orgX":D
    .restart local v42    # "orgY":D
    .restart local v44    # "overdraw":Z
    .restart local v46    # "ratX":D
    .restart local v48    # "ratY":D
    .restart local v50    # "valX":D
    .restart local v52    # "valY":D
    .restart local v54    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .restart local v56    # "x":D
    .restart local v58    # "y":D
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget-object v6, v6, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    sget-object v7, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->POINT:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    if-ne v6, v7, :cond_6

    .line 224
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget v6, v6, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 225
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget-object v6, v6, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    sget-object v7, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->RECTANGLE:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    if-ne v6, v7, :cond_7

    .line 226
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget v6, v6, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    sub-float v13, v9, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget v6, v6, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    sub-float v14, v10, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget v6, v6, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    add-float v15, v9, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget v6, v6, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    add-float v16, v10, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v12, p2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 227
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget-object v6, v6, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    sget-object v7, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->TRIANGLE:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    if-ne v6, v7, :cond_3

    .line 228
    const/4 v6, 0x3

    new-array v0, v6, [Landroid/graphics/Point;

    move-object/from16 v45, v0

    .line 229
    .local v45, "points":[Landroid/graphics/Point;
    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/Point;

    float-to-int v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getSize()F

    move-result v12

    sub-float v12, v10, v12

    float-to-int v12, v12

    invoke-direct {v7, v8, v12}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v45, v6

    .line 230
    const/4 v6, 0x1

    new-instance v7, Landroid/graphics/Point;

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getSize()F

    move-result v8

    add-float/2addr v8, v9

    float-to-int v8, v8

    float-to-double v12, v10

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getSize()F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3fe570a3d70a3d71L    # 0.67

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v12, v12

    invoke-direct {v7, v8, v12}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v45, v6

    .line 231
    const/4 v6, 0x2

    new-instance v7, Landroid/graphics/Point;

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getSize()F

    move-result v8

    sub-float v8, v9, v8

    float-to-int v8, v8

    float-to-double v12, v10

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->getSize()F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3fe570a3d70a3d71L    # 0.67

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v12, v12

    invoke-direct {v7, v8, v12}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v45, v6

    .line 232
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->drawArrows([Landroid/graphics/Point;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 239
    .end local v9    # "endX":F
    .end local v10    # "endY":F
    .end local v11    # "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    .end local v40    # "orgX":D
    .end local v42    # "orgY":D
    .end local v44    # "overdraw":Z
    .end local v45    # "points":[Landroid/graphics/Point;
    .end local v46    # "ratX":D
    .end local v48    # "ratY":D
    .end local v50    # "valX":D
    .end local v52    # "valY":D
    .end local v56    # "x":D
    .end local v58    # "y":D
    :cond_8
    return-void
.end method

.method public getShape()Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lcom/jjoe64/graphview/series/PointsGraphSeries;, "Lcom/jjoe64/graphview/series/PointsGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget-object v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Lcom/jjoe64/graphview/series/PointsGraphSeries;, "Lcom/jjoe64/graphview/series/PointsGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iget v0, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 136
    .local p0, "this":Lcom/jjoe64/graphview/series/PointsGraphSeries;, "Lcom/jjoe64/graphview/series/PointsGraphSeries<TE;>;"
    new-instance v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;-><init>(Lcom/jjoe64/graphview/series/PointsGraphSeries;Lcom/jjoe64/graphview/series/PointsGraphSeries$1;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    .line 137
    iget-object v0, p0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    .line 139
    iget-object v0, p0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 140
    sget-object v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;->POINT:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/series/PointsGraphSeries;->setShape(Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;)V

    .line 141
    return-void
.end method

.method public setCustomShape(Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;)V
    .locals 0
    .param p1, "shape"    # Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;

    .prologue
    .line 310
    .local p0, "this":Lcom/jjoe64/graphview/series/PointsGraphSeries;, "Lcom/jjoe64/graphview/series/PointsGraphSeries<TE;>;"
    iput-object p1, p0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mCustomShape:Lcom/jjoe64/graphview/series/PointsGraphSeries$CustomShape;

    .line 311
    return-void
.end method

.method public setShape(Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;)V
    .locals 1
    .param p1, "s"    # Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    .prologue
    .line 300
    .local p0, "this":Lcom/jjoe64/graphview/series/PointsGraphSeries;, "Lcom/jjoe64/graphview/series/PointsGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iput-object p1, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->shape:Lcom/jjoe64/graphview/series/PointsGraphSeries$Shape;

    .line 301
    return-void
.end method

.method public setSize(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 286
    .local p0, "this":Lcom/jjoe64/graphview/series/PointsGraphSeries;, "Lcom/jjoe64/graphview/series/PointsGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/PointsGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;

    iput p1, v0, Lcom/jjoe64/graphview/series/PointsGraphSeries$Styles;->size:F

    .line 287
    return-void
.end method

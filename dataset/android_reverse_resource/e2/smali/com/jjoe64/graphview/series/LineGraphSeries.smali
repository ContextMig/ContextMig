.class public Lcom/jjoe64/graphview/series/LineGraphSeries;
.super Lcom/jjoe64/graphview/series/BaseSeries;
.source "LineGraphSeries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;
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
.field private mCustomPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBackground:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathBackground:Landroid/graphics/Path;

.field private mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/series/LineGraphSeries",
            "<TE;>.Styles;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    invoke-direct {p0}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/jjoe64/graphview/series/LineGraphSeries;->init()V

    .line 118
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
    .line 126
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    .local p1, "data":[Lcom/jjoe64/graphview/series/DataPointInterface;, "[TE;"
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/series/BaseSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 127
    invoke-virtual {p0}, Lcom/jjoe64/graphview/series/LineGraphSeries;->init()V

    .line 128
    return-void
.end method


# virtual methods
.method public draw(Lcom/jjoe64/graphview/GraphView;Landroid/graphics/Canvas;Z)V
    .locals 60
    .param p1, "graphView"    # Lcom/jjoe64/graphview/GraphView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "isSecondScale"    # Z

    .prologue
    .line 155
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/LineGraphSeries;->resetDataPoints()V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v28

    .line 159
    .local v28, "maxX":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v32

    .line 163
    .local v32, "minX":D
    if-eqz p3, :cond_b

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lcom/jjoe64/graphview/SecondScale;->getMaxY()D

    move-result-wide v30

    .line 165
    .local v30, "maxY":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lcom/jjoe64/graphview/SecondScale;->getMinY()D

    move-result-wide v34

    .line 171
    .local v34, "minY":D
    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jjoe64/graphview/series/LineGraphSeries;->getValues(DD)Ljava/util/Iterator;

    move-result-object v51

    .line 174
    .local v51, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const-wide/16 v24, 0x0

    .line 175
    .local v24, "lastEndY":D
    const-wide/16 v22, 0x0

    .line 178
    .local v22, "lastEndX":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v57, v0

    invoke-static/range {v57 .. v57}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$100(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)I

    move-result v57

    move/from16 v0, v57

    int-to-float v0, v0

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v56, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/series/LineGraphSeries;->getColor()I

    move-result v57

    invoke-virtual/range {v56 .. v57}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaintBackground:Landroid/graphics/Paint;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v57, v0

    invoke-static/range {v57 .. v57}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$200(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)I

    move-result v57

    invoke-virtual/range {v56 .. v57}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mCustomPaint:Landroid/graphics/Paint;

    move-object/from16 v56, v0

    if-eqz v56, :cond_c

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mCustomPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 189
    .local v21, "paint":Landroid/graphics/Paint;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$300(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v56

    if-eqz v56, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/graphics/Path;->reset()V

    .line 193
    :cond_0
    sub-double v10, v30, v34

    .line 194
    .local v10, "diffY":D
    sub-double v8, v28, v32

    .line 196
    .local v8, "diffX":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v56

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v16, v0

    .line 197
    .local v16, "graphHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v56

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v19, v0

    .line 198
    .local v19, "graphWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v56

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v17, v0

    .line 199
    .local v17, "graphLeft":F
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v56

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v18, v0

    .line 201
    .local v18, "graphTop":F
    const-wide/16 v24, 0x0

    .line 202
    const-wide/16 v22, 0x0

    .line 203
    const-wide/16 v26, 0x0

    .line 204
    .local v26, "lastUsedEndX":D
    const/4 v14, 0x0

    .line 205
    .local v14, "firstX":F
    const/16 v20, 0x0

    .line 206
    .local v20, "i":I
    :goto_2
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_e

    .line 207
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 209
    .local v50, "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    invoke-interface/range {v50 .. v50}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v56

    sub-double v48, v56, v34

    .line 210
    .local v48, "valY":D
    div-double v42, v48, v10

    .line 211
    .local v42, "ratY":D
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v56, v0

    mul-double v54, v56, v42

    .line 213
    .local v54, "y":D
    invoke-interface/range {v50 .. v50}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v56

    sub-double v46, v56, v32

    .line 214
    .local v46, "valX":D
    div-double v40, v46, v8

    .line 215
    .local v40, "ratX":D
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v56, v0

    mul-double v52, v56, v40

    .line 217
    .local v52, "x":D
    move-wide/from16 v36, v52

    .line 218
    .local v36, "orgX":D
    move-wide/from16 v38, v54

    .line 220
    .local v38, "orgY":D
    if-lez v20, :cond_d

    .line 222
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v56, v0

    cmpl-double v56, v52, v56

    if-lez v56, :cond_1

    .line 223
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v56, v0

    sub-double v56, v56, v22

    sub-double v58, v54, v24

    mul-double v56, v56, v58

    sub-double v58, v52, v22

    div-double v6, v56, v58

    .line 224
    .local v6, "b":D
    add-double v54, v24, v6

    .line 225
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v52, v0

    .line 227
    .end local v6    # "b":D
    :cond_1
    const-wide/16 v56, 0x0

    cmpg-double v56, v54, v56

    if-gez v56, :cond_2

    .line 228
    const-wide/16 v56, 0x0

    sub-double v56, v56, v24

    sub-double v58, v52, v22

    mul-double v56, v56, v58

    sub-double v58, v54, v24

    div-double v6, v56, v58

    .line 229
    .restart local v6    # "b":D
    add-double v52, v22, v6

    .line 230
    const-wide/16 v54, 0x0

    .line 232
    .end local v6    # "b":D
    :cond_2
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v56, v0

    cmpl-double v56, v54, v56

    if-lez v56, :cond_3

    .line 233
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v56, v0

    sub-double v56, v56, v24

    sub-double v58, v52, v22

    mul-double v56, v56, v58

    sub-double v58, v54, v24

    div-double v6, v56, v58

    .line 234
    .restart local v6    # "b":D
    add-double v52, v22, v6

    .line 235
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v54, v0

    .line 237
    .end local v6    # "b":D
    :cond_3
    const-wide/16 v56, 0x0

    cmpg-double v56, v24, v56

    if-gez v56, :cond_4

    .line 238
    const-wide/16 v56, 0x0

    sub-double v56, v56, v54

    sub-double v58, v52, v22

    mul-double v56, v56, v58

    sub-double v58, v24, v54

    div-double v6, v56, v58

    .line 239
    .restart local v6    # "b":D
    sub-double v22, v52, v6

    .line 240
    const-wide/16 v24, 0x0

    .line 242
    .end local v6    # "b":D
    :cond_4
    const-wide/16 v56, 0x0

    cmpg-double v56, v22, v56

    if-gez v56, :cond_5

    .line 243
    const-wide/16 v56, 0x0

    sub-double v56, v56, v52

    sub-double v58, v54, v24

    mul-double v56, v56, v58

    sub-double v58, v22, v52

    div-double v6, v56, v58

    .line 244
    .restart local v6    # "b":D
    sub-double v24, v54, v6

    .line 245
    const-wide/16 v22, 0x0

    .line 247
    .end local v6    # "b":D
    :cond_5
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v56, v0

    cmpl-double v56, v24, v56

    if-lez v56, :cond_6

    .line 248
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v56, v0

    sub-double v56, v56, v54

    sub-double v58, v52, v22

    mul-double v56, v56, v58

    sub-double v58, v24, v54

    div-double v6, v56, v58

    .line 249
    .restart local v6    # "b":D
    sub-double v22, v52, v6

    .line 250
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    .line 253
    .end local v6    # "b":D
    :cond_6
    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v56, v0

    const/high16 v57, 0x3f800000    # 1.0f

    add-float v57, v57, v17

    add-float v44, v56, v57

    .line 254
    .local v44, "startX":F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v56, v0

    sub-double v56, v56, v24

    move-wide/from16 v0, v56

    double-to-float v0, v0

    move/from16 v56, v0

    add-float v45, v56, v16

    .line 255
    .local v45, "startY":F
    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v56, v0

    const/high16 v57, 0x3f800000    # 1.0f

    add-float v57, v57, v17

    add-float v12, v56, v57

    .line 256
    .local v12, "endX":F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v56, v0

    sub-double v56, v56, v54

    move-wide/from16 v0, v56

    double-to-float v0, v0

    move/from16 v56, v0

    add-float v13, v56, v16

    .line 259
    .local v13, "endY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$400(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v56

    if-eqz v56, :cond_7

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$500(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)F

    move-result v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v57, v0

    move-object/from16 v0, p2

    move/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v12, v13, v1}, Lcom/jjoe64/graphview/series/LineGraphSeries;->registerDataPoint(FFLcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPath:Landroid/graphics/Path;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/graphics/Path;->reset()V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPath:Landroid/graphics/Path;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPath:Landroid/graphics/Path;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPath:Landroid/graphics/Path;

    move-object/from16 v56, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v56

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$300(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v56

    if-eqz v56, :cond_9

    .line 270
    const/16 v56, 0x1

    move/from16 v0, v20

    move/from16 v1, v56

    if-ne v0, v1, :cond_8

    .line 271
    move/from16 v14, v44

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 274
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 276
    :cond_9
    float-to-double v0, v12

    move-wide/from16 v26, v0

    .line 283
    .end local v12    # "endX":F
    .end local v13    # "endY":F
    .end local v44    # "startX":F
    .end local v45    # "startY":F
    :cond_a
    :goto_3
    move-wide/from16 v24, v38

    .line 284
    move-wide/from16 v22, v36

    .line 285
    add-int/lit8 v20, v20, 0x1

    .line 286
    goto/16 :goto_2

    .line 167
    .end local v8    # "diffX":D
    .end local v10    # "diffY":D
    .end local v14    # "firstX":F
    .end local v16    # "graphHeight":F
    .end local v17    # "graphLeft":F
    .end local v18    # "graphTop":F
    .end local v19    # "graphWidth":F
    .end local v20    # "i":I
    .end local v21    # "paint":Landroid/graphics/Paint;
    .end local v22    # "lastEndX":D
    .end local v24    # "lastEndY":D
    .end local v26    # "lastUsedEndX":D
    .end local v30    # "maxY":D
    .end local v34    # "minY":D
    .end local v36    # "orgX":D
    .end local v38    # "orgY":D
    .end local v40    # "ratX":D
    .end local v42    # "ratY":D
    .end local v46    # "valX":D
    .end local v48    # "valY":D
    .end local v50    # "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    .end local v51    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .end local v52    # "x":D
    .end local v54    # "y":D
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v30

    .line 168
    .restart local v30    # "maxY":D
    invoke-virtual/range {p1 .. p1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v56

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v34

    .restart local v34    # "minY":D
    goto/16 :goto_0

    .line 186
    .restart local v22    # "lastEndX":D
    .restart local v24    # "lastEndY":D
    .restart local v51    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .restart local v21    # "paint":Landroid/graphics/Paint;
    goto/16 :goto_1

    .line 277
    .restart local v8    # "diffX":D
    .restart local v10    # "diffY":D
    .restart local v14    # "firstX":F
    .restart local v16    # "graphHeight":F
    .restart local v17    # "graphLeft":F
    .restart local v18    # "graphTop":F
    .restart local v19    # "graphWidth":F
    .restart local v20    # "i":I
    .restart local v26    # "lastUsedEndX":D
    .restart local v36    # "orgX":D
    .restart local v38    # "orgY":D
    .restart local v40    # "ratX":D
    .restart local v42    # "ratY":D
    .restart local v46    # "valX":D
    .restart local v48    # "valY":D
    .restart local v50    # "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    .restart local v52    # "x":D
    .restart local v54    # "y":D
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$400(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v56

    if-eqz v56, :cond_a

    .line 279
    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v56, v0

    const/high16 v57, 0x3f800000    # 1.0f

    add-float v57, v57, v17

    add-float v15, v56, v57

    .line 280
    .local v15, "first_X":F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v56, v0

    sub-double v56, v56, v54

    move-wide/from16 v0, v56

    double-to-float v0, v0

    move/from16 v56, v0

    add-float v56, v56, v16

    goto :goto_3

    .line 288
    .end local v15    # "first_X":F
    .end local v36    # "orgX":D
    .end local v38    # "orgY":D
    .end local v40    # "ratX":D
    .end local v42    # "ratY":D
    .end local v46    # "valX":D
    .end local v48    # "valY":D
    .end local v50    # "value":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    .end local v52    # "x":D
    .end local v54    # "y":D
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$300(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v56

    if-eqz v56, :cond_f

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v56, v0

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v57, v0

    add-float v58, v16, v18

    invoke-virtual/range {v56 .. v58}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v56, v0

    add-float v57, v16, v18

    move-object/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/graphics/Path;->close()V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaintBackground:Landroid/graphics/Paint;

    move-object/from16 v57, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 296
    :cond_f
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 388
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v0}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$200(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)I

    move-result v0

    return v0
.end method

.method public getDataPointsRadius()F
    .locals 1

    .prologue
    .line 371
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v0}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$500(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)F

    move-result v0

    return v0
.end method

.method public getThickness()I
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v0}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$100(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)I

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 135
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    new-instance v0, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;-><init>(Lcom/jjoe64/graphview/series/LineGraphSeries;Lcom/jjoe64/graphview/series/LineGraphSeries$1;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    .line 137
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 138
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPaintBackground:Landroid/graphics/Paint;

    .line 141
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPathBackground:Landroid/graphics/Path;

    .line 142
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mPath:Landroid/graphics/Path;

    .line 143
    return-void
.end method

.method public isDrawBackground()Z
    .locals 1

    .prologue
    .line 329
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v0}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$300(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v0

    return v0
.end method

.method public isDrawDataPoints()Z
    .locals 1

    .prologue
    .line 352
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v0}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$400(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 397
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v0, p1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$202(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;I)I

    .line 398
    return-void
.end method

.method public setCustomPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "customPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 407
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iput-object p1, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mCustomPaint:Landroid/graphics/Paint;

    .line 408
    return-void
.end method

.method public setDataPointsRadius(F)V
    .locals 1
    .param p1, "dataPointsRadius"    # F

    .prologue
    .line 379
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v0, p1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$502(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;F)F

    .line 380
    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 1
    .param p1, "drawBackground"    # Z

    .prologue
    .line 341
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v0, p1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$302(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;Z)Z

    .line 342
    return-void
.end method

.method public setDrawDataPoints(Z)V
    .locals 1
    .param p1, "drawDataPoints"    # Z

    .prologue
    .line 363
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v0, p1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$402(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;Z)Z

    .line 364
    return-void
.end method

.method public setThickness(I)V
    .locals 1
    .param p1, "thickness"    # I

    .prologue
    .line 317
    .local p0, "this":Lcom/jjoe64/graphview/series/LineGraphSeries;, "Lcom/jjoe64/graphview/series/LineGraphSeries<TE;>;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/LineGraphSeries;->mStyles:Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;

    invoke-static {v0, p1}, Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;->access$102(Lcom/jjoe64/graphview/series/LineGraphSeries$Styles;I)I

    .line 318
    return-void
.end method

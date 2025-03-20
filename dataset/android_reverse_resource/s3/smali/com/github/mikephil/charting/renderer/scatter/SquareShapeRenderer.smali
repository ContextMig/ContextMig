.class public Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;
.super Ljava/lang/Object;
.source "SquareShapeRenderer.java"

# interfaces
.implements Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public renderShape(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/buffer/ScatterBuffer;Landroid/graphics/Paint;F)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p4, "buffer"    # Lcom/github/mikephil/charting/buffer/ScatterBuffer;
    .param p5, "renderPaint"    # Landroid/graphics/Paint;
    .param p6, "shapeSize"    # F

    .prologue
    .line 23
    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, p6, v2

    .line 24
    .local v9, "shapeHalf":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleRadius()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v12

    .line 25
    .local v12, "shapeHoleSizeHalf":F
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v11, v12, v2

    .line 26
    .local v11, "shapeHoleSize":F
    sub-float v2, p6, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    .line 27
    .local v13, "shapeStrokeSize":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v14, v13, v2

    .line 29
    .local v14, "shapeStrokeSizeHalf":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleColor()I

    move-result v10

    .line 31
    .local v10, "shapeHoleColor":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v2

    if-ge v8, v2, :cond_0

    .line 33
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :cond_0
    return-void

    .line 36
    :cond_1
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v2, v2, v3

    .line 37
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 31
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 40
    :cond_3
    div-int/lit8 v2, v8, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getColor(I)I

    move-result v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    move/from16 v0, p6

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 43
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    sub-float/2addr v2, v12

    sub-float v3, v2, v14

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x1

    aget v2, v2, v4

    sub-float/2addr v2, v12

    sub-float v4, v2, v14

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    add-float/2addr v2, v12

    add-float v5, v2, v14

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v6, v8, 0x1

    aget v2, v2, v6

    add-float/2addr v2, v12

    add-float v6, v2, v14

    move-object/from16 v2, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    const v2, 0x112233

    if-eq v10, v2, :cond_2

    .line 53
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    sub-float v3, v2, v12

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x1

    aget v2, v2, v4

    sub-float v4, v2, v12

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    add-float v5, v2, v12

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v6, v8, 0x1

    aget v2, v2, v6

    add-float v6, v2, v12

    move-object/from16 v2, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 64
    :cond_4
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    sub-float v3, v2, v9

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x1

    aget v2, v2, v4

    sub-float v4, v2, v9

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    add-float v5, v2, v9

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v6, v8, 0x1

    aget v2, v2, v6

    add-float v6, v2, v9

    move-object/from16 v2, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

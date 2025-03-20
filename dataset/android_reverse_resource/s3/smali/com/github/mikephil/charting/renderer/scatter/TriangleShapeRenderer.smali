.class public Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;
.super Ljava/lang/Object;
.source "TriangleShapeRenderer.java"

# interfaces
.implements Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;


# instance fields
.field protected mTrianglePathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;->mTrianglePathBuffer:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public renderShape(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/buffer/ScatterBuffer;Landroid/graphics/Paint;F)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p4, "buffer"    # Lcom/github/mikephil/charting/buffer/ScatterBuffer;
    .param p5, "renderPaint"    # Landroid/graphics/Paint;
    .param p6, "shapeSize"    # F

    .prologue
    .line 25
    const/high16 v9, 0x40000000    # 2.0f

    div-float v3, p6, v9

    .line 26
    .local v3, "shapeHalf":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleRadius()F

    move-result v9

    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v6

    .line 27
    .local v6, "shapeHoleSizeHalf":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v5, v6, v9

    .line 28
    .local v5, "shapeHoleSize":F
    sub-float v9, p6, v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float v7, v9, v10

    .line 30
    .local v7, "shapeStrokeSize":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleColor()I

    move-result v4

    .line 32
    .local v4, "shapeHoleColor":I
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;->mTrianglePathBuffer:Landroid/graphics/Path;

    .line 36
    .local v8, "tri":Landroid/graphics/Path;
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 38
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 40
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v9

    if-nez v9, :cond_1

    .line 89
    :cond_0
    return-void

    .line 43
    :cond_1
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    .line 44
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v9

    if-nez v9, :cond_3

    .line 38
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 47
    :cond_3
    div-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getColor(I)I

    move-result v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    sub-float/2addr v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 50
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    add-float/2addr v9, v3

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    add-float/2addr v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    sub-float/2addr v9, v3

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    add-float/2addr v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    move/from16 v0, p6

    float-to-double v10, v0

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_4

    .line 54
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    sub-float/2addr v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    sub-float/2addr v9, v3

    add-float/2addr v9, v7

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    add-float/2addr v10, v3

    sub-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 58
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    add-float/2addr v9, v3

    sub-float/2addr v9, v7

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    add-float/2addr v10, v3

    sub-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 60
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    sub-float/2addr v10, v3

    add-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    sub-float/2addr v9, v3

    add-float/2addr v9, v7

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    add-float/2addr v10, v3

    sub-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    :cond_4
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 68
    move-object/from16 v0, p5

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 69
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 71
    move/from16 v0, p6

    float-to-double v10, v0

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_2

    const v9, 0x112233

    if-eq v4, v9, :cond_2

    .line 74
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    sub-float/2addr v10, v3

    add-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 78
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    add-float/2addr v9, v3

    sub-float/2addr v9, v7

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    add-float/2addr v10, v3

    sub-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    sub-float/2addr v9, v3

    add-float/2addr v9, v7

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    add-float/2addr v10, v3

    sub-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 84
    move-object/from16 v0, p5

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 85
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_1
.end method

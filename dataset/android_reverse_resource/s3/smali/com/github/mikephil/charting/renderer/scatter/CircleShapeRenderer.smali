.class public Lcom/github/mikephil/charting/renderer/scatter/CircleShapeRenderer;
.super Ljava/lang/Object;
.source "CircleShapeRenderer.java"

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
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p4, "buffer"    # Lcom/github/mikephil/charting/buffer/ScatterBuffer;
    .param p5, "renderPaint"    # Landroid/graphics/Paint;
    .param p6, "shapeSize"    # F

    .prologue
    .line 22
    const/high16 v9, 0x40000000    # 2.0f

    div-float v3, p6, v9

    .line 23
    .local v3, "shapeHalf":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleRadius()F

    move-result v9

    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v6

    .line 24
    .local v6, "shapeHoleSizeHalf":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v5, v6, v9

    .line 25
    .local v5, "shapeHoleSize":F
    sub-float v9, p6, v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float v7, v9, v10

    .line 26
    .local v7, "shapeStrokeSize":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v8, v7, v9

    .line 28
    .local v8, "shapeStrokeSizeHalf":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleColor()I

    move-result v4

    .line 30
    .local v4, "shapeHoleColor":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 32
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v9

    if-nez v9, :cond_1

    .line 72
    :cond_0
    return-void

    .line 35
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

    .line 36
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v9

    if-nez v9, :cond_3

    .line 30
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 39
    :cond_3
    div-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getColor(I)I

    move-result v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    move/from16 v0, p6

    float-to-double v10, v0

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_4

    .line 42
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    add-float v11, v6, v8

    move-object/from16 v0, p5

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 51
    const v9, 0x112233

    if-eq v4, v9, :cond_2

    .line 52
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p5

    invoke-virtual {p1, v9, v10, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 62
    :cond_4
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v9, v9, v2

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p5

    invoke-virtual {p1, v9, v10, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

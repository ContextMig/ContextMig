.class public Lcom/github/mikephil/charting/renderer/scatter/XShapeRenderer;
.super Ljava/lang/Object;
.source "XShapeRenderer.java"

# interfaces
.implements Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public renderShape(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/buffer/ScatterBuffer;Landroid/graphics/Paint;F)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p4, "buffer"    # Lcom/github/mikephil/charting/buffer/ScatterBuffer;
    .param p5, "renderPaint"    # Landroid/graphics/Paint;
    .param p6, "shapeSize"    # F

    .prologue
    .line 22
    const/high16 v0, 0x40000000    # 2.0f

    div-float v7, p6, v0

    .line 24
    .local v7, "shapeHalf":F
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p4}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 29
    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v0, v0, v6

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v0, v0, v6

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v1, v6, 0x1

    aget v0, v0, v1

    .line 33
    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 27
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 36
    :cond_3
    div-int/lit8 v0, v6, 0x2

    invoke-interface {p2, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getColor(I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v0, v0, v6

    sub-float v1, v0, v7

    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v2, v6, 0x1

    aget v0, v0, v2

    sub-float v2, v0, v7

    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v0, v0, v6

    add-float v3, v0, v7

    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v4, v6, 0x1

    aget v0, v0, v4

    add-float v4, v0, v7

    move-object v0, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 44
    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v0, v0, v6

    add-float v1, v0, v7

    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v2, v6, 0x1

    aget v0, v0, v2

    sub-float v2, v0, v7

    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v0, v0, v6

    sub-float v3, v0, v7

    iget-object v0, p4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v4, v6, 0x1

    aget v0, v0, v4

    add-float v4, v0, v7

    move-object v0, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

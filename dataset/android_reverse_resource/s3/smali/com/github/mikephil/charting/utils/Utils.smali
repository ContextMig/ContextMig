.class public abstract Lcom/github/mikephil/charting/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEG2RAD:D = 0.017453292519943295

.field public static final FDEG2RAD:F = 0.017453292f

.field private static final POW_10:[I

.field private static mCalcTextHeightRect:Landroid/graphics/Rect;

.field private static mCalcTextSizeRect:Landroid/graphics/Rect;

.field private static mDrawTextRectBuffer:Landroid/graphics/Rect;

.field private static mFontMetricsBuffer:Landroid/graphics/Paint$FontMetrics;

.field private static mMaximumFlingVelocity:I

.field private static mMetrics:Landroid/util/DisplayMetrics;

.field private static mMinimumFlingVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x32

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 36
    const/16 v0, 0x1f40

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mCalcTextHeightRect:Landroid/graphics/Rect;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mCalcTextSizeRect:Landroid/graphics/Rect;

    .line 227
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->POW_10:[I

    .line 505
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    .line 506
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mFontMetricsBuffer:Landroid/graphics/Paint$FontMetrics;

    return-void

    .line 227
    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "demoText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 161
    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mCalcTextHeightRect:Landroid/graphics/Rect;

    .line 162
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 164
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    return v1
.end method

.method public static calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "demoText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {v1, v1}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v0

    .line 199
    .local v0, "result":Lcom/github/mikephil/charting/utils/FSize;
    invoke-static {p0, p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;Lcom/github/mikephil/charting/utils/FSize;)V

    .line 200
    return-object v0
.end method

.method public static calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;Lcom/github/mikephil/charting/utils/FSize;)V
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "demoText"    # Ljava/lang/String;
    .param p2, "outputFSize"    # Lcom/github/mikephil/charting/utils/FSize;

    .prologue
    const/4 v2, 0x0

    .line 214
    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mCalcTextSizeRect:Landroid/graphics/Rect;

    .line 215
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 217
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iput v1, p2, Lcom/github/mikephil/charting/utils/FSize;->height:F

    .line 220
    return-void
.end method

.method public static calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 1
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "demoText"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static convertDpToPixel(F)F
    .locals 4
    .param p0, "dp"    # F

    .prologue
    .line 95
    sget-object v2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_0

    .line 97
    const-string v2, "MPChartLib-Utils"

    const-string v3, "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertDpToPixel(...). Otherwise conversion does not take place."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local p0    # "dp":F
    :goto_0
    return p0

    .line 107
    .restart local p0    # "dp":F
    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    .line 108
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float v1, p0, v2

    .local v1, "px":F
    move p0, v1

    .line 109
    goto :goto_0
.end method

.method public static convertIntegers(Ljava/util/List;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "integers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [I

    .line 372
    .local v0, "ret":[I
    invoke-static {p0, v0}, Lcom/github/mikephil/charting/utils/Utils;->copyIntegers(Ljava/util/List;[I)V

    .line 374
    return-object v0
.end method

.method public static convertPixelsToDp(F)F
    .locals 4
    .param p0, "px"    # F

    .prologue
    .line 121
    sget-object v2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_0

    .line 123
    const-string v2, "MPChartLib-Utils"

    const-string v3, "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertPixelsToDp(...). Otherwise conversion does not take place."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local p0    # "px":F
    :goto_0
    return p0

    .line 133
    .restart local p0    # "px":F
    :cond_0
    sget-object v1, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    .line 134
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    div-float v0, p0, v2

    .local v0, "dp":F
    move p0, v0

    .line 135
    goto :goto_0
.end method

.method public static convertStrings(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 394
    .local v1, "ret":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 395
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    return-object v1
.end method

.method public static copyIntegers(Ljava/util/List;[I)V
    .locals 4
    .param p1, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "from":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v2, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    array-length v0, p1

    .line 379
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 380
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 382
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static copyStrings(Ljava/util/List;[Ljava/lang/String;)V
    .locals 4
    .param p1, "to"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "from":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    array-length v0, p1

    .line 403
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 404
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p1, v1

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 406
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static drawMultilineText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;FFLandroid/text/TextPaint;Lcom/github/mikephil/charting/utils/MPPointF;F)V
    .locals 13
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "textLayout"    # Landroid/text/StaticLayout;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "anchor"    # Lcom/github/mikephil/charting/utils/MPPointF;
    .param p6, "angleDegrees"    # F

    .prologue
    .line 579
    const/4 v2, 0x0

    .line 580
    .local v2, "drawOffsetX":F
    const/4 v3, 0x0

    .line 584
    .local v3, "drawOffsetY":F
    sget-object v10, Lcom/github/mikephil/charting/utils/Utils;->mFontMetricsBuffer:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v5

    .line 586
    .local v5, "lineHeight":F
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v10

    int-to-float v4, v10

    .line 587
    .local v4, "drawWidth":F
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    int-to-float v10, v10

    mul-float v1, v10, v5

    .line 590
    .local v1, "drawHeight":F
    sget-object v10, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v2, v10

    .line 595
    add-float/2addr v3, v1

    .line 598
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v6

    .line 599
    .local v6, "originalTextAlign":Landroid/graphics/Paint$Align;
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 601
    const/4 v10, 0x0

    cmpl-float v10, p6, v10

    if-eqz v10, :cond_2

    .line 604
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    sub-float/2addr v2, v10

    .line 605
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v1

    sub-float/2addr v3, v10

    .line 607
    move v8, p2

    .line 608
    .local v8, "translateX":F
    move/from16 v9, p3

    .line 611
    .local v9, "translateY":F
    move-object/from16 v0, p5

    iget v10, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    move-object/from16 v0, p5

    iget v10, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    .line 612
    :cond_0
    move/from16 v0, p6

    invoke-static {v4, v1, v0}, Lcom/github/mikephil/charting/utils/Utils;->getSizeOfRotatedRectangleByDegrees(FFF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v7

    .line 617
    .local v7, "rotatedSize":Lcom/github/mikephil/charting/utils/FSize;
    iget v10, v7, Lcom/github/mikephil/charting/utils/FSize;->width:F

    move-object/from16 v0, p5

    iget v11, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    .line 618
    iget v10, v7, Lcom/github/mikephil/charting/utils/FSize;->height:F

    move-object/from16 v0, p5

    iget v11, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    .line 619
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/FSize;->recycleInstance(Lcom/github/mikephil/charting/utils/FSize;)V

    .line 622
    .end local v7    # "rotatedSize":Lcom/github/mikephil/charting/utils/FSize;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 623
    invoke-virtual {p0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 624
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 626
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 627
    invoke-virtual {p1, p0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 629
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 648
    .end local v8    # "translateX":F
    .end local v9    # "translateY":F
    :goto_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 649
    return-void

    .line 631
    :cond_2
    move-object/from16 v0, p5

    iget v10, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    move-object/from16 v0, p5

    iget v10, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_4

    .line 633
    :cond_3
    move-object/from16 v0, p5

    iget v10, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float/2addr v10, v4

    sub-float/2addr v2, v10

    .line 634
    move-object/from16 v0, p5

    iget v10, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float/2addr v10, v1

    sub-float/2addr v3, v10

    .line 637
    :cond_4
    add-float/2addr v2, p2

    .line 638
    add-float v3, v3, p3

    .line 640
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 642
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 643
    invoke-virtual {p1, p0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 645
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public static drawMultilineText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/text/TextPaint;Lcom/github/mikephil/charting/utils/FSize;Lcom/github/mikephil/charting/utils/MPPointF;F)V
    .locals 10
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "constrainedToSize"    # Lcom/github/mikephil/charting/utils/FSize;
    .param p6, "anchor"    # Lcom/github/mikephil/charting/utils/MPPointF;
    .param p7, "angleDegrees"    # F

    .prologue
    .line 657
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    .line 658
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v1, p5, Lcom/github/mikephil/charting/utils/FSize;->width:F

    float-to-double v4, v1

    .line 660
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .local v0, "textLayout":Landroid/text/StaticLayout;
    move-object v1, p0

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 664
    invoke-static/range {v1 .. v7}, Lcom/github/mikephil/charting/utils/Utils;->drawMultilineText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;FFLandroid/text/TextPaint;Lcom/github/mikephil/charting/utils/MPPointF;F)V

    .line 665
    return-void
.end method

.method public static drawXAxisValue(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Lcom/github/mikephil/charting/utils/MPPointF;F)V
    .locals 11
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "anchor"    # Lcom/github/mikephil/charting/utils/MPPointF;
    .param p6, "angleDegrees"    # F

    .prologue
    .line 512
    const/4 v1, 0x0

    .line 513
    .local v1, "drawOffsetX":F
    const/4 v2, 0x0

    .line 515
    .local v2, "drawOffsetY":F
    sget-object v8, Lcom/github/mikephil/charting/utils/Utils;->mFontMetricsBuffer:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v3

    .line 516
    .local v3, "lineHeight":F
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sget-object v10, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    invoke-virtual {p4, p1, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 519
    sget-object v8, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v1, v8

    .line 524
    sget-object v8, Lcom/github/mikephil/charting/utils/Utils;->mFontMetricsBuffer:Landroid/graphics/Paint$FontMetrics;

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v8, v8

    add-float/2addr v2, v8

    .line 527
    invoke-virtual {p4}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    .line 528
    .local v4, "originalTextAlign":Landroid/graphics/Paint$Align;
    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 530
    const/4 v8, 0x0

    cmpl-float v8, p6, v8

    if-eqz v8, :cond_2

    .line 533
    sget-object v8, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    sub-float/2addr v1, v8

    .line 534
    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v8, v3

    sub-float/2addr v2, v8

    .line 536
    move v6, p2

    .line 537
    .local v6, "translateX":F
    move v7, p3

    .line 540
    .local v7, "translateY":F
    move-object/from16 v0, p5

    iget v8, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    move-object/from16 v0, p5

    iget v8, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 541
    :cond_0
    sget-object v8, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    .line 542
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    .line 541
    move/from16 v0, p6

    invoke-static {v8, v3, v0}, Lcom/github/mikephil/charting/utils/Utils;->getSizeOfRotatedRectangleByDegrees(FFF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v5

    .line 546
    .local v5, "rotatedSize":Lcom/github/mikephil/charting/utils/FSize;
    iget v8, v5, Lcom/github/mikephil/charting/utils/FSize;->width:F

    move-object/from16 v0, p5

    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    .line 547
    iget v8, v5, Lcom/github/mikephil/charting/utils/FSize;->height:F

    move-object/from16 v0, p5

    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 548
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/FSize;->recycleInstance(Lcom/github/mikephil/charting/utils/FSize;)V

    .line 551
    .end local v5    # "rotatedSize":Lcom/github/mikephil/charting/utils/FSize;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 552
    invoke-virtual {p0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 553
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 555
    invoke-virtual {p0, p1, v1, v2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 557
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 571
    .end local v6    # "translateX":F
    .end local v7    # "translateY":F
    :goto_0
    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 572
    return-void

    .line 559
    :cond_2
    move-object/from16 v0, p5

    iget v8, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    move-object/from16 v0, p5

    iget v8, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_4

    .line 561
    :cond_3
    sget-object v8, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p5

    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float/2addr v8, v9

    sub-float/2addr v1, v8

    .line 562
    move-object/from16 v0, p5

    iget v8, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float/2addr v8, v3

    sub-float/2addr v2, v8

    .line 565
    :cond_4
    add-float/2addr v1, p2

    .line 566
    add-float/2addr v2, p3

    .line 568
    invoke-virtual {p0, p1, v1, v2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static formatNumber(FIZ)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # F
    .param p1, "digitCount"    # I
    .param p2, "separateThousands"    # Z

    .prologue
    .line 242
    const/16 v0, 0x2e

    invoke-static {p0, p1, p2, v0}, Lcom/github/mikephil/charting/utils/Utils;->formatNumber(FIZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatNumber(FIZC)Ljava/lang/String;
    .locals 14
    .param p0, "number"    # F
    .param p1, "digitCount"    # I
    .param p2, "separateThousands"    # Z
    .param p3, "separateChar"    # C

    .prologue
    .line 258
    const/16 v11, 0x23

    new-array v8, v11, [C

    .line 260
    .local v8, "out":[C
    const/4 v5, 0x0

    .line 261
    .local v5, "neg":Z
    const/4 v11, 0x0

    cmpl-float v11, p0, v11

    if-nez v11, :cond_0

    .line 262
    const-string v11, "0"

    .line 332
    :goto_0
    return-object v11

    .line 265
    :cond_0
    const/4 v10, 0x0

    .line 266
    .local v10, "zero":Z
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, p0, v11

    if-gez v11, :cond_1

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v11, p0, v11

    if-lez v11, :cond_1

    .line 267
    const/4 v10, 0x1

    .line 270
    :cond_1
    const/4 v11, 0x0

    cmpg-float v11, p0, v11

    if-gez v11, :cond_2

    .line 271
    const/4 v5, 0x1

    .line 272
    neg-float p0, p0

    .line 275
    :cond_2
    sget-object v11, Lcom/github/mikephil/charting/utils/Utils;->POW_10:[I

    array-length v11, v11

    if-le p1, v11, :cond_3

    .line 276
    sget-object v11, Lcom/github/mikephil/charting/utils/Utils;->POW_10:[I

    array-length v11, v11

    add-int/lit8 p1, v11, -0x1

    .line 279
    :cond_3
    sget-object v11, Lcom/github/mikephil/charting/utils/Utils;->POW_10:[I

    aget v11, v11, p1

    int-to-float v11, v11

    mul-float/2addr p0, v11

    .line 280
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-long v6, v11

    .line 281
    .local v6, "lval":J
    array-length v11, v8

    add-int/lit8 v3, v11, -0x1

    .line 282
    .local v3, "ind":I
    const/4 v0, 0x0

    .line 283
    .local v0, "charCount":I
    const/4 v1, 0x0

    .local v1, "decimalPointAdded":Z
    move v4, v3

    .line 285
    .end local v3    # "ind":I
    .local v4, "ind":I
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-nez v11, :cond_4

    add-int/lit8 v11, p1, 0x1

    if-ge v0, v11, :cond_8

    .line 286
    :cond_4
    const-wide/16 v12, 0xa

    rem-long v12, v6, v12

    long-to-int v2, v12

    .line 287
    .local v2, "digit":I
    const-wide/16 v12, 0xa

    div-long/2addr v6, v12

    .line 288
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    add-int/lit8 v11, v2, 0x30

    int-to-char v11, v11

    aput-char v11, v8, v4

    .line 289
    add-int/lit8 v0, v0, 0x1

    .line 292
    if-ne v0, p1, :cond_6

    .line 293
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    const/16 v11, 0x2c

    aput-char v11, v8, v3

    .line 294
    add-int/lit8 v0, v0, 0x1

    .line 295
    const/4 v1, 0x1

    move v3, v4

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    :cond_5
    :goto_2
    move v4, v3

    .line 315
    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    goto :goto_1

    .line 298
    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    :cond_6
    if-eqz p2, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-eqz v11, :cond_5

    if-le v0, p1, :cond_5

    .line 300
    if-eqz v1, :cond_7

    .line 302
    sub-int v11, v0, p1

    rem-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_5

    .line 303
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    aput-char p3, v8, v3

    .line 304
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    goto :goto_2

    .line 309
    :cond_7
    sub-int v11, v0, p1

    rem-int/lit8 v11, v11, 0x4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    .line 310
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    aput-char p3, v8, v3

    .line 311
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    goto :goto_2

    .line 318
    .end local v2    # "digit":I
    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    :cond_8
    if-eqz v10, :cond_9

    .line 319
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    const/16 v11, 0x30

    aput-char v11, v8, v4

    .line 320
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .line 324
    .end local v3    # "ind":I
    .restart local v4    # "ind":I
    :cond_9
    if-eqz v5, :cond_a

    .line 325
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    const/16 v11, 0x2d

    aput-char v11, v8, v4

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 329
    :goto_3
    array-length v11, v8

    sub-int v9, v11, v0

    .line 332
    .local v9, "start":I
    array-length v11, v8

    sub-int/2addr v11, v9

    invoke-static {v8, v9, v11}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .end local v3    # "ind":I
    .end local v9    # "start":I
    .restart local v4    # "ind":I
    :cond_a
    move v3, v4

    .end local v4    # "ind":I
    .restart local v3    # "ind":I
    goto :goto_3
.end method

.method public static getDecimals(F)I
    .locals 4
    .param p0, "number"    # F

    .prologue
    .line 358
    float-to-double v2, p0

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v0

    .line 359
    .local v0, "i":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public static getLineHeight(Landroid/graphics/Paint;)F
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 168
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 169
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    invoke-static {p0, v0}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v1

    return v1
.end method

.method public static getLineHeight(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "fontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 174
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public static getLineSpacing(Landroid/graphics/Paint;)F
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 178
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 179
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    invoke-static {p0, v0}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v1

    return v1
.end method

.method public static getLineSpacing(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "fontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 184
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 492
    sget v0, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 488
    sget v0, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    return v0
.end method

.method public static getNormalizedAngle(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 499
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 500
    add-float/2addr p0, v1

    goto :goto_0

    .line 502
    :cond_0
    rem-float v0, p0, v1

    return v0
.end method

.method public static getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FF)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 2
    .param p0, "center"    # Lcom/github/mikephil/charting/utils/MPPointF;
    .param p1, "dist"    # F
    .param p2, "angle"    # F

    .prologue
    const/4 v1, 0x0

    .line 437
    invoke-static {v1, v1}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 438
    .local v0, "p":Lcom/github/mikephil/charting/utils/MPPointF;
    invoke-static {p0, p1, p2, v0}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 439
    return-object v0
.end method

.method public static getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 6
    .param p0, "center"    # Lcom/github/mikephil/charting/utils/MPPointF;
    .param p1, "dist"    # F
    .param p2, "angle"    # F
    .param p3, "outputPoint"    # Lcom/github/mikephil/charting/utils/MPPointF;

    .prologue
    .line 443
    iget v0, p0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    float-to-double v0, v0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 444
    iget v0, p0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    float-to-double v0, v0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 445
    return-void
.end method

.method public static getSDKInt()I
    .locals 1

    .prologue
    .line 729
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getSizeOfRotatedRectangleByDegrees(FFF)Lcom/github/mikephil/charting/utils/FSize;
    .locals 2
    .param p0, "rectangleWidth"    # F
    .param p1, "rectangleHeight"    # F
    .param p2, "degrees"    # F

    .prologue
    .line 705
    const v1, 0x3c8efa35

    mul-float v0, p2, v1

    .line 706
    .local v0, "radians":F
    invoke-static {p0, p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->getSizeOfRotatedRectangleByRadians(FFF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v1

    return-object v1
.end method

.method public static getSizeOfRotatedRectangleByDegrees(Lcom/github/mikephil/charting/utils/FSize;F)Lcom/github/mikephil/charting/utils/FSize;
    .locals 3
    .param p0, "rectangleSize"    # Lcom/github/mikephil/charting/utils/FSize;
    .param p1, "degrees"    # F

    .prologue
    .line 676
    const v1, 0x3c8efa35

    mul-float v0, p1, v1

    .line 677
    .local v0, "radians":F
    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget v2, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {v1, v2, v0}, Lcom/github/mikephil/charting/utils/Utils;->getSizeOfRotatedRectangleByRadians(FFF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v1

    return-object v1
.end method

.method public static getSizeOfRotatedRectangleByRadians(FFF)Lcom/github/mikephil/charting/utils/FSize;
    .locals 4
    .param p0, "rectangleWidth"    # F
    .param p1, "rectangleHeight"    # F
    .param p2, "radians"    # F

    .prologue
    .line 720
    float-to-double v0, p2

    .line 721
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, p2

    .line 722
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p1

    .line 721
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v2, p2

    .line 723
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, p2

    .line 724
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p1

    .line 723
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    .line 720
    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v0

    return-object v0
.end method

.method public static getSizeOfRotatedRectangleByRadians(Lcom/github/mikephil/charting/utils/FSize;F)Lcom/github/mikephil/charting/utils/FSize;
    .locals 2
    .param p0, "rectangleSize"    # Lcom/github/mikephil/charting/utils/FSize;
    .param p1, "radians"    # F

    .prologue
    .line 690
    iget v0, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {v0, v1, p1}, Lcom/github/mikephil/charting/utils/Utils;->getSizeOfRotatedRectangleByRadians(FFF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v0

    return-object v0
.end method

.method public static granularity(FI)D
    .locals 12
    .param p0, "range"    # F
    .param p1, "labelCount"    # I

    .prologue
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    .line 743
    int-to-float v5, p1

    div-float v5, p0, v5

    float-to-double v6, v5

    .line 744
    .local v6, "rawInterval":D
    invoke-static {v6, v7}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v5

    float-to-double v0, v5

    .line 748
    .local v0, "interval":D
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    double-to-int v5, v8

    int-to-double v8, v5

    .line 747
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v5

    float-to-double v2, v5

    .line 749
    .local v2, "intervalMagnitude":D
    div-double v8, v0, v2

    double-to-int v4, v8

    .line 751
    .local v4, "intervalSigDigit":I
    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    .line 752
    mul-double v8, v10, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 755
    :cond_0
    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v0

    return-wide v8
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 50
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 52
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 54
    const-string v2, "MPChartLib-Utils"

    const-string v3, "Utils.init(...) PROVIDED CONTEXT OBJECT IS NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 59
    .local v1, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 60
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sput-object v2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    goto :goto_0
.end method

.method public static init(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    .line 79
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 81
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 82
    return-void
.end method

.method public static nextUp(D)D
    .locals 6
    .param p0, "d"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 416
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    .line 420
    .end local p0    # "d":D
    :goto_0
    return-wide p0

    .line 419
    .restart local p0    # "d":D
    :cond_0
    add-double/2addr p0, v4

    .line 420
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 481
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 485
    :goto_0
    return-void

    .line 484
    :cond_0
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method public static roundToNextSignificant(D)F
    .locals 10
    .param p0, "number"    # D

    .prologue
    .line 342
    const-wide/16 v6, 0x0

    cmpg-double v3, p0, v6

    if-gez v3, :cond_0

    neg-double v6, p0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-float v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 343
    .local v0, "d":F
    float-to-int v3, v0

    rsub-int/lit8 v2, v3, 0x1

    .line 344
    .local v2, "pw":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 345
    .local v1, "magnitude":F
    float-to-double v6, v1

    mul-double/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 346
    .local v4, "shifted":J
    long-to-float v3, v4

    div-float/2addr v3, v1

    return v3

    .end local v0    # "d":F
    .end local v1    # "magnitude":F
    .end local v2    # "pw":I
    .end local v4    # "shifted":J
    :cond_0
    move-wide v6, p0

    .line 342
    goto :goto_0
.end method

.method public static velocityTrackerPointerUpCleanUpIfNecessary(Landroid/view/MotionEvent;Landroid/view/VelocityTracker;)V
    .locals 12
    .param p0, "ev"    # Landroid/view/MotionEvent;
    .param p1, "tracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 452
    const/16 v10, 0x3e8

    sget v11, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 453
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 454
    .local v5, "upIndex":I
    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 455
    .local v3, "id1":I
    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    .line 456
    .local v7, "x1":F
    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    .line 457
    .local v9, "y1":F
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 458
    if-ne v2, v5, :cond_1

    .line 457
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 462
    .local v4, "id2":I
    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    mul-float v6, v7, v10

    .line 463
    .local v6, "x":F
    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    mul-float v8, v9, v10

    .line 465
    .local v8, "y":F
    add-float v1, v6, v8

    .line 466
    .local v1, "dot":F
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_0

    .line 467
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 471
    .end local v1    # "dot":F
    .end local v4    # "id2":I
    .end local v6    # "x":F
    .end local v8    # "y":F
    :cond_2
    return-void
.end method

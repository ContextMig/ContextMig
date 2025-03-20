.class public Lcom/github/mikephil/charting/renderer/PieChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "PieChartRenderer.java"


# instance fields
.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field private mCenterTextLastBounds:Landroid/graphics/RectF;

.field private mCenterTextLastValue:Ljava/lang/CharSequence;

.field private mCenterTextLayout:Landroid/text/StaticLayout;

.field private mCenterTextPaint:Landroid/text/TextPaint;

.field protected mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field protected mDrawBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHoleCirclePath:Landroid/graphics/Path;

.field protected mHolePaint:Landroid/graphics/Paint;

.field private mInnerRectBuffer:Landroid/graphics/RectF;

.field private mPathBuffer:Landroid/graphics/Path;

.field private mRectBuffer:[Landroid/graphics/RectF;

.field protected mTransparentCirclePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 5
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/PieChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    .line 130
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 131
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 462
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 64
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 76
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected calculateMinimumRadiusForSpacedSlice(Landroid/graphics/PointF;FFFFFF)F
    .locals 20
    .param p1, "center"    # Landroid/graphics/PointF;
    .param p2, "radius"    # F
    .param p3, "angle"    # F
    .param p4, "arcStartPointX"    # F
    .param p5, "arcStartPointY"    # F
    .param p6, "startAngle"    # F
    .param p7, "sweepAngle"    # F

    .prologue
    .line 142
    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, p7, v11

    add-float v2, p6, v11

    .line 145
    .local v2, "angleMiddle":F
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/PointF;->x:F

    add-float v12, p6, p7

    const v13, 0x3c8efa35

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, p2

    add-float v3, v11, v12

    .line 146
    .local v3, "arcEndPointX":F
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/PointF;->y:F

    add-float v12, p6, p7

    const v13, 0x3c8efa35

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, p2

    add-float v4, v11, v12

    .line 149
    .local v4, "arcEndPointY":F
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/PointF;->x:F

    const v12, 0x3c8efa35

    mul-float/2addr v12, v2

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, p2

    add-float v5, v11, v12

    .line 150
    .local v5, "arcMidPointX":F
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/PointF;->y:F

    const v12, 0x3c8efa35

    mul-float/2addr v12, v2

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, p2

    add-float v6, v11, v12

    .line 153
    .local v6, "arcMidPointY":F
    sub-float v11, v3, p4

    float-to-double v12, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-float v11, v4, p5

    float-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 160
    .local v8, "basePointsDistance":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v8, v12

    const-wide v14, 0x4066800000000000L    # 180.0

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    const-wide v16, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v7, v12

    .line 164
    .local v7, "containedTriangleHeight":F
    sub-float v10, p2, v7

    .line 167
    .local v10, "spacedRadius":F
    float-to-double v12, v10

    add-float v11, v3, p4

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v11, v14

    sub-float v11, v5, v11

    float-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-float v11, v4, p5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v11, v11, v16

    sub-float v11, v6, v11

    float-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    double-to-float v10, v12

    .line 171
    return v10
.end method

.method protected drawCenterText(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 512
    .local v3, "centerText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawCenterTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v13

    .line 516
    .local v13, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float v15, v2, v4

    .line 520
    .local v15, "innerRadius":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v14, v2, v4

    .line 521
    .local v14, "holeRect":Landroid/graphics/RectF;
    iget v2, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v15

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 522
    iget v2, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v15

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 523
    iget v2, v13, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v15

    iput v2, v14, Landroid/graphics/RectF;->right:F

    .line 524
    iget v2, v13, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v15

    iput v2, v14, Landroid/graphics/RectF;->bottom:F

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v12, v2, v4

    .line 526
    .local v12, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v12, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextRadiusPercent()F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v18, v2, v4

    .line 529
    .local v18, "radiusPercent":F
    move/from16 v0, v18

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    .line 530
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, v18

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v18

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v12, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 536
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v12, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 539
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 540
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v19

    .line 545
    .local v19, "width":F
    new-instance v2, Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v19

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v7, v8

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    .line 552
    .end local v19    # "width":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 554
    .local v16, "layoutHeight":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 555
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v2, v4, :cond_3

    .line 556
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 557
    .local v17, "path":Landroid/graphics/Path;
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 558
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 561
    .end local v17    # "path":Landroid/graphics/Path;
    :cond_3
    iget v2, v12, Landroid/graphics/RectF;->left:F

    iget v4, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v5, v5, v16

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 566
    .end local v12    # "boundingRect":Landroid/graphics/RectF;
    .end local v13    # "center":Landroid/graphics/PointF;
    .end local v14    # "holeRect":Landroid/graphics/RectF;
    .end local v15    # "innerRadius":F
    .end local v16    # "layoutHeight":F
    .end local v18    # "radiusPercent":F
    :cond_4
    return-void

    .line 516
    .restart local v13    # "center":Landroid/graphics/PointF;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v15

    goto/16 :goto_0
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 104
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v5

    float-to-int v4, v5

    .line 105
    .local v4, "width":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v5

    float-to-int v0, v5

    .line 107
    .local v0, "height":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 111
    :cond_0
    if-lez v4, :cond_3

    if-lez v0, :cond_3

    .line 113
    new-instance v5, Ljava/lang/ref/WeakReference;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 114
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 119
    :cond_1
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 121
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieData;

    .line 123
    .local v2, "pieData":Lcom/github/mikephil/charting/data/PieData;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 125
    .local v3, "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 126
    invoke-virtual {p0, p1, v3}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    goto :goto_0

    .line 128
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pieData":Lcom/github/mikephil/charting/data/PieData;
    .end local v3    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    :cond_3
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V
    .locals 42
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .prologue
    .line 176
    const/4 v13, 0x0

    .line 177
    .local v13, "angle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v28

    .line 179
    .local v28, "rotationAngle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v26

    .line 180
    .local v26, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v27

    .line 182
    .local v27, "phaseY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v17

    .line 184
    .local v17, "circleBox":Landroid/graphics/RectF;
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v22

    .line 185
    .local v22, "entryCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v18

    .line 186
    .local v18, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v5

    .line 187
    .local v5, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    .line 188
    .local v6, "radius":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v19, 0x1

    .line 189
    .local v19, "drawInnerArc":Z
    :goto_0
    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v4, v7

    mul-float v36, v6, v4

    .line 193
    .local v36, "userInnerRadius":F
    :goto_1
    const/16 v37, 0x0

    .line 194
    .local v37, "visibleAngleCount":I
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 196
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    const-wide v40, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v4, v38, v40

    if-lez v4, :cond_0

    .line 197
    add-int/lit8 v37, v37, 0x1

    .line 194
    :cond_0
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 188
    .end local v19    # "drawInnerArc":Z
    .end local v24    # "j":I
    .end local v36    # "userInnerRadius":F
    .end local v37    # "visibleAngleCount":I
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 189
    .restart local v19    # "drawInnerArc":Z
    :cond_2
    const/16 v36, 0x0

    goto :goto_1

    .line 201
    .restart local v24    # "j":I
    .restart local v36    # "userInnerRadius":F
    .restart local v37    # "visibleAngleCount":I
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v37

    if-gt v0, v4, :cond_c

    const/16 v30, 0x0

    .line 203
    .local v30, "sliceSpace":F
    :goto_3
    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    .line 205
    aget v29, v18, v24

    .line 206
    .local v29, "sliceAngle":F
    move/from16 v23, v36

    .line 208
    .local v23, "innerRadius":F
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v20

    .line 211
    .local v20, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    const-wide v40, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v4, v38, v40

    if-lez v4, :cond_b

    .line 213
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/PieData;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/data/PieData;->getIndexOfDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)I

    move-result v4

    move/from16 v0, v38

    invoke-virtual {v7, v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->needsHighlight(II)Z

    move-result v4

    if-nez v4, :cond_b

    .line 216
    const/4 v4, 0x0

    cmpl-float v4, v30, v4

    if-lez v4, :cond_d

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v29, v4

    if-gtz v4, :cond_d

    const/4 v12, 0x1

    .line 218
    .local v12, "accountForSliceSpacing":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_e

    const/16 v32, 0x0

    .line 223
    .local v32, "sliceSpaceAngleOuter":F
    :goto_6
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v32, v4

    add-float/2addr v4, v13

    mul-float v4, v4, v27

    add-float v10, v28, v4

    .line 224
    .local v10, "startAngleOuter":F
    sub-float v4, v29, v32

    mul-float v11, v4, v27

    .line 225
    .local v11, "sweepAngleOuter":F
    const/4 v4, 0x0

    cmpg-float v4, v11, v4

    if-gez v4, :cond_4

    .line 227
    const/4 v11, 0x0

    .line 230
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 232
    const/4 v8, 0x0

    .local v8, "arcStartPointX":F
    const/4 v9, 0x0

    .line 234
    .local v9, "arcStartPointY":F
    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_f

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    sget-object v39, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v7, v0, v6, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 252
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    sub-float v7, v7, v23

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    sub-float v38, v38, v23

    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v39, v0

    add-float v39, v39, v23

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v40, v0

    add-float v40, v40, v23

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    if-eqz v19, :cond_12

    const/4 v4, 0x0

    cmpl-float v4, v23, v4

    if-gtz v4, :cond_5

    if-eqz v12, :cond_12

    .line 261
    :cond_5
    if-eqz v12, :cond_7

    .line 262
    mul-float v7, v29, v27

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Landroid/graphics/PointF;FFFFFF)F

    move-result v25

    .line 270
    .local v25, "minSpacedRadius":F
    const/4 v4, 0x0

    cmpg-float v4, v25, v4

    if-gez v4, :cond_6

    .line 271
    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    .line 273
    :cond_6
    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 276
    .end local v25    # "minSpacedRadius":F
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v37

    if-eq v0, v4, :cond_8

    const/4 v4, 0x0

    cmpl-float v4, v23, v4

    if-nez v4, :cond_10

    :cond_8
    const/16 v31, 0x0

    .line 279
    .local v31, "sliceSpaceAngleInner":F
    :goto_8
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v31, v4

    add-float/2addr v4, v13

    mul-float v4, v4, v27

    add-float v34, v28, v4

    .line 280
    .local v34, "startAngleInner":F
    sub-float v4, v29, v31

    mul-float v35, v4, v27

    .line 281
    .local v35, "sweepAngleInner":F
    const/4 v4, 0x0

    cmpg-float v4, v35, v4

    if-gez v4, :cond_9

    .line 283
    const/16 v35, 0x0

    .line 285
    :cond_9
    add-float v21, v34, v35

    .line 287
    .local v21, "endAngleInner":F
    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_11

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    sget-object v39, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v0, v38

    move/from16 v1, v23

    move-object/from16 v2, v39

    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 338
    .end local v21    # "endAngleInner":F
    .end local v31    # "sliceSpaceAngleInner":F
    .end local v34    # "startAngleInner":F
    .end local v35    # "sweepAngleInner":F
    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 344
    .end local v8    # "arcStartPointX":F
    .end local v9    # "arcStartPointY":F
    .end local v10    # "startAngleOuter":F
    .end local v11    # "sweepAngleOuter":F
    .end local v12    # "accountForSliceSpacing":Z
    .end local v32    # "sliceSpaceAngleOuter":F
    :cond_b
    mul-float v4, v29, v26

    add-float/2addr v13, v4

    .line 203
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 201
    .end local v20    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v23    # "innerRadius":F
    .end local v29    # "sliceAngle":F
    .end local v30    # "sliceSpace":F
    :cond_c
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v30

    goto/16 :goto_3

    .line 216
    .restart local v20    # "e":Lcom/github/mikephil/charting/data/Entry;
    .restart local v23    # "innerRadius":F
    .restart local v29    # "sliceAngle":F
    .restart local v30    # "sliceSpace":F
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 220
    .restart local v12    # "accountForSliceSpacing":Z
    :cond_e
    const v4, 0x3c8efa35

    mul-float/2addr v4, v6

    div-float v32, v30, v4

    goto/16 :goto_6

    .line 239
    .restart local v8    # "arcStartPointX":F
    .restart local v9    # "arcStartPointY":F
    .restart local v10    # "startAngleOuter":F
    .restart local v11    # "sweepAngleOuter":F
    .restart local v32    # "sliceSpaceAngleOuter":F
    :cond_f
    iget v4, v5, Landroid/graphics/PointF;->x:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v10

    float-to-double v0, v7

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v7, v0

    mul-float/2addr v7, v6

    add-float v8, v4, v7

    .line 240
    iget v4, v5, Landroid/graphics/PointF;->y:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v10

    float-to-double v0, v7

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v7, v0

    mul-float/2addr v7, v6

    add-float v9, v4, v7

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_7

    .line 276
    :cond_10
    const v4, 0x3c8efa35

    mul-float v4, v4, v23

    div-float v31, v30, v4

    goto/16 :goto_8

    .line 292
    .restart local v21    # "endAngleInner":F
    .restart local v31    # "sliceSpaceAngleInner":F
    .restart local v34    # "startAngleInner":F
    .restart local v35    # "sweepAngleInner":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    const v38, 0x3c8efa35

    mul-float v38, v38, v21

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v23

    add-float v7, v7, v38

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    const v39, 0x3c8efa35

    mul-float v39, v39, v21

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v23

    add-float v38, v38, v39

    move/from16 v0, v38

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v21

    move/from16 v1, v38

    invoke-virtual {v4, v7, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_9

    .line 305
    .end local v21    # "endAngleInner":F
    .end local v31    # "sliceSpaceAngleInner":F
    .end local v34    # "startAngleInner":F
    .end local v35    # "sweepAngleInner":F
    :cond_12
    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_a

    .line 306
    if-eqz v12, :cond_13

    .line 308
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v11, v4

    add-float v14, v10, v4

    .line 310
    .local v14, "angleMiddle":F
    mul-float v7, v29, v27

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Landroid/graphics/PointF;FFFFFF)F

    move-result v33

    .line 320
    .local v33, "sliceSpaceOffset":F
    iget v4, v5, Landroid/graphics/PointF;->x:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v14

    float-to-double v0, v7

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v7, v0

    mul-float v7, v7, v33

    add-float v15, v4, v7

    .line 322
    .local v15, "arcEndPointX":F
    iget v4, v5, Landroid/graphics/PointF;->y:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v14

    float-to-double v0, v7

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v7, v0

    mul-float v7, v7, v33

    add-float v16, v4, v7

    .line 325
    .local v16, "arcEndPointY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 330
    .end local v14    # "angleMiddle":F
    .end local v15    # "arcEndPointX":F
    .end local v16    # "arcEndPointY":F
    .end local v33    # "sliceSpaceOffset":F
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v38, v0

    move/from16 v0, v38

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 346
    .end local v8    # "arcStartPointX":F
    .end local v9    # "arcStartPointY":F
    .end local v10    # "startAngleOuter":F
    .end local v11    # "sweepAngleOuter":F
    .end local v12    # "accountForSliceSpacing":Z
    .end local v20    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v23    # "innerRadius":F
    .end local v29    # "sliceAngle":F
    .end local v32    # "sliceSpaceAngleOuter":F
    :cond_14
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawHole(Landroid/graphics/Canvas;)V

    .line 458
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 459
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawCenterText(Landroid/graphics/Canvas;)V

    .line 460
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 48
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v28

    .line 572
    .local v28, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v29

    .line 575
    .local v29, "phaseY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v30

    .line 577
    .local v30, "rotationAngle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v18

    .line 578
    .local v18, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v12

    .line 579
    .local v12, "absoluteAngles":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v5

    .line 580
    .local v5, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    .line 581
    .local v6, "radius":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v19, 0x1

    .line 582
    .local v19, "drawInnerArc":Z
    :goto_0
    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v4, v7

    mul-float v43, v6, v4

    .line 586
    .local v43, "userInnerRadius":F
    :goto_1
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    .line 588
    .local v22, "highlightedCircleBox":Landroid/graphics/RectF;
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_2
    move-object/from16 v0, p2

    array-length v4, v0

    move/from16 v0, v24

    if-ge v0, v4, :cond_19

    .line 591
    aget-object v4, p2, v24

    invoke-virtual {v4}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v45

    .line 592
    .local v45, "xIndex":I
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v45

    if-lt v0, v4, :cond_3

    .line 588
    :cond_0
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 581
    .end local v19    # "drawInnerArc":Z
    .end local v22    # "highlightedCircleBox":Landroid/graphics/RectF;
    .end local v24    # "i":I
    .end local v43    # "userInnerRadius":F
    .end local v45    # "xIndex":I
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 582
    .restart local v19    # "drawInnerArc":Z
    :cond_2
    const/16 v43, 0x0

    goto :goto_1

    .line 595
    .restart local v22    # "highlightedCircleBox":Landroid/graphics/RectF;
    .restart local v24    # "i":I
    .restart local v43    # "userInnerRadius":F
    .restart local v45    # "xIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/PieData;

    aget-object v7, p2, v24

    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v31

    .line 599
    .local v31, "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    if-eqz v31, :cond_0

    invoke-interface/range {v31 .. v31}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isHighlightEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 602
    invoke-interface/range {v31 .. v31}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v21

    .line 603
    .local v21, "entryCount":I
    const/16 v44, 0x0

    .line 604
    .local v44, "visibleAngleCount":I
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 606
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v8, v4

    const-wide v46, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v4, v8, v46

    if-lez v4, :cond_4

    .line 607
    add-int/lit8 v44, v44, 0x1

    .line 604
    :cond_4
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 611
    :cond_5
    if-nez v45, :cond_f

    .line 612
    const/4 v14, 0x0

    .line 616
    .local v14, "angle":F
    :goto_5
    const/4 v4, 0x1

    move/from16 v0, v44

    if-gt v0, v4, :cond_10

    const/16 v34, 0x0

    .line 618
    .local v34, "sliceSpace":F
    :goto_6
    aget v33, v18, v45

    .line 619
    .local v33, "sliceAngle":F
    move/from16 v25, v43

    .line 621
    .local v25, "innerRadius":F
    invoke-interface/range {v31 .. v31}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSelectionShift()F

    move-result v32

    .line 622
    .local v32, "shift":F
    add-float v23, v6, v32

    .line 623
    .local v23, "highlightedRadius":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 624
    move/from16 v0, v32

    neg-float v4, v0

    move/from16 v0, v32

    neg-float v7, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 626
    const/4 v4, 0x0

    cmpl-float v4, v34, v4

    if-lez v4, :cond_11

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v33, v4

    if-gtz v4, :cond_11

    const/4 v13, 0x1

    .line 628
    .local v13, "accountForSliceSpacing":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v31

    move/from16 v1, v45

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 630
    const/4 v4, 0x1

    move/from16 v0, v44

    if-ne v0, v4, :cond_12

    const/16 v36, 0x0

    .line 634
    .local v36, "sliceSpaceAngleOuter":F
    :goto_8
    const/4 v4, 0x1

    move/from16 v0, v44

    if-ne v0, v4, :cond_13

    const/16 v37, 0x0

    .line 638
    .local v37, "sliceSpaceAngleShifted":F
    :goto_9
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v36, v4

    add-float/2addr v4, v14

    mul-float v4, v4, v29

    add-float v10, v30, v4

    .line 639
    .local v10, "startAngleOuter":F
    sub-float v4, v33, v36

    mul-float v11, v4, v29

    .line 640
    .local v11, "sweepAngleOuter":F
    const/4 v4, 0x0

    cmpg-float v4, v11, v4

    if-gez v4, :cond_6

    .line 642
    const/4 v11, 0x0

    .line 645
    :cond_6
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v37, v4

    add-float/2addr v4, v14

    mul-float v4, v4, v29

    add-float v40, v30, v4

    .line 646
    .local v40, "startAngleShifted":F
    sub-float v4, v33, v37

    mul-float v42, v4, v29

    .line 647
    .local v42, "sweepAngleShifted":F
    const/4 v4, 0x0

    cmpg-float v4, v42, v4

    if-gez v4, :cond_7

    .line 649
    const/16 v42, 0x0

    .line 652
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 654
    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_14

    .line 656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v23

    invoke-virtual {v4, v7, v8, v0, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 670
    :goto_a
    const/16 v38, 0x0

    .line 671
    .local v38, "sliceSpaceRadius":F
    if-eqz v13, :cond_8

    .line 672
    mul-float v7, v33, v29

    iget v4, v5, Landroid/graphics/PointF;->x:F

    const v8, 0x3c8efa35

    mul-float/2addr v8, v10

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v4

    iget v4, v5, Landroid/graphics/PointF;->y:F

    const v9, 0x3c8efa35

    mul-float/2addr v9, v10

    float-to-double v0, v9

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v9, v0

    mul-float/2addr v9, v6

    add-float/2addr v9, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Landroid/graphics/PointF;FFFFFF)F

    move-result v38

    .line 683
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    sub-float v7, v7, v25

    iget v8, v5, Landroid/graphics/PointF;->y:F

    sub-float v8, v8, v25

    iget v9, v5, Landroid/graphics/PointF;->x:F

    add-float v9, v9, v25

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v46, v0

    add-float v46, v46, v25

    move/from16 v0, v46

    invoke-virtual {v4, v7, v8, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 689
    if-eqz v19, :cond_17

    const/4 v4, 0x0

    cmpl-float v4, v25, v4

    if-gtz v4, :cond_9

    if-eqz v13, :cond_17

    .line 692
    :cond_9
    if-eqz v13, :cond_b

    .line 693
    move/from16 v27, v38

    .line 695
    .local v27, "minSpacedRadius":F
    const/4 v4, 0x0

    cmpg-float v4, v27, v4

    if-gez v4, :cond_a

    .line 696
    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    .line 698
    :cond_a
    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 701
    .end local v27    # "minSpacedRadius":F
    :cond_b
    const/4 v4, 0x1

    move/from16 v0, v44

    if-eq v0, v4, :cond_c

    const/4 v4, 0x0

    cmpl-float v4, v25, v4

    if-nez v4, :cond_15

    :cond_c
    const/16 v35, 0x0

    .line 704
    .local v35, "sliceSpaceAngleInner":F
    :goto_b
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v35, v4

    add-float/2addr v4, v14

    mul-float v4, v4, v29

    add-float v39, v30, v4

    .line 705
    .local v39, "startAngleInner":F
    sub-float v4, v33, v35

    mul-float v41, v4, v29

    .line 706
    .local v41, "sweepAngleInner":F
    const/4 v4, 0x0

    cmpg-float v4, v41, v4

    if-gez v4, :cond_d

    .line 708
    const/16 v41, 0x0

    .line 710
    :cond_d
    add-float v20, v39, v41

    .line 712
    .local v20, "endAngleInner":F
    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_16

    .line 714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v0, v25

    invoke-virtual {v4, v7, v8, v0, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 755
    .end local v20    # "endAngleInner":F
    .end local v35    # "sliceSpaceAngleInner":F
    .end local v39    # "startAngleInner":F
    .end local v41    # "sweepAngleInner":F
    :cond_e
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 757
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 614
    .end local v10    # "startAngleOuter":F
    .end local v11    # "sweepAngleOuter":F
    .end local v13    # "accountForSliceSpacing":Z
    .end local v14    # "angle":F
    .end local v23    # "highlightedRadius":F
    .end local v25    # "innerRadius":F
    .end local v32    # "shift":F
    .end local v33    # "sliceAngle":F
    .end local v34    # "sliceSpace":F
    .end local v36    # "sliceSpaceAngleOuter":F
    .end local v37    # "sliceSpaceAngleShifted":F
    .end local v38    # "sliceSpaceRadius":F
    .end local v40    # "startAngleShifted":F
    .end local v42    # "sweepAngleShifted":F
    :cond_f
    add-int/lit8 v4, v45, -0x1

    aget v4, v12, v4

    mul-float v14, v4, v28

    .restart local v14    # "angle":F
    goto/16 :goto_5

    .line 616
    :cond_10
    invoke-interface/range {v31 .. v31}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v34

    goto/16 :goto_6

    .line 626
    .restart local v23    # "highlightedRadius":F
    .restart local v25    # "innerRadius":F
    .restart local v32    # "shift":F
    .restart local v33    # "sliceAngle":F
    .restart local v34    # "sliceSpace":F
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 630
    .restart local v13    # "accountForSliceSpacing":Z
    :cond_12
    const v4, 0x3c8efa35

    mul-float/2addr v4, v6

    div-float v36, v34, v4

    goto/16 :goto_8

    .line 634
    .restart local v36    # "sliceSpaceAngleOuter":F
    :cond_13
    const v4, 0x3c8efa35

    mul-float v4, v4, v23

    div-float v37, v34, v4

    goto/16 :goto_9

    .line 659
    .restart local v10    # "startAngleOuter":F
    .restart local v11    # "sweepAngleOuter":F
    .restart local v37    # "sliceSpaceAngleShifted":F
    .restart local v40    # "startAngleShifted":F
    .restart local v42    # "sweepAngleShifted":F
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    const v8, 0x3c8efa35

    mul-float v8, v8, v40

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v23

    add-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    const v9, 0x3c8efa35

    mul-float v9, v9, v40

    float-to-double v0, v9

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v9, v0

    mul-float v9, v9, v23

    add-float/2addr v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, v22

    move/from16 v1, v40

    move/from16 v2, v42

    invoke-virtual {v4, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_a

    .line 701
    .restart local v38    # "sliceSpaceRadius":F
    :cond_15
    const v4, 0x3c8efa35

    mul-float v4, v4, v25

    div-float v35, v34, v4

    goto/16 :goto_b

    .line 717
    .restart local v20    # "endAngleInner":F
    .restart local v35    # "sliceSpaceAngleInner":F
    .restart local v39    # "startAngleInner":F
    .restart local v41    # "sweepAngleInner":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    const v8, 0x3c8efa35

    mul-float v8, v8, v20

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v25

    add-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    const v9, 0x3c8efa35

    mul-float v9, v9, v20

    float-to-double v0, v9

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v9, v0

    mul-float v9, v9, v25

    add-float/2addr v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    move/from16 v0, v41

    neg-float v8, v0

    move/from16 v0, v20

    invoke-virtual {v4, v7, v0, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_c

    .line 730
    .end local v20    # "endAngleInner":F
    .end local v35    # "sliceSpaceAngleInner":F
    .end local v39    # "startAngleInner":F
    .end local v41    # "sweepAngleInner":F
    :cond_17
    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v4, v11, v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_e

    .line 732
    if-eqz v13, :cond_18

    .line 733
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v11, v4

    add-float v15, v10, v4

    .line 735
    .local v15, "angleMiddle":F
    iget v4, v5, Landroid/graphics/PointF;->x:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v15

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float v7, v7, v38

    add-float v16, v4, v7

    .line 737
    .local v16, "arcEndPointX":F
    iget v4, v5, Landroid/graphics/PointF;->y:F

    const v7, 0x3c8efa35

    mul-float/2addr v7, v15

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float v7, v7, v38

    add-float v17, v4, v7

    .line 740
    .local v17, "arcEndPointY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 746
    .end local v15    # "angleMiddle":F
    .end local v16    # "arcEndPointX":F
    .end local v17    # "arcEndPointY":F
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 759
    .end local v10    # "startAngleOuter":F
    .end local v11    # "sweepAngleOuter":F
    .end local v13    # "accountForSliceSpacing":Z
    .end local v14    # "angle":F
    .end local v21    # "entryCount":I
    .end local v23    # "highlightedRadius":F
    .end local v25    # "innerRadius":F
    .end local v26    # "j":I
    .end local v31    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .end local v32    # "shift":F
    .end local v33    # "sliceAngle":F
    .end local v34    # "sliceSpace":F
    .end local v36    # "sliceSpaceAngleOuter":F
    .end local v37    # "sliceSpaceAngleShifted":F
    .end local v38    # "sliceSpaceRadius":F
    .end local v40    # "startAngleShifted":F
    .end local v42    # "sweepAngleShifted":F
    .end local v44    # "visibleAngleCount":I
    .end local v45    # "xIndex":I
    :cond_19
    return-void
.end method

.method protected drawHole(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    .line 470
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 472
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v3

    .line 473
    .local v3, "radius":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v5

    div-float/2addr v5, v9

    mul-float v2, v3, v5

    .line 474
    .local v2, "holeRadius":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v1

    .line 476
    .local v1, "center":Landroid/graphics/PointF;
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-lez v5, :cond_0

    .line 478
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 484
    :cond_0
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v5

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 487
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 488
    .local v0, "alpha":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v5

    div-float/2addr v5, v9

    mul-float v4, v3, v5

    .line 490
    .local v4, "secondHoleRadius":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    int-to-float v6, v0

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 493
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 494
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 495
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 496
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 499
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 502
    .end local v0    # "alpha":I
    .end local v1    # "center":Landroid/graphics/PointF;
    .end local v2    # "holeRadius":F
    .end local v3    # "radius":F
    .end local v4    # "secondHoleRadius":F
    :cond_1
    return-void
.end method

.method protected drawRoundedSlices(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 768
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v15

    if-nez v15, :cond_1

    .line 810
    :cond_0
    return-void

    .line 771
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v15

    check-cast v15, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v5

    .line 773
    .local v5, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 776
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    .line 777
    .local v9, "phaseX":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v10

    .line 779
    .local v10, "phaseY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v3

    .line 780
    .local v3, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v11

    .line 783
    .local v11, "r":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v15

    mul-float/2addr v15, v11

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    sub-float v15, v11, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v4, v15, v16

    .line 785
    .local v4, "circleRadius":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v6

    .line 786
    .local v6, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v2

    .line 788
    .local v2, "angle":F
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v15

    if-ge v8, v15, :cond_0

    .line 790
    aget v12, v6, v8

    .line 792
    .local v12, "sliceAngle":F
    invoke-interface {v5, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    .line 795
    .local v7, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v15, v16, v18

    if-lez v15, :cond_2

    .line 797
    sub-float v15, v11, v4

    float-to-double v0, v15

    move-wide/from16 v16, v0

    add-float v15, v2, v12

    mul-float/2addr v15, v10

    float-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget v15, v3, Landroid/graphics/PointF;->x:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v13, v0

    .line 800
    .local v13, "x":F
    sub-float v15, v11, v4

    float-to-double v0, v15

    move-wide/from16 v16, v0

    add-float v15, v2, v12

    mul-float/2addr v15, v10

    float-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget v15, v3, Landroid/graphics/PointF;->y:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v14, v0

    .line 804
    .local v14, "y":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v5, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    .line 805
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v14, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 808
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_2
    mul-float v15, v12, v9

    add-float/2addr v2, v15

    .line 788
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 44
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v21

    .line 354
    .local v21, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v37

    .line 355
    .local v37, "r":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v38

    .line 356
    .local v38, "rotationAngle":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v25

    .line 357
    .local v25, "drawAngles":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v19

    .line 359
    .local v19, "absoluteAngles":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v35

    .line 360
    .local v35, "phaseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v36

    .line 362
    .local v36, "phaseY":F
    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, v37, v2

    const v3, 0x40666666    # 3.6f

    mul-float v33, v2, v3

    .line 364
    .local v33, "off":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v37, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float v2, v37, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v33, v2, v3

    .line 368
    :cond_0
    sub-float v37, v37, v33

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v22

    check-cast v22, Lcom/github/mikephil/charting/data/PieData;

    .line 371
    .local v22, "data":Lcom/github/mikephil/charting/data/PieData;
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v24

    .line 373
    .local v24, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;>;"
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v43

    .line 375
    .local v43, "yValueSum":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSliceTextEnabled()Z

    move-result v26

    .line 378
    .local v26, "drawXVals":Z
    const/16 v42, 0x0

    .line 380
    .local v42, "xIndex":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_8

    .line 382
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 384
    .local v23, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawValuesEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v26, :cond_2

    .line 380
    :cond_1
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 388
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "Q"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    add-float v31, v2, v3

    .line 393
    .local v31, "lineHeight":F
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v28

    .line 395
    .local v28, "entryCount":I
    const/16 v30, 0x0

    .local v30, "j":I
    move/from16 v0, v28

    int-to-float v2, v0

    mul-float v2, v2, v35

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move/from16 v0, v28

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 396
    .local v32, "maxEntry":I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_1

    .line 398
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    .line 400
    .local v6, "entry":Lcom/github/mikephil/charting/data/Entry;
    if-nez v42, :cond_4

    .line 401
    const/16 v20, 0x0

    .line 405
    .local v20, "angle":F
    :goto_2
    aget v39, v25, v42

    .line 406
    .local v39, "sliceAngle":F
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v40

    .line 407
    .local v40, "sliceSpace":F
    const v2, 0x3c8efa35

    mul-float v2, v2, v37

    div-float v41, v40, v2

    .line 410
    .local v41, "sliceSpaceMiddleAngle":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v41, v2

    sub-float v2, v39, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v34, v2, v3

    .line 412
    .local v34, "offset":F
    add-float v20, v20, v34

    .line 415
    move/from16 v0, v37

    float-to-double v2, v0

    add-float v7, v38, v20

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v2, v10

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-double v10, v7

    add-double/2addr v2, v10

    double-to-float v8, v2

    .line 418
    .local v8, "x":F
    move/from16 v0, v37

    float-to-double v2, v0

    add-float v7, v38, v20

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v2, v10

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/PointF;->y:F

    float-to-double v10, v7

    add-double/2addr v2, v10

    double-to-float v9, v2

    .line 422
    .local v9, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isUsePercentValuesEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    div-float v2, v2, v43

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v5, v2, v3

    .line 425
    .local v5, "value":F
    :goto_3
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v4

    .line 427
    .local v4, "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawValuesEnabled()Z

    move-result v27

    .line 430
    .local v27, "drawYVals":Z
    if-eqz v26, :cond_6

    if-eqz v27, :cond_6

    .line 432
    const/4 v7, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 434
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getXValCount()I

    move-result v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_3

    .line 435
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getXVals()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v30

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-float v3, v9, v31

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 449
    :cond_3
    :goto_4
    add-int/lit8 v42, v42, 0x1

    .line 396
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 403
    .end local v4    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v5    # "value":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v20    # "angle":F
    .end local v27    # "drawYVals":Z
    .end local v34    # "offset":F
    .end local v39    # "sliceAngle":F
    .end local v40    # "sliceSpace":F
    .end local v41    # "sliceSpaceMiddleAngle":F
    :cond_4
    add-int/lit8 v2, v42, -0x1

    aget v2, v19, v2

    mul-float v20, v2, v35

    .restart local v20    # "angle":F
    goto/16 :goto_2

    .line 422
    .restart local v8    # "x":F
    .restart local v9    # "y":F
    .restart local v34    # "offset":F
    .restart local v39    # "sliceAngle":F
    .restart local v40    # "sliceSpace":F
    .restart local v41    # "sliceSpaceMiddleAngle":F
    :cond_5
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v5

    goto :goto_3

    .line 439
    .restart local v4    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .restart local v5    # "value":F
    .restart local v27    # "drawYVals":Z
    :cond_6
    if-eqz v26, :cond_7

    .line 440
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getXValCount()I

    move-result v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_3

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getXVals()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v30

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v31, v3

    add-float/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 444
    :cond_7
    if-eqz v27, :cond_3

    .line 446
    const/4 v15, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v31, v2

    add-float v17, v9, v2

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v4

    move v13, v5

    move-object v14, v6

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v18}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_4

    .line 452
    .end local v4    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v5    # "value":F
    .end local v6    # "entry":Lcom/github/mikephil/charting/data/Entry;
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v20    # "angle":F
    .end local v23    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .end local v27    # "drawYVals":Z
    .end local v28    # "entryCount":I
    .end local v30    # "j":I
    .end local v31    # "lineHeight":F
    .end local v32    # "maxEntry":I
    .end local v34    # "offset":F
    .end local v39    # "sliceAngle":F
    .end local v40    # "sliceSpace":F
    .end local v41    # "sliceSpaceMiddleAngle":F
    :cond_8
    return-void
.end method

.method public getPaintCenterText()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintHole()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintTransparentCircle()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public releaseBitmap()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 818
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 821
    :cond_0
    return-void
.end method

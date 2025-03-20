.class public Lcom/github/mikephil/charting/components/YAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "YAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/YAxis$AxisDependency;,
        Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    }
.end annotation


# instance fields
.field private mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field public mDecimals:I

.field private mDrawTopYLabelEntry:Z

.field protected mDrawZeroLine:Z

.field public mEntries:[F

.field public mEntryCount:I

.field protected mForceLabels:Z

.field protected mGranularity:F

.field protected mGranularityEnabled:Z

.field protected mInverted:Z

.field private mLabelCount:I

.field protected mMaxWidth:F

.field protected mMinWidth:F

.field private mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field protected mShowOnlyMinMax:Z

.field protected mSpacePercentBottom:F

.field protected mSpacePercentTop:F

.field protected mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

.field protected mZeroLineColor:I

.field protected mZeroLineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    .line 49
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 54
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    .line 59
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 64
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mForceLabels:Z

    .line 69
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    .line 74
    const v0, -0x777778

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    .line 79
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    .line 84
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 89
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 94
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 113
    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    .line 120
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    .line 128
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mGranularityEnabled:Z

    .line 133
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mGranularity:F

    .line 146
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 147
    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mYOffset:F

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 6
    .param p1, "position"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    .line 49
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 54
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    .line 59
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 64
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mForceLabels:Z

    .line 69
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    .line 74
    const v0, -0x777778

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    .line 79
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    .line 84
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 89
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 94
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 113
    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    .line 120
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    .line 128
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mGranularityEnabled:Z

    .line 133
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mGranularity:F

    .line 152
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 153
    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mYOffset:F

    .line 154
    return-void
.end method


# virtual methods
.method public calcMinMax(FF)V
    .locals 8
    .param p1, "dataMin"    # F
    .param p2, "dataMax"    # F

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 554
    iget-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:Z

    if-eqz v5, :cond_3

    iget v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    .line 555
    .local v2, "min":F
    :goto_0
    iget-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:Z

    if-eqz v5, :cond_4

    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    .line 558
    .local v1, "max":F
    :goto_1
    sub-float v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 561
    .local v3, "range":F
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_0

    .line 562
    add-float/2addr v1, v6

    .line 563
    sub-float/2addr v2, v6

    .line 567
    :cond_0
    iget-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:Z

    if-nez v5, :cond_1

    .line 569
    div-float v5, v3, v7

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getSpaceBottom()F

    move-result v6

    mul-float v0, v5, v6

    .line 570
    .local v0, "bottomSpace":F
    sub-float v5, v2, v0

    iput v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    .line 574
    .end local v0    # "bottomSpace":F
    :cond_1
    iget-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:Z

    if-nez v5, :cond_2

    .line 576
    div-float v5, v3, v7

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getSpaceTop()F

    move-result v6

    mul-float v4, v5, v6

    .line 577
    .local v4, "topSpace":F
    add-float v5, v1, v4

    iput v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    .line 581
    .end local v4    # "topSpace":F
    :cond_2
    iget v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget v6, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    .line 582
    return-void

    .end local v1    # "max":F
    .end local v2    # "min":F
    .end local v3    # "range":F
    :cond_3
    move v2, p1

    .line 554
    goto :goto_0

    .restart local v2    # "min":F
    :cond_4
    move v1, p2

    .line 555
    goto :goto_1
.end method

.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getFormattedLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 485
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 486
    :cond_0
    const-string/jumbo v0, ""

    .line 488
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getValueFormatter()Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    aget v1, v1, p1

    invoke-interface {v0, v1, p0}, Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/components/YAxis;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGranularity()F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mGranularity:F

    return v0
.end method

.method public getLabelCount()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    return v0
.end method

.method public getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-object v0
.end method

.method public getLongestLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 464
    const-string/jumbo v1, ""

    .line 466
    .local v1, "longest":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 467
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/components/YAxis;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 470
    move-object v1, v2

    .line 466
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getMaxWidth()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    return v0
.end method

.method public getRequiredHeightSpace(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 455
    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mTextSize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 457
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "label":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getYOffset()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public getRequiredWidthSpace(Landroid/graphics/Paint;)F
    .locals 8
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v7, 0x0

    .line 428
    iget v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mTextSize:F

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 430
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "label":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getXOffset()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 433
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getMinWidth()F

    move-result v2

    .line 434
    .local v2, "minWidth":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getMaxWidth()F

    move-result v1

    .line 436
    .local v1, "maxWidth":F
    cmpl-float v4, v2, v7

    if-lez v4, :cond_0

    .line 437
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    .line 439
    :cond_0
    cmpl-float v4, v1, v7

    if-lez v4, :cond_1

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_1

    .line 440
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    .line 442
    :cond_1
    float-to-double v4, v1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .end local v1    # "maxWidth":F
    :goto_0
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 444
    return v3

    .restart local v1    # "maxWidth":F
    :cond_2
    move v1, v3

    .line 442
    goto :goto_0
.end method

.method public getSpaceBottom()F
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    return v0
.end method

.method public getSpaceTop()F
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    return v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;

    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDecimals:I

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    return-object v0
.end method

.method public getZeroLineColor()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    return v0
.end method

.method public getZeroLineWidth()F
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    return v0
.end method

.method public isDrawTopYLabelEntryEnabled()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    return v0
.end method

.method public isDrawZeroLineEnabled()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    return v0
.end method

.method public isForceLabelsEnabled()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mForceLabels:Z

    return v0
.end method

.method public isGranularityEnabled()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mGranularityEnabled:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    return v0
.end method

.method public isShowOnlyMinMaxEnabled()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    return v0
.end method

.method public needsDefaultFormatter()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 525
    iget-object v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    if-nez v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    instance-of v1, v1, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    if-nez v1, :cond_0

    .line 530
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsOffset()Z
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v0, v1, :cond_0

    .line 540
    const/4 v0, 0x1

    .line 542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawTopYLabelEntry(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 253
    return-void
.end method

.method public setDrawZeroLine(Z)V
    .locals 0
    .param p1, "mDrawZeroLine"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    .line 392
    return-void
.end method

.method public setGranularity(F)V
    .locals 0
    .param p1, "granularity"    # F

    .prologue
    .line 217
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mGranularity:F

    .line 218
    return-void
.end method

.method public setGranularityEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mGranularityEnabled:Z

    .line 203
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 319
    return-void
.end method

.method public setLabelCount(IZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "force"    # Z

    .prologue
    .line 265
    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    .line 266
    const/16 p1, 0x19

    .line 267
    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 268
    const/4 p1, 0x2

    .line 270
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    .line 271
    iput-boolean p2, p0, Lcom/github/mikephil/charting/components/YAxis;->mForceLabels:Z

    .line 272
    return-void
.end method

.method public setMaxWidth(F)V
    .locals 0
    .param p1, "maxWidth"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    .line 188
    return-void
.end method

.method public setMinWidth(F)V
    .locals 0
    .param p1, "minWidth"    # F

    .prologue
    .line 172
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    .line 173
    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 234
    return-void
.end method

.method public setShowOnlyMinMax(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    .line 300
    return-void
.end method

.method public setSpaceBottom(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 368
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 369
    return-void
.end method

.method public setSpaceTop(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 350
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 351
    return-void
.end method

.method public setStartAtZero(Z)V
    .locals 1
    .param p1, "startAtZero"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinValue(F)V

    .line 342
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->resetAxisMinValue()V

    goto :goto_0
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;)V
    .locals 2
    .param p1, "f"    # Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;

    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDecimals:I

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    .line 504
    :goto_0
    return-void

    .line 503
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    goto :goto_0
.end method

.method public setZeroLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 404
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    .line 405
    return-void
.end method

.method public setZeroLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 417
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    .line 418
    return-void
.end method

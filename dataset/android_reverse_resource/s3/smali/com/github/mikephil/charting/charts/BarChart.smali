.class public Lcom/github/mikephil/charting/charts/BarChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "BarChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/BarData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;"
    }
.end annotation


# instance fields
.field private mDrawBarShadow:Z

.field private mDrawValueAboveBar:Z

.field private mFitBars:Z

.field protected mHighlightFullBarEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 37
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 39
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mFitBars:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 37
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 39
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mFitBars:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 37
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 39
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mFitBars:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 65
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mAutoScaleMinMaxEnabled:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->calcMinMax()V

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mFitBars:Z

    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getXMin()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v0

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getXMax()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->calculate(FF)V

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BarData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 76
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BarData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 78
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getXMin()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getXMax()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->calculate(FF)V

    goto :goto_0
.end method

.method public getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;
    .locals 1
    .param p1, "e"    # Lcom/github/mikephil/charting/data/BarEntry;

    .prologue
    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 109
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;Landroid/graphics/RectF;)V

    .line 111
    return-object v0
.end method

.method public getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;Landroid/graphics/RectF;)V
    .locals 12
    .param p1, "e"    # Lcom/github/mikephil/charting/data/BarEntry;
    .param p2, "outputRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 123
    move-object v2, p2

    .line 125
    .local v2, "bounds":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v9, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v9, p1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetForEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 127
    .local v5, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    if-nez v5, :cond_0

    .line 128
    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v8

    .line 133
    .local v8, "y":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v7

    .line 135
    .local v7, "x":F
    iget-object v9, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v9, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v0

    .line 137
    .local v0, "barWidth":F
    div-float v9, v0, v11

    sub-float v3, v7, v9

    .line 138
    .local v3, "left":F
    div-float v9, v0, v11

    add-float v4, v7, v9

    .line 139
    .local v4, "right":F
    cmpl-float v9, v8, v1

    if-ltz v9, :cond_2

    move v6, v8

    .line 140
    .local v6, "top":F
    :goto_1
    cmpg-float v9, v8, v1

    if-gtz v9, :cond_1

    move v1, v8

    .line 142
    .local v1, "bottom":F
    :cond_1
    invoke-virtual {v2, v3, v6, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    goto :goto_0

    .end local v1    # "bottom":F
    .end local v6    # "top":F
    :cond_2
    move v6, v1

    .line 139
    goto :goto_1
.end method

.method public getBarData()Lcom/github/mikephil/charting/data/BarData;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    return-object v0
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getHighlighter()Lcom/github/mikephil/charting/highlight/Highlighter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/mikephil/charting/highlight/Highlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    goto :goto_0
.end method

.method public groupBars(FFF)V
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "groupSpace"    # F
    .param p3, "barSpace"    # F

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need to set data for the chart before grouping bars."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/mikephil/charting/data/BarData;->groupBars(FFF)V

    .line 248
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->notifyDataSetChanged()V

    .line 250
    return-void
.end method

.method public highlightValue(FII)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "dataSetIndex"    # I
    .param p3, "stackIndex"    # I

    .prologue
    .line 213
    new-instance v0, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-direct {v0, p1, p2, p3}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FII)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    .line 214
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    .line 57
    new-instance v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 59
    new-instance v0, Lcom/github/mikephil/charting/highlight/BarHighlighter;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/highlight/BarHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 60
    return-void
.end method

.method public isDrawBarShadowEnabled()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    return v0
.end method

.method public isDrawValueAboveBarEnabled()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    return v0
.end method

.method public isHighlightFullBarEnabled()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    return v0
.end method

.method public setDrawBarShadow(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawBarShadow:Z

    .line 173
    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mDrawValueAboveBar:Z

    .line 154
    return-void
.end method

.method public setFitBars(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mFitBars:Z

    .line 230
    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->mHighlightFullBarEnabled:Z

    .line 194
    return-void
.end method

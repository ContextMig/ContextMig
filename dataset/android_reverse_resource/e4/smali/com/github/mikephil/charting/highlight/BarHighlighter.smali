.class public Lcom/github/mikephil/charting/highlight/BarHighlighter;
.super Lcom/github/mikephil/charting/highlight/ChartHighlighter;
.source "BarHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/highlight/ChartHighlighter",
        "<",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getBase(F)F
    .locals 9
    .param p1, "x"    # F

    .prologue
    const/4 v8, 0x0

    .line 165
    const/4 v6, 0x2

    new-array v2, v6, [F

    .line 166
    .local v2, "pts":[F
    aput p1, v2, v8

    .line 169
    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 170
    aget v5, v2, v8

    .line 172
    .local v5, "xVal":F
    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    .line 175
    .local v3, "setCount":I
    int-to-float v7, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    add-float/2addr v6, v7

    div-float v6, v5, v6

    float-to-int v4, v6

    .line 177
    .local v4, "steps":I
    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    int-to-float v7, v4

    mul-float v1, v6, v7

    .line 179
    .local v1, "groupSpaceSum":F
    sub-float v0, v5, v1

    .line 180
    .local v0, "baseNoSpace":F
    return v0
.end method

.method protected getClosestStackIndex([Lcom/github/mikephil/charting/highlight/Range;F)I
    .locals 8
    .param p1, "ranges"    # [Lcom/github/mikephil/charting/highlight/Range;
    .param p2, "value"    # F

    .prologue
    const/4 v6, 0x0

    .line 124
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    .line 138
    :cond_1
    :goto_0
    return v5

    .line 127
    :cond_2
    const/4 v5, 0x0

    .line 129
    .local v5, "stackIndex":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/github/mikephil/charting/highlight/Range;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 130
    .local v4, "range":Lcom/github/mikephil/charting/highlight/Range;
    invoke-virtual {v4, p2}, Lcom/github/mikephil/charting/highlight/Range;->contains(F)Z

    move-result v7

    if-nez v7, :cond_1

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v4    # "range":Lcom/github/mikephil/charting/highlight/Range;
    :cond_3
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 138
    .local v3, "length":I
    aget-object v7, p1, v3

    iget v7, v7, Lcom/github/mikephil/charting/highlight/Range;->to:F

    cmpl-float v7, p2, v7

    if-lez v7, :cond_4

    .end local v3    # "length":I
    :goto_2
    move v5, v3

    goto :goto_0

    .restart local v3    # "length":I
    :cond_4
    move v3, v6

    goto :goto_2
.end method

.method protected getDataSetIndex(IFF)I
    .locals 4
    .param p1, "xIndex"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 69
    iget-object v3, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v3, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->isGrouped()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    const/4 v1, 0x0

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getBase(F)F

    move-result v0

    .line 75
    .local v0, "baseNoSpace":F
    iget-object v3, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v3, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v2

    .line 76
    .local v2, "setCount":I
    float-to-int v3, v0

    rem-int v1, v3, v2

    .line 78
    .local v1, "dataSetIndex":I
    if-gez v1, :cond_2

    .line 79
    const/4 v1, 0x0

    goto :goto_0

    .line 80
    :cond_2
    if-lt v1, v2, :cond_0

    .line 81
    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method public getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    .line 20
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v2

    .line 22
    .local v2, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    if-nez v2, :cond_1

    .line 39
    .end local v2    # "h":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_0
    :goto_0
    return-object v2

    .line 26
    .restart local v2    # "h":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v1, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 28
    .local v3, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 32
    .local v0, "pts":[F
    aput p2, v0, v6

    .line 35
    iget-object v1, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v1, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 37
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v5

    aget v1, v0, v6

    float-to-double v6, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getStackedHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;IID)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v2

    goto :goto_0
.end method

.method protected getRanges(Lcom/github/mikephil/charting/data/BarEntry;)[Lcom/github/mikephil/charting/highlight/Range;
    .locals 8
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BarEntry;

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v5

    .line 193
    .local v5, "values":[F
    if-eqz v5, :cond_0

    array-length v6, v5

    if-nez v6, :cond_2

    .line 194
    :cond_0
    const/4 v6, 0x0

    new-array v3, v6, [Lcom/github/mikephil/charting/highlight/Range;

    .line 214
    :cond_1
    return-object v3

    .line 196
    :cond_2
    array-length v6, v5

    new-array v3, v6, [Lcom/github/mikephil/charting/highlight/Range;

    .line 198
    .local v3, "ranges":[Lcom/github/mikephil/charting/highlight/Range;
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v6

    neg-float v1, v6

    .line 199
    .local v1, "negRemain":F
    const/4 v2, 0x0

    .line 201
    .local v2, "posRemain":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 203
    aget v4, v5, v0

    .line 205
    .local v4, "value":F
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_3

    .line 206
    new-instance v6, Lcom/github/mikephil/charting/highlight/Range;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v7, v1

    invoke-direct {v6, v1, v7}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v6, v3, v0

    .line 207
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v1, v6

    .line 201
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_3
    new-instance v6, Lcom/github/mikephil/charting/highlight/Range;

    add-float v7, v2, v4

    invoke-direct {v6, v2, v7}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v6, v3, v0

    .line 210
    add-float/2addr v2, v4

    goto :goto_1
.end method

.method protected getStackedHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;IID)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 5
    .param p1, "old"    # Lcom/github/mikephil/charting/highlight/Highlight;
    .param p2, "set"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .param p3, "xIndex"    # I
    .param p4, "dataSetIndex"    # I
    .param p5, "yValue"    # D

    .prologue
    .line 100
    invoke-interface {p2, p3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 102
    .local v0, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v3

    if-nez v3, :cond_1

    .line 111
    .end local p1    # "old":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_0
    :goto_0
    return-object p1

    .line 105
    .restart local p1    # "old":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getRanges(Lcom/github/mikephil/charting/data/BarEntry;)[Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v1

    .line 106
    .local v1, "ranges":[Lcom/github/mikephil/charting/highlight/Range;
    double-to-float v3, p5

    invoke-virtual {p0, v1, v3}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getClosestStackIndex([Lcom/github/mikephil/charting/highlight/Range;F)I

    move-result v2

    .line 108
    .local v2, "stackIndex":I
    array-length v3, v1

    if-lez v3, :cond_2

    .line 109
    new-instance p1, Lcom/github/mikephil/charting/highlight/Highlight;

    .end local p1    # "old":Lcom/github/mikephil/charting/highlight/Highlight;
    aget-object v3, v1, v2

    invoke-direct {p1, p3, p4, v2, v3}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(IIILcom/github/mikephil/charting/highlight/Range;)V

    goto :goto_0

    .line 111
    .restart local p1    # "old":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected getXIndex(F)I
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 46
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarData;->isGrouped()Z

    move-result v4

    if-nez v4, :cond_1

    .line 47
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getXIndex(F)I

    move-result v3

    .line 62
    :cond_0
    :goto_0
    return v3

    .line 50
    :cond_1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getBase(F)F

    move-result v0

    .line 52
    .local v0, "baseNoSpace":F
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v1

    .line 53
    .local v1, "setCount":I
    float-to-int v4, v0

    div-int v3, v4, v1

    .line 55
    .local v3, "xIndex":I
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXValCount()I

    move-result v2

    .line 57
    .local v2, "valCount":I
    if-gez v3, :cond_2

    .line 58
    const/4 v3, 0x0

    goto :goto_0

    .line 59
    :cond_2
    if-lt v3, v2, :cond_0

    .line 60
    add-int/lit8 v3, v2, -0x1

    goto :goto_0
.end method

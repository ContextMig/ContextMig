.class public abstract Lcom/db/chart/view/BaseStackBarChartView;
.super Lcom/db/chart/view/BaseBarChartView;
.source "BaseStackBarChartView.java"


# instance fields
.field private mCalcMaxValue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/db/chart/view/BaseBarChartView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/view/BaseStackBarChartView;->mCalcMaxValue:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/db/chart/view/BaseBarChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/view/BaseStackBarChartView;->mCalcMaxValue:Z

    .line 44
    return-void
.end method

.method private calculateMaxStackBarValue()V
    .locals 13

    .prologue
    const/high16 v12, -0x40800000    # -1.0f

    .line 150
    const/4 v5, 0x0

    .line 151
    .local v5, "maxStackValue":I
    const/4 v6, 0x0

    .line 153
    .local v6, "minStackValue":I
    iget-object v10, p0, Lcom/db/chart/view/BaseStackBarChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 154
    .local v2, "dataSize":I
    iget-object v10, p0, Lcom/db/chart/view/BaseStackBarChartView;->data:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v10}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v9

    .line 156
    .local v9, "setSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_4

    .line 158
    const/4 v8, 0x0

    .line 159
    .local v8, "positiveStackValue":F
    const/4 v7, 0x0

    .line 160
    .local v7, "negativeStackValue":F
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 162
    iget-object v10, p0, Lcom/db/chart/view/BaseStackBarChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/chart/model/BarSet;

    .line 163
    .local v1, "barSet":Lcom/db/chart/model/BarSet;
    invoke-virtual {v1, v3}, Lcom/db/chart/model/BarSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/Bar;

    .line 165
    .local v0, "bar":Lcom/db/chart/model/Bar;
    invoke-virtual {v0}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v10

    add-float/2addr v8, v10

    .line 160
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {v0}, Lcom/db/chart/model/Bar;->getValue()F

    move-result v10

    add-float/2addr v7, v10

    goto :goto_2

    .line 171
    .end local v0    # "bar":Lcom/db/chart/model/Bar;
    .end local v1    # "barSet":Lcom/db/chart/model/BarSet;
    :cond_1
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    if-ge v5, v10, :cond_2

    .line 172
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    .line 173
    :cond_2
    mul-float v10, v7, v12

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    mul-int/lit8 v10, v10, -0x1

    if-le v6, v10, :cond_3

    .line 174
    mul-float v10, v7, v12

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    mul-int/lit8 v6, v10, -0x1

    .line 156
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    .end local v4    # "j":I
    .end local v7    # "negativeStackValue":F
    .end local v8    # "positiveStackValue":F
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/db/chart/view/BaseStackBarChartView;->getStep()I

    move-result v10

    rem-int v10, v5, v10

    if-eqz v10, :cond_5

    .line 178
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 179
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/db/chart/view/BaseStackBarChartView;->getStep()I

    move-result v10

    rem-int v10, v6, v10

    if-eqz v10, :cond_6

    .line 180
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 182
    :cond_6
    invoke-virtual {p0}, Lcom/db/chart/view/BaseStackBarChartView;->getStep()I

    move-result v10

    invoke-super {p0, v6, v5, v10}, Lcom/db/chart/view/BaseBarChartView;->setAxisBorderValues(III)Lcom/db/chart/view/ChartView;

    .line 183
    return-void
.end method

.method static discoverBottomSet(ILjava/util/ArrayList;)I
    .locals 5
    .param p0, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 81
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .line 82
    .local v1, "hasNegativeValues":Z
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 83
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v3, p0}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 84
    const/4 v1, 0x1

    .line 89
    :cond_0
    if-eqz v1, :cond_4

    .line 90
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 91
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v3, p0}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 100
    :cond_1
    return v2

    .line 82
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 95
    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_1

    .line 96
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v3, p0}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static discoverTopSet(ILjava/util/ArrayList;)I
    .locals 5
    .param p0, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    const/4 v4, 0x0

    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 117
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .line 118
    .local v1, "hasPositiveValues":Z
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 119
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v3, p0}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 120
    const/4 v1, 0x1

    .line 125
    :cond_0
    if-eqz v1, :cond_4

    .line 126
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 127
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v3, p0}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 135
    :cond_1
    return v2

    .line 118
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 130
    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_1

    .line 131
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v3, p0}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method calculateBarsWidth(IFF)V
    .locals 2
    .param p1, "nSets"    # I
    .param p2, "x0"    # F
    .param p3, "x1"    # F

    .prologue
    .line 64
    sub-float v0, p3, p2

    iget-object v1, p0, Lcom/db/chart/view/BaseStackBarChartView;->style:Lcom/db/chart/view/BaseBarChartView$Style;

    iget v1, v1, Lcom/db/chart/view/BaseBarChartView$Style;->barSpacing:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/db/chart/view/BaseStackBarChartView;->barWidth:F

    .line 65
    return-void
.end method

.method public setAxisBorderValues(III)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "step"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/chart/view/BaseStackBarChartView;->mCalcMaxValue:Z

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/db/chart/view/BaseBarChartView;->setAxisBorderValues(III)Lcom/db/chart/view/ChartView;

    move-result-object v0

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/db/chart/view/BaseStackBarChartView;->mCalcMaxValue:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/db/chart/view/BaseStackBarChartView;->calculateMaxStackBarValue()V

    .line 205
    :cond_0
    invoke-super {p0}, Lcom/db/chart/view/BaseBarChartView;->show()V

    .line 206
    return-void
.end method

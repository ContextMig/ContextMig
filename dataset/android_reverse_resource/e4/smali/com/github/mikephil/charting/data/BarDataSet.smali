.class public Lcom/github/mikephil/charting/data/BarDataSet;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;
.source "BarDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;"
    }
.end annotation


# instance fields
.field private mBarShadowColor:I

.field private mBarSpace:F

.field private mEntryCountStacks:I

.field private mHighLightAlpha:I

.field private mStackLabels:[Ljava/lang/String;

.field private mStackSize:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v3, 0x1

    const/16 v1, 0xd7

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 16
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarSpace:F

    .line 22
    iput v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    .line 27
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    .line 32
    const/16 v0, 0x78

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    .line 37
    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "Stack"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    .line 49
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightColor:I

    .line 51
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarDataSet;->calcStackSize(Ljava/util/List;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarDataSet;->calcEntryCountIncludingStacks(Ljava/util/List;)V

    .line 53
    return-void
.end method

.method private calcEntryCountIncludingStacks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v1

    .line 88
    .local v1, "vals":[F
    if-nez v1, :cond_0

    .line 89
    iget v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    .line 84
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iget v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    array-length v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    goto :goto_1

    .line 93
    .end local v1    # "vals":[F
    :cond_1
    return-void
.end method

.method private calcStackSize(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 103
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v1

    .line 105
    .local v1, "vals":[F
    if-eqz v1, :cond_0

    array-length v2, v1

    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    if-le v2, v3, :cond_0

    .line 106
    array-length v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "vals":[F
    :cond_1
    return-void
.end method


# virtual methods
.method public calcMinMax(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    .line 113
    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYVals:Ljava/util/List;

    if-nez v4, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 118
    .local v3, "yValCount":I
    if-eqz v3, :cond_0

    .line 123
    if-eqz p2, :cond_2

    if-lt p2, v3, :cond_5

    .line 124
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 128
    .local v1, "endValue":I
    :goto_1
    iput v7, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 129
    const v4, -0x800001

    iput v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    .line 131
    move v2, p1

    .local v2, "i":I
    :goto_2
    if-gt v2, v1, :cond_8

    .line 133
    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 135
    .local v0, "e":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 137
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v4

    if-nez v4, :cond_6

    .line 139
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 140
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 142
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 143
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    .line 131
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 126
    .end local v0    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v1    # "endValue":I
    .end local v2    # "i":I
    :cond_5
    move v1, p2

    .restart local v1    # "endValue":I
    goto :goto_1

    .line 146
    .restart local v0    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v4

    neg-float v4, v4

    iget v5, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    .line 147
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v4

    neg-float v4, v4

    iput v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 149
    :cond_7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 150
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    goto :goto_3

    .line 155
    .end local v0    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    :cond_8
    iget v4, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    .line 156
    iput v6, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 157
    iput v6, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    goto/16 :goto_0
.end method

.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->copy()Lcom/github/mikephil/charting/data/BarEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 65
    .local v0, "copied":Lcom/github/mikephil/charting/data/BarDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mColors:Ljava/util/List;

    .line 66
    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    iput v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    .line 67
    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarSpace:F

    iput v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarSpace:F

    .line 68
    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    .line 69
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    .line 70
    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightColor:I

    .line 71
    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    iput v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    .line 73
    return-object v0
.end method

.method public getBarShadowColor()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    return v0
.end method

.method public getBarSpace()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarSpace:F

    return v0
.end method

.method public getBarSpacePercent()F
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarSpace:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getEntryCountStacks()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    return v0
.end method

.method public getHighLightAlpha()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    return v0
.end method

.method public getStackLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getStackSize()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    return v0
.end method

.method public isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 168
    iget v1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBarShadowColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    .line 213
    return-void
.end method

.method public setBarSpacePercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 201
    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarSpace:F

    .line 202
    return-void
.end method

.method public setHighLightAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    .line 228
    return-void
.end method

.method public setStackLabels([Ljava/lang/String;)V
    .locals 0
    .param p1, "labels"    # [Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    .line 242
    return-void
.end method

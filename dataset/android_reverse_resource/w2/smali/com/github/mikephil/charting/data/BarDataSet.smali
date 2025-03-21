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
.field private mBarBorderColor:I

.field private mBarBorderWidth:F

.field private mBarShadowColor:I

.field private mEntryCountStacks:I

.field private mHighLightAlpha:I

.field private mStackLabels:[Ljava/lang/String;

.field private mStackSize:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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
    const/4 v1, 0x1

    const/16 v0, 0xd7

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 17
    iput v1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    .line 22
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarBorderWidth:F

    .line 26
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarBorderColor:I

    .line 31
    const/16 v0, 0x78

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    .line 36
    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    .line 41
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "Stack"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    .line 48
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightColor:I

    .line 50
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarDataSet;->calcStackSize(Ljava/util/List;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarDataSet;->calcEntryCountIncludingStacks(Ljava/util/List;)V

    .line 52
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
    .line 81
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v1

    .line 87
    .local v1, "vals":[F
    if-nez v1, :cond_0

    .line 88
    iget v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    .line 83
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    array-length v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    goto :goto_1

    .line 92
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
    .line 100
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 102
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v1

    .line 104
    .local v1, "vals":[F
    if-eqz v1, :cond_0

    array-length v2, v1

    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    if-le v2, v3, :cond_0

    .line 105
    array-length v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "vals":[F
    :cond_1
    return-void
.end method


# virtual methods
.method public calcMinMax()V
    .locals 4

    .prologue
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v2, -0x800001

    .line 112
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mValues:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    return-void

    .line 115
    :cond_1
    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    .line 116
    iput v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 117
    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mXMax:F

    .line 118
    iput v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mXMin:F

    .line 120
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 122
    .local v0, "e":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v2

    if-nez v2, :cond_6

    .line 126
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 127
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 129
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 130
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    .line 140
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mXMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 141
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mXMin:F

    .line 143
    :cond_5
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mXMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 144
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mXMax:F

    goto :goto_0

    .line 133
    :cond_6
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v2

    neg-float v2, v2

    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 134
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v2

    neg-float v2, v2

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMin:F

    .line 136
    :cond_7
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 137
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mYMax:F

    goto :goto_1
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
    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mValues:Ljava/util/List;

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
    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    .line 68
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    .line 69
    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightColor:I

    .line 70
    iget v3, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    iput v3, v0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    .line 72
    return-object v0
.end method

.method public getBarBorderColor()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarBorderColor:I

    return v0
.end method

.method public getBarBorderWidth()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarBorderWidth:F

    return v0
.end method

.method public getBarShadowColor()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    return v0
.end method

.method public getEntryCountStacks()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mEntryCountStacks:I

    return v0
.end method

.method public getHighLightAlpha()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    return v0
.end method

.method public getStackLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getStackSize()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    return v0
.end method

.method public isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 156
    iget v1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackSize:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBarBorderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarBorderColor:I

    .line 213
    return-void
.end method

.method public setBarBorderWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 192
    iput p1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarBorderWidth:F

    .line 193
    return-void
.end method

.method public setBarShadowColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mBarShadowColor:I

    .line 178
    return-void
.end method

.method public setHighLightAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mHighLightAlpha:I

    .line 233
    return-void
.end method

.method public setStackLabels([Ljava/lang/String;)V
    .locals 0
    .param p1, "labels"    # [Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarDataSet;->mStackLabels:[Ljava/lang/String;

    .line 247
    return-void
.end method

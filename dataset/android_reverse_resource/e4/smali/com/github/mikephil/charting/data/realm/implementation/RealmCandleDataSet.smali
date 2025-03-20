.class public Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;
.super Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;
.source "RealmCandleDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        ">",
        "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet",
        "<TT;",
        "Lcom/github/mikephil/charting/data/CandleEntry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;"
    }
.end annotation


# instance fields
.field private mBarSpace:F

.field private mCloseField:Ljava/lang/String;

.field protected mDecreasingColor:I

.field protected mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

.field private mHighField:Ljava/lang/String;

.field protected mIncreasingColor:I

.field protected mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

.field private mLowField:Ljava/lang/String;

.field protected mNeutralColor:I

.field private mOpenField:Ljava/lang/String;

.field protected mShadowColor:I

.field private mShadowColorSameAsCandle:Z

.field private mShadowWidth:F

.field private mShowCandleBar:Z


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "highField"    # Ljava/lang/String;
    .param p3, "lowField"    # Ljava/lang/String;
    .param p4, "openField"    # Ljava/lang/String;
    .param p5, "closeField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v2, 0x0

    const v1, 0x112233

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    .line 28
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowWidth:F

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShowCandleBar:Z

    .line 41
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mBarSpace:F

    .line 46
    iput-boolean v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowColorSameAsCandle:Z

    .line 52
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 58
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 63
    iput v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mNeutralColor:I

    .line 68
    iput v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mIncreasingColor:I

    .line 73
    iput v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mDecreasingColor:I

    .line 79
    iput v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowColor:I

    .line 92
    iput-object p2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mHighField:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mLowField:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mOpenField:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mCloseField:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->build(Lio/realm/RealmResults;)V

    .line 98
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->calcMinMax(II)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "highField"    # Ljava/lang/String;
    .param p3, "lowField"    # Ljava/lang/String;
    .param p4, "openField"    # Ljava/lang/String;
    .param p5, "closeField"    # Ljava/lang/String;
    .param p6, "xIndexField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v2, 0x0

    const v1, 0x112233

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p6}, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowWidth:F

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShowCandleBar:Z

    .line 41
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mBarSpace:F

    .line 46
    iput-boolean v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowColorSameAsCandle:Z

    .line 52
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 58
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 63
    iput v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mNeutralColor:I

    .line 68
    iput v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mIncreasingColor:I

    .line 73
    iput v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mDecreasingColor:I

    .line 79
    iput v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowColor:I

    .line 113
    iput-object p2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mHighField:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mLowField:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mOpenField:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mCloseField:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->build(Lio/realm/RealmResults;)V

    .line 119
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->calcMinMax(II)V

    .line 120
    return-void
.end method


# virtual methods
.method public build(Lio/realm/RealmResults;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mIndexField:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, "xIndex":I
    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/realm/RealmObject;

    .line 131
    .local v10, "object":Lio/realm/RealmObject;, "TT;"
    new-instance v8, Lio/realm/DynamicRealmObject;

    invoke-direct {v8, v10}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 132
    .local v8, "dynamicObject":Lio/realm/DynamicRealmObject;
    iget-object v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mValues:Ljava/util/List;

    new-instance v0, Lcom/github/mikephil/charting/data/CandleEntry;

    iget-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mHighField:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mLowField:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mOpenField:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mCloseField:Ljava/lang/String;

    invoke-virtual {v8, v5}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/github/mikephil/charting/data/CandleEntry;-><init>(IFFFF)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    goto :goto_0

    .line 138
    .end local v1    # "xIndex":I
    .end local v8    # "dynamicObject":Lio/realm/DynamicRealmObject;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "object":Lio/realm/RealmObject;, "TT;"
    :cond_0
    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/realm/RealmObject;

    .line 140
    .restart local v10    # "object":Lio/realm/RealmObject;, "TT;"
    new-instance v8, Lio/realm/DynamicRealmObject;

    invoke-direct {v8, v10}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 141
    .restart local v8    # "dynamicObject":Lio/realm/DynamicRealmObject;
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mValues:Ljava/util/List;

    new-instance v2, Lcom/github/mikephil/charting/data/CandleEntry;

    iget-object v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mIndexField:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lio/realm/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mHighField:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mLowField:Ljava/lang/String;

    invoke-virtual {v8, v5}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mOpenField:Ljava/lang/String;

    invoke-virtual {v8, v6}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mCloseField:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/github/mikephil/charting/data/CandleEntry;-><init>(IFFFF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    .end local v8    # "dynamicObject":Lio/realm/DynamicRealmObject;
    .end local v10    # "object":Lio/realm/RealmObject;, "TT;"
    :cond_1
    return-void
.end method

.method public calcMinMax(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 150
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget-object v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mValues:Ljava/util/List;

    if-nez v3, :cond_1

    .line 176
    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p2, v3, :cond_5

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 163
    .local v1, "endValue":I
    :goto_0
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iput v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mYMin:F

    .line 164
    const v3, -0x800001

    iput v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mYMax:F

    .line 166
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-gt v2, v1, :cond_0

    .line 168
    iget-object v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 170
    .local v0, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v3

    iget v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mYMin:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 171
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mYMin:F

    .line 173
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v3

    iget v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mYMax:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 174
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mYMax:F

    .line 166
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v0    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    .end local v1    # "endValue":I
    .end local v2    # "i":I
    :cond_5
    move v1, p2

    .restart local v1    # "endValue":I
    goto :goto_0
.end method

.method public getBarSpace()F
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mBarSpace:F

    return v0
.end method

.method public getDecreasingColor()I
    .locals 1

    .prologue
    .line 272
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mDecreasingColor:I

    return v0
.end method

.method public getDecreasingPaintStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 291
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getIncreasingColor()I
    .locals 1

    .prologue
    .line 257
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mIncreasingColor:I

    return v0
.end method

.method public getIncreasingPaintStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 277
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getNeutralColor()I
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mNeutralColor:I

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 305
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowColor:I

    return v0
.end method

.method public getShadowColorSameAsCandle()Z
    .locals 1

    .prologue
    .line 319
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowColorSameAsCandle:Z

    return v0
.end method

.method public getShadowWidth()F
    .locals 1

    .prologue
    .line 210
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowWidth:F

    return v0
.end method

.method public getShowCandleBar()Z
    .locals 1

    .prologue
    .line 224
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShowCandleBar:Z

    return v0
.end method

.method public setBarSpace(F)V
    .locals 1
    .param p1, "space"    # F

    .prologue
    .line 186
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 187
    const/4 p1, 0x0

    .line 188
    :cond_0
    const v0, 0x3ee66666    # 0.45f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 189
    const p1, 0x3ee66666    # 0.45f

    .line 191
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mBarSpace:F

    .line 192
    return-void
.end method

.method public setDecreasingColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 267
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mDecreasingColor:I

    .line 268
    return-void
.end method

.method public setDecreasingPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 0
    .param p1, "decreasingPaintStyle"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 300
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 301
    return-void
.end method

.method public setIncreasingColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 252
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mIncreasingColor:I

    .line 253
    return-void
.end method

.method public setIncreasingPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 0
    .param p1, "paintStyle"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 286
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 287
    return-void
.end method

.method public setNeutralColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 237
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mNeutralColor:I

    .line 238
    return-void
.end method

.method public setShadowColor(I)V
    .locals 0
    .param p1, "shadowColor"    # I

    .prologue
    .line 314
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowColor:I

    .line 315
    return-void
.end method

.method public setShadowColorSameAsCandle(Z)V
    .locals 0
    .param p1, "shadowColorSameAsCandle"    # Z

    .prologue
    .line 328
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowColorSameAsCandle:Z

    .line 329
    return-void
.end method

.method public setShadowWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 205
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShadowWidth:F

    .line 206
    return-void
.end method

.method public setShowCandleBar(Z)V
    .locals 0
    .param p1, "showCandleBar"    # Z

    .prologue
    .line 219
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmCandleDataSet;->mShowCandleBar:Z

    .line 220
    return-void
.end method

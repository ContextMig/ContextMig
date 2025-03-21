.class public Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;
.super Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet;
.source "RealmBubbleDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        ">",
        "Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet",
        "<TT;",
        "Lcom/github/mikephil/charting/data/BubbleEntry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;"
    }
.end annotation


# instance fields
.field private mHighlightCircleWidth:F

.field protected mMaxSize:F

.field private mSizeField:Ljava/lang/String;

.field protected mXMax:F

.field protected mXMin:F


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "yValuesField"    # Ljava/lang/String;
    .param p3, "sizeField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    .line 23
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mHighlightCircleWidth:F

    .line 34
    iput-object p3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mSizeField:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->build(Lio/realm/RealmResults;)V

    .line 37
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->calcMinMax(II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "yValuesField"    # Ljava/lang/String;
    .param p3, "xIndexField"    # Ljava/lang/String;
    .param p4, "sizeField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/realm/base/RealmBarLineScatterCandleBubbleDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mHighlightCircleWidth:F

    .line 50
    iput-object p4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mSizeField:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->build(Lio/realm/RealmResults;)V

    .line 53
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->calcMinMax(II)V

    .line 54
    return-void
.end method

.method private largestSize(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 166
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v0

    return v0
.end method

.method private xMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 162
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private xMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 158
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 154
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v0

    return v0
.end method

.method private yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 150
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v0

    return v0
.end method


# virtual methods
.method public build(Lio/realm/RealmResults;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mIndexField:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 61
    const/4 v3, 0x0

    .line 63
    .local v3, "xIndex":I
    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmObject;

    .line 65
    .local v2, "object":Lio/realm/RealmObject;, "TT;"
    new-instance v0, Lio/realm/DynamicRealmObject;

    invoke-direct {v0, v2}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 66
    .local v0, "dynamicObject":Lio/realm/DynamicRealmObject;
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValues:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/data/BubbleEntry;

    iget-object v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValuesField:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mSizeField:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-direct {v5, v3, v6, v7}, Lcom/github/mikephil/charting/data/BubbleEntry;-><init>(IFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_0

    .line 71
    .end local v0    # "dynamicObject":Lio/realm/DynamicRealmObject;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "object":Lio/realm/RealmObject;, "TT;"
    .end local v3    # "xIndex":I
    :cond_0
    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmObject;

    .line 73
    .restart local v2    # "object":Lio/realm/RealmObject;, "TT;"
    new-instance v0, Lio/realm/DynamicRealmObject;

    invoke-direct {v0, v2}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 74
    .restart local v0    # "dynamicObject":Lio/realm/DynamicRealmObject;
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValues:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/data/BubbleEntry;

    iget-object v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mIndexField:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lio/realm/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValuesField:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v7

    iget-object v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mSizeField:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/github/mikephil/charting/data/BubbleEntry;-><init>(IFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v0    # "dynamicObject":Lio/realm/DynamicRealmObject;
    .end local v2    # "object":Lio/realm/RealmObject;, "TT;"
    :cond_1
    return-void
.end method

.method public calcMinMax(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 82
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    iget-object v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValues:Ljava/util/List;

    if-nez v8, :cond_1

    .line 132
    :cond_0
    return-void

    .line 85
    :cond_1
    iget-object v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValues:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 90
    if-eqz p2, :cond_2

    iget-object v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValues:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt p2, v8, :cond_8

    .line 91
    :cond_2
    iget-object v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValues:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .line 95
    .local v0, "endValue":I
    :goto_0
    iget-object v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValues:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-direct {p0, v8}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mYMin:F

    .line 96
    iget-object v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValues:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-direct {p0, v8}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mYMax:F

    .line 100
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 102
    iget-object v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mValues:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 104
    .local v1, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v7

    .line 105
    .local v7, "ymin":F
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v6

    .line 107
    .local v6, "ymax":F
    iget v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mYMin:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_3

    .line 108
    iput v7, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mYMin:F

    .line 111
    :cond_3
    iget v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mYMax:F

    cmpl-float v8, v6, v8

    if-lez v8, :cond_4

    .line 112
    iput v6, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mYMax:F

    .line 115
    :cond_4
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->xMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v5

    .line 116
    .local v5, "xmin":F
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->xMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v4

    .line 118
    .local v4, "xmax":F
    iget v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mXMin:F

    cmpg-float v8, v5, v8

    if-gez v8, :cond_5

    .line 119
    iput v5, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mXMin:F

    .line 122
    :cond_5
    iget v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mXMax:F

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    .line 123
    iput v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mXMax:F

    .line 126
    :cond_6
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->largestSize(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v3

    .line 128
    .local v3, "size":F
    iget v8, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mMaxSize:F

    cmpl-float v8, v3, v8

    if-lez v8, :cond_7

    .line 129
    iput v3, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mMaxSize:F

    .line 100
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    .end local v0    # "endValue":I
    .end local v1    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v2    # "i":I
    .end local v3    # "size":F
    .end local v4    # "xmax":F
    .end local v5    # "xmin":F
    .end local v6    # "ymax":F
    .end local v7    # "ymin":F
    :cond_8
    move v0, p2

    .restart local v0    # "endValue":I
    goto :goto_0
.end method

.method public getHighlightCircleWidth()F
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mHighlightCircleWidth:F

    return v0
.end method

.method public getMaxSize()F
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mMaxSize:F

    return v0
.end method

.method public getSizeField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mSizeField:Ljava/lang/String;

    return-object v0
.end method

.method public getXMax()F
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mXMax:F

    return v0
.end method

.method public getXMin()F
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mXMin:F

    return v0
.end method

.method public setHighlightCircleWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 171
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mHighlightCircleWidth:F

    .line 172
    return-void
.end method

.method public setSizeField(Ljava/lang/String;)V
    .locals 0
    .param p1, "sizeField"    # Ljava/lang/String;

    .prologue
    .line 185
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmBubbleDataSet;->mSizeField:Ljava/lang/String;

    .line 186
    return-void
.end method

.class public Lcom/github/mikephil/charting/data/BarData;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
.source "BarData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData",
        "<",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mBarWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>()V

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>(Ljava/util/List;)V

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 30
    return-void
.end method

.method public varargs constructor <init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V
    .locals 1
    .param p1, "dataSets"    # [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 26
    return-void
.end method


# virtual methods
.method public getBarWidth()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    return v0
.end method

.method public getGroupWidth(FF)F
    .locals 2
    .param p1, "groupSpace"    # F
    .param p2, "barSpace"    # F

    .prologue
    .line 120
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public groupBars(FFF)V
    .locals 21
    .param p1, "fromX"    # F
    .param p2, "groupSpace"    # F
    .param p3, "barSpace"    # F

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/data/BarData;->mDataSets:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v16

    .line 59
    .local v16, "setCount":I
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    .line 60
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "BarData needs to hold at least 2 BarDataSets to allow grouping."

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 63
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/data/BarData;->getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v13

    check-cast v13, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 64
    .local v13, "max":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v14

    .line 66
    .local v14, "maxEntryCount":I
    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, p2, v19

    .line 67
    .local v8, "groupSpaceWidthHalf":F
    const/high16 v19, 0x40000000    # 2.0f

    div-float v3, p3, v19

    .line 68
    .local v3, "barSpaceHalf":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v4, v19, v20

    .line 70
    .local v4, "barWidthHalf":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/data/BarData;->getGroupWidth(FF)F

    move-result v11

    .line 72
    .local v11, "interval":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v14, :cond_5

    .line 74
    move/from16 v18, p1

    .line 75
    .local v18, "start":F
    add-float p1, p1, v8

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/data/BarData;->mDataSets:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    .line 79
    .local v17, "setCountJ":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/data/BarData;->mDataSets:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 82
    .local v15, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    add-float p1, p1, v3

    .line 83
    add-float p1, p1, v4

    .line 85
    invoke-interface {v15}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_1

    .line 87
    invoke-interface {v15, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    .line 89
    .local v7, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v7, :cond_1

    .line 90
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/data/BarEntry;->setX(F)V

    .line 94
    .end local v7    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    :cond_1
    add-float p1, p1, v4

    .line 95
    add-float p1, p1, v3

    .line 79
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 98
    .end local v15    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_2
    add-float p1, p1, v8

    .line 99
    move/from16 v6, p1

    .line 100
    .local v6, "end":F
    sub-float v10, v6, v18

    .line 101
    .local v10, "innerInterval":F
    sub-float v5, v11, v10

    .line 104
    .local v5, "diff":F
    const/16 v19, 0x0

    cmpl-float v19, v5, v19

    if-gtz v19, :cond_3

    const/16 v19, 0x0

    cmpg-float v19, v5, v19

    if-gez v19, :cond_4

    .line 105
    :cond_3
    add-float p1, p1, v5

    .line 72
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 109
    .end local v5    # "diff":F
    .end local v6    # "end":F
    .end local v10    # "innerInterval":F
    .end local v12    # "j":I
    .end local v17    # "setCountJ":I
    .end local v18    # "start":F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/data/BarData;->notifyDataChanged()V

    .line 110
    return-void
.end method

.method public setBarWidth(F)V
    .locals 0
    .param p1, "mBarWidth"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 40
    return-void
.end method

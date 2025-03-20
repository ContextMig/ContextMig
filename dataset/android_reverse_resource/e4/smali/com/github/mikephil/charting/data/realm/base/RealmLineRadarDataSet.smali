.class public abstract Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;
.super Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;
.source "RealmLineRadarDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        ">",
        "Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet",
        "<TT;",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawFilled:Z

.field private mFillAlpha:I

.field private mFillColor:I

.field protected mFillDrawable:Landroid/graphics/drawable/Drawable;

.field private mLineWidth:F


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;)V
    .locals 3
    .param p2, "yValuesField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    .line 20
    const/16 v0, 0x8c

    const/16 v1, 0xea

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillColor:I

    .line 26
    const/16 v0, 0x55

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillAlpha:I

    .line 29
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mLineWidth:F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mDrawFilled:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "yValuesField"    # Ljava/lang/String;
    .param p3, "xIndexField"    # Ljava/lang/String;
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
    .line 47
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/realm/base/RealmLineScatterCandleRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/16 v0, 0x8c

    const/16 v1, 0xea

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillColor:I

    .line 26
    const/16 v0, 0x55

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillAlpha:I

    .line 29
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mLineWidth:F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mDrawFilled:Z

    .line 48
    return-void
.end method


# virtual methods
.method public build(Lio/realm/RealmResults;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mIndexField:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 55
    const/4 v3, 0x0

    .line 57
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

    .line 59
    .local v2, "object":Lio/realm/RealmObject;, "TT;"
    new-instance v0, Lio/realm/DynamicRealmObject;

    invoke-direct {v0, v2}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 60
    .local v0, "dynamicObject":Lio/realm/DynamicRealmObject;
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mValues:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    iget-object v6, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mValuesField:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    goto :goto_0

    .line 66
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

    .line 68
    .restart local v2    # "object":Lio/realm/RealmObject;, "TT;"
    new-instance v0, Lio/realm/DynamicRealmObject;

    invoke-direct {v0, v2}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 69
    .restart local v0    # "dynamicObject":Lio/realm/DynamicRealmObject;
    iget-object v4, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mValues:Ljava/util/List;

    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    iget-object v6, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mValuesField:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lio/realm/DynamicRealmObject;->getFloat(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mIndexField:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lio/realm/DynamicRealmObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    .end local v0    # "dynamicObject":Lio/realm/DynamicRealmObject;
    .end local v2    # "object":Lio/realm/RealmObject;, "TT;"
    :cond_1
    return-void
.end method

.method public getFillAlpha()I
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillAlpha:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillColor:I

    return v0
.end method

.method public getFillDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mLineWidth:F

    return v0
.end method

.method public isDrawFilledEnabled()Z
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mDrawFilled:Z

    return v0
.end method

.method public setDrawFilled(Z)V
    .locals 0
    .param p1, "filled"    # Z

    .prologue
    .line 140
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mDrawFilled:Z

    .line 141
    return-void
.end method

.method public setFillAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 115
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillAlpha:I

    .line 116
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 85
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillColor:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    return-void
.end method

.method public setFillDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 100
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 126
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;, "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet<TT;>;"
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 127
    const p1, 0x3e4ccccd    # 0.2f

    .line 128
    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 129
    const/high16 p1, 0x41200000    # 10.0f

    .line 130
    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->mLineWidth:F

    .line 131
    return-void
.end method

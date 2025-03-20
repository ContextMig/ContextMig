.class public Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;
.super Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;
.source "RealmLineDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/RealmObject;",
        ">",
        "Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet",
        "<TT;>;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;"
    }
.end annotation


# instance fields
.field private mCircleColorHole:I

.field private mCircleColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCircleSize:F

.field private mCubicIntensity:F

.field private mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mDrawCircleHole:Z

.field private mDrawCircles:Z

.field private mDrawCubic:Z

.field private mDrawStepped:Z

.field private mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;


# direct methods
.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;)V
    .locals 5
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
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    .line 29
    iput-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColorHole:I

    .line 39
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleSize:F

    .line 44
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCubicIntensity:F

    .line 49
    iput-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 54
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    .line 59
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircles:Z

    .line 64
    iput-boolean v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCubic:Z

    .line 69
    iput-boolean v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawStepped:Z

    .line 71
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircleHole:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 84
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->build(Lio/realm/RealmResults;)V

    .line 87
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->calcMinMax(II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
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
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    .local p1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;-><init>(Lio/realm/RealmResults;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColorHole:I

    .line 39
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleSize:F

    .line 44
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCubicIntensity:F

    .line 49
    iput-object v2, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 54
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    .line 59
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircles:Z

    .line 64
    iput-boolean v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCubic:Z

    .line 69
    iput-boolean v4, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawStepped:Z

    .line 71
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircleHole:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->build(Lio/realm/RealmResults;)V

    .line 105
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->results:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->calcMinMax(II)V

    .line 106
    return-void
.end method


# virtual methods
.method public build(Lio/realm/RealmResults;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TT;>;"
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/data/realm/base/RealmLineRadarDataSet;->build(Lio/realm/RealmResults;)V

    .line 111
    return-void
.end method

.method public disableDashedLine()V
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 169
    return-void
.end method

.method public enableDashedLine(FFF)V
    .locals 3
    .param p1, "lineLength"    # F
    .param p2, "spaceLength"    # F
    .param p3, "phase"    # F

    .prologue
    .line 159
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 162
    return-void
.end method

.method public getCircleColor(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 241
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCircleColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    return-object v0
.end method

.method public getCircleHoleColor()I
    .locals 1

    .prologue
    .line 320
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColorHole:I

    return v0
.end method

.method public getCircleRadius()F
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleSize:F

    return v0
.end method

.method public getCubicIntensity()F
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCubicIntensity:F

    return v0
.end method

.method public getDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getFillFormatter()Lcom/github/mikephil/charting/formatter/FillFormatter;
    .locals 1

    .prologue
    .line 353
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    return-object v0
.end method

.method public isDashedLineEnabled()Z
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDrawCircleHoleEnabled()Z
    .locals 1

    .prologue
    .line 334
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircleHole:Z

    return v0
.end method

.method public isDrawCirclesEnabled()Z
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircles:Z

    return v0
.end method

.method public isDrawCubicEnabled()Z
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCubic:Z

    return v0
.end method

.method public isDrawSteppedEnabled()Z
    .locals 1

    .prologue
    .line 225
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawStepped:Z

    return v0
.end method

.method public resetCircleColors()V
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 307
    return-void
.end method

.method public setCircleColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 298
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->resetCircleColors()V

    .line 299
    iget-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public setCircleColorHole(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 315
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColorHole:I

    .line 316
    return-void
.end method

.method public setCircleColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 255
    return-void
.end method

.method public setCircleColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 267
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->createColors([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 268
    return-void
.end method

.method public setCircleColors([ILandroid/content/Context;)V
    .locals 6
    .param p1, "colors"    # [I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 282
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v1, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v0, v3

    .line 285
    .local v2, "color":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    .end local v2    # "color":I
    :cond_0
    iput-object v1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleColors:Ljava/util/List;

    .line 289
    return-void
.end method

.method public setCircleSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 141
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCircleSize:F

    .line 142
    return-void
.end method

.method public setCubicIntensity(F)V
    .locals 1
    .param p1, "intensity"    # F

    .prologue
    .line 121
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 122
    const/high16 p1, 0x3f800000    # 1.0f

    .line 123
    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 124
    const p1, 0x3d4ccccd    # 0.05f

    .line 126
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mCubicIntensity:F

    .line 127
    return-void
.end method

.method public setDrawCircleHole(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 329
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircleHole:Z

    .line 330
    return-void
.end method

.method public setDrawCircles(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 188
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCircles:Z

    .line 189
    return-void
.end method

.method public setDrawCubic(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 203
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawCubic:Z

    .line 204
    return-void
.end method

.method public setDrawStepped(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 220
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mDrawStepped:Z

    .line 221
    return-void
.end method

.method public setFillFormatter(Lcom/github/mikephil/charting/formatter/FillFormatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/github/mikephil/charting/formatter/FillFormatter;

    .prologue
    .line 345
    .local p0, "this":Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;, "Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet<TT;>;"
    if-nez p1, :cond_0

    .line 346
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {v0}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/realm/implementation/RealmLineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/FillFormatter;

    goto :goto_0
.end method

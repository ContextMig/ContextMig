.class public Lcom/github/mikephil/charting/data/ScatterDataSet;
.super Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.source "ScatterDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;"
    }
.end annotation


# instance fields
.field private mScatterShapeHoleColor:I

.field private mScatterShapeHoleRadius:F

.field protected mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;

.field private mShapeSize:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 21
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    .line 26
    new-instance v0, Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;

    invoke-direct {v0}, Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleRadius:F

    .line 39
    const v0, 0x112233

    iput v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleColor:I

    .line 48
    return-void
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->copy()Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/ScatterDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 60
    .local v0, "copied":Lcom/github/mikephil/charting/data/ScatterDataSet;
    iget-boolean v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mDrawValues:Z

    iput-boolean v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mDrawValues:Z

    .line 61
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mValueColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mValueColors:Ljava/util/List;

    .line 62
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mColors:Ljava/util/List;

    .line 63
    iget v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    iput v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    .line 64
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;

    .line 65
    iget v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleRadius:F

    iput v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleRadius:F

    .line 66
    iget v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleColor:I

    .line 67
    iget v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighlightLineWidth:F

    iput v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighlightLineWidth:F

    .line 68
    iget v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighLightColor:I

    .line 69
    iget-object v3, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mHighlightDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 71
    return-object v0
.end method

.method public getScatterShapeHoleColor()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleColor:I

    return v0
.end method

.method public getScatterShapeHoleRadius()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleRadius:F

    return v0
.end method

.method public getScatterShapeSize()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    return v0
.end method

.method public getShapeRenderer()Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;

    return-object v0
.end method

.method public setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V
    .locals 2
    .param p1, "shape"    # Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    .prologue
    .line 97
    new-instance v0, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;-><init>()V

    .line 98
    .local v0, "handler":Lcom/github/mikephil/charting/utils/ShapeRendererHandler;
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->getShapeRenderer(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;

    .line 99
    return-void
.end method

.method public setScatterShapeHoleColor(I)V
    .locals 0
    .param p1, "holeColor"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleColor:I

    .line 138
    return-void
.end method

.method public setScatterShapeHoleRadius(F)V
    .locals 0
    .param p1, "holeRadius"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShapeHoleRadius:F

    .line 124
    return-void
.end method

.method public setScatterShapeSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    .line 82
    return-void
.end method

.method public setShapeRenderer(Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;)V
    .locals 0
    .param p1, "shapeRenderer"    # Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeRenderer:Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;

    .line 109
    return-void
.end method

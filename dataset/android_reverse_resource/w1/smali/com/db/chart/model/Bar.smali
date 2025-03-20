.class public Lcom/db/chart/model/Bar;
.super Lcom/db/chart/model/ChartEntry;
.source "Bar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "chart.model.Bar"


# instance fields
.field private mGradientColors:[I

.field private mGradientPositions:[F

.field private mHasGradientColor:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/db/chart/model/ChartEntry;-><init>(Ljava/lang/String;F)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/model/Bar;->isVisible:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/chart/model/Bar;->mHasGradientColor:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getGradientColors()[I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/db/chart/model/Bar;->mGradientColors:[I

    return-object v0
.end method

.method public getGradientPositions()[F
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/db/chart/model/Bar;->mGradientPositions:[F

    return-object v0
.end method

.method public hasGradientColor()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/db/chart/model/Bar;->mHasGradientColor:Z

    return v0
.end method

.method public setGradientColor([I[F)Lcom/db/chart/model/Bar;
    .locals 2
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positions"    # [F

    .prologue
    .line 101
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors argument can\'t be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/model/Bar;->mHasGradientColor:Z

    .line 105
    iput-object p1, p0, Lcom/db/chart/model/Bar;->mGradientColors:[I

    .line 106
    iput-object p2, p0, Lcom/db/chart/model/Bar;->mGradientPositions:[F

    .line 107
    return-object p0
.end method

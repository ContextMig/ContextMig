.class public Lcom/db/chart/model/BarSet;
.super Lcom/db/chart/model/ChartSet;
.source "BarSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "chart.model.BarSet"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/db/chart/model/ChartSet;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[F)V
    .locals 4
    .param p1, "labels"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/db/chart/model/ChartSet;-><init>()V

    .line 49
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Labels or/and values can\'t be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Arrays size doesn\'t match."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_2
    array-length v1, p1

    .line 55
    .local v1, "nEntries":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 56
    aget-object v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/db/chart/model/BarSet;->addBar(Ljava/lang/String;F)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_3
    return-void
.end method


# virtual methods
.method public addBar(Lcom/db/chart/model/Bar;)V
    .locals 0
    .param p1, "bar"    # Lcom/db/chart/model/Bar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/db/chart/model/BarSet;->addEntry(Lcom/db/chart/model/ChartEntry;)V

    .line 78
    return-void
.end method

.method public addBar(Ljava/lang/String;F)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 67
    new-instance v0, Lcom/db/chart/model/Bar;

    invoke-direct {v0, p1, p2}, Lcom/db/chart/model/Bar;-><init>(Ljava/lang/String;F)V

    invoke-virtual {p0, v0}, Lcom/db/chart/model/BarSet;->addBar(Lcom/db/chart/model/Bar;)V

    .line 68
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/db/chart/model/BarSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getColor()I

    move-result v0

    return v0
.end method

.method public setColor(I)Lcom/db/chart/model/BarSet;
    .locals 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/db/chart/model/BarSet;->getEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    .line 114
    .local v0, "e":Lcom/db/chart/model/ChartEntry;
    invoke-virtual {v0, p1}, Lcom/db/chart/model/ChartEntry;->setColor(I)V

    goto :goto_0

    .line 115
    .end local v0    # "e":Lcom/db/chart/model/ChartEntry;
    :cond_0
    return-object p0
.end method

.method public setGradientColor([I[F)Lcom/db/chart/model/BarSet;
    .locals 3
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positions"    # [F

    .prologue
    .line 128
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Colors argument can\'t be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/db/chart/model/BarSet;->getEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    .line 132
    .local v0, "e":Lcom/db/chart/model/ChartEntry;
    check-cast v0, Lcom/db/chart/model/Bar;

    .end local v0    # "e":Lcom/db/chart/model/ChartEntry;
    invoke-virtual {v0, p1, p2}, Lcom/db/chart/model/Bar;->setGradientColor([I[F)Lcom/db/chart/model/Bar;

    goto :goto_0

    .line 133
    :cond_2
    return-object p0
.end method

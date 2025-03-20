.class public abstract Lcom/db/chart/model/ChartSet;
.super Ljava/lang/Object;
.source "ChartSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "chart.model.ChartSet"


# instance fields
.field private mAlpha:F

.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsVisible:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/db/chart/model/ChartSet;->mAlpha:F

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/chart/model/ChartSet;->mIsVisible:Z

    .line 49
    return-void
.end method

.method private setValue(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 183
    iget-object v0, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    invoke-virtual {v0, p2}, Lcom/db/chart/model/ChartEntry;->setValue(F)V

    .line 184
    return-void
.end method


# virtual methods
.method addEntry(Lcom/db/chart/model/ChartEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/db/chart/model/ChartEntry;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Chart entry added can\'t be null object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/db/chart/model/ChartSet;->mAlpha:F

    return v0
.end method

.method public getEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEntry(I)Lcom/db/chart/model/ChartEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    return-object v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenPoints()[[F
    .locals 6

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v1

    .line 139
    .local v1, "nEntries":I
    const/4 v3, 0x2

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 140
    .local v2, "result":[[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 141
    aget-object v4, v2, v0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartEntry;

    invoke-virtual {v3}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v3

    aput v3, v4, v5

    .line 142
    aget-object v4, v2, v0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartEntry;

    invoke-virtual {v3}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v3

    aput v3, v4, v5

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-object v2
.end method

.method public getValue(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/db/chart/model/ChartSet;->mIsVisible:Z

    return v0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 195
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .end local p1    # "alpha":F
    :goto_0
    iput p1, p0, Lcom/db/chart/model/ChartSet;->mAlpha:F

    .line 196
    return-void

    .restart local p1    # "alpha":F
    :cond_0
    move p1, v0

    .line 195
    goto :goto_0
.end method

.method setShadow(FFFI)V
    .locals 3
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/db/chart/model/ChartSet;->getEntries()Ljava/util/ArrayList;

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

    .line 219
    .local v0, "e":Lcom/db/chart/model/ChartEntry;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/db/chart/model/ChartEntry;->setShadow(FFFI)V

    goto :goto_0

    .line 220
    .end local v0    # "e":Lcom/db/chart/model/ChartEntry;
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/db/chart/model/ChartSet;->mIsVisible:Z

    .line 206
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/db/chart/model/ChartSet;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateValues([F)V
    .locals 4
    .param p1, "newValues"    # [F

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v1

    .line 71
    .local v1, "nEntries":I
    array-length v2, p1

    if-eq v2, v1, :cond_0

    .line 72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "New set values given doesn\'t match previous number of entries."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 76
    aget v2, p1, v0

    invoke-direct {p0, v0, v2}, Lcom/db/chart/model/ChartSet;->setValue(IF)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

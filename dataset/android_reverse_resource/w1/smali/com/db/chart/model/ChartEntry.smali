.class public abstract Lcom/db/chart/model/ChartEntry;
.super Ljava/lang/Object;
.source "ChartEntry.java"


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000


# instance fields
.field isVisible:Z

.field private mColor:I

.field private final mLabel:Ljava/lang/String;

.field private mShadowColor:[I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mValue:F

.field private mX:F

.field private mY:F


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/db/chart/model/ChartEntry;->mLabel:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/db/chart/model/ChartEntry;->mValue:F

    .line 67
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/db/chart/model/ChartEntry;->mColor:I

    .line 69
    iput v1, p0, Lcom/db/chart/model/ChartEntry;->mShadowRadius:F

    .line 70
    iput v1, p0, Lcom/db/chart/model/ChartEntry;->mShadowDx:F

    .line 71
    iput v1, p0, Lcom/db/chart/model/ChartEntry;->mShadowDy:F

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/db/chart/model/ChartEntry;->mShadowColor:[I

    .line 73
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/db/chart/model/ChartEntry;->mColor:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/db/chart/model/ChartEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getShadowColor()[I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/db/chart/model/ChartEntry;->mShadowColor:[I

    return-object v0
.end method

.method public getShadowDx()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/db/chart/model/ChartEntry;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/db/chart/model/ChartEntry;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/db/chart/model/ChartEntry;->mShadowRadius:F

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/db/chart/model/ChartEntry;->mValue:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/db/chart/model/ChartEntry;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/db/chart/model/ChartEntry;->mY:F

    return v0
.end method

.method public hasShadow()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/db/chart/model/ChartEntry;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/db/chart/model/ChartEntry;->isVisible:Z

    return v0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/model/ChartEntry;->isVisible:Z

    .line 175
    iput p1, p0, Lcom/db/chart/model/ChartEntry;->mColor:I

    .line 176
    return-void
.end method

.method public setCoordinates(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 162
    iput p1, p0, Lcom/db/chart/model/ChartEntry;->mX:F

    .line 163
    iput p2, p0, Lcom/db/chart/model/ChartEntry;->mY:F

    .line 164
    return-void
.end method

.method public setShadow(FFFI)V
    .locals 3
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 199
    iput p1, p0, Lcom/db/chart/model/ChartEntry;->mShadowRadius:F

    .line 200
    iput p2, p0, Lcom/db/chart/model/ChartEntry;->mShadowDx:F

    .line 201
    iput p3, p0, Lcom/db/chart/model/ChartEntry;->mShadowDy:F

    .line 202
    iget-object v0, p0, Lcom/db/chart/model/ChartEntry;->mShadowColor:[I

    const/4 v1, 0x0

    invoke-static {p4}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    aput v2, v0, v1

    .line 203
    iget-object v0, p0, Lcom/db/chart/model/ChartEntry;->mShadowColor:[I

    const/4 v1, 0x1

    invoke-static {p4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    aput v2, v0, v1

    .line 204
    iget-object v0, p0, Lcom/db/chart/model/ChartEntry;->mShadowColor:[I

    const/4 v1, 0x2

    invoke-static {p4}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    aput v2, v0, v1

    .line 205
    iget-object v0, p0, Lcom/db/chart/model/ChartEntry;->mShadowColor:[I

    const/4 v1, 0x3

    invoke-static {p4}, Landroid/graphics/Color;->green(I)I

    move-result v2

    aput v2, v0, v1

    .line 206
    return-void
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 150
    iput p1, p0, Lcom/db/chart/model/ChartEntry;->mValue:F

    .line 151
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/db/chart/model/ChartEntry;->isVisible:Z

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/db/chart/model/ChartEntry;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/db/chart/model/ChartEntry;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "X = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/db/chart/model/ChartEntry;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/db/chart/model/ChartEntry;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/github/mikephil/charting/highlight/Highlight;
.super Ljava/lang/Object;
.source "Highlight.java"


# instance fields
.field private axis:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field private mDataIndex:I

.field private mDataSetIndex:I

.field private mDrawX:F

.field private mDrawY:F

.field private mStackIndex:I

.field private mX:F

.field private mXPx:F

.field private mY:F

.field private mYPx:F


# direct methods
.method protected constructor <init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xPx"    # F
    .param p4, "yPx"    # F
    .param p5, "dataSetIndex"    # I
    .param p6, "stackIndex"    # I
    .param p7, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 99
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 100
    iput p6, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    .line 101
    return-void
.end method

.method protected constructor <init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xPx"    # F
    .param p4, "yPx"    # F
    .param p5, "dataSetIndex"    # I
    .param p6, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    const/4 v1, -0x1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    .line 21
    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    .line 36
    iput v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataIndex:I

    .line 46
    iput v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    .line 81
    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    .line 82
    iput p2, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    .line 83
    iput p3, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mXPx:F

    .line 84
    iput p4, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mYPx:F

    .line 85
    iput p5, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    .line 86
    iput-object p6, p0, Lcom/github/mikephil/charting/highlight/Highlight;->axis:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 87
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "dataSetIndex"    # I

    .prologue
    const/4 v1, -0x1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    .line 21
    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    .line 36
    iput v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataIndex:I

    .line 46
    iput v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    .line 64
    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    .line 65
    iput p2, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    .line 66
    return-void
.end method

.method public constructor <init>(FII)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "dataSetIndex"    # I
    .param p3, "stackIndex"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FI)V

    .line 70
    iput p3, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    .line 71
    return-void
.end method


# virtual methods
.method public equalTo(Lcom/github/mikephil/charting/highlight/Highlight;)Z
    .locals 3
    .param p1, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    const/4 v0, 0x0

    .line 218
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataIndex:I

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mDataIndex:I

    if-ne v1, v2, :cond_0

    .line 223
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAxis()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->axis:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getDataIndex()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataIndex:I

    return v0
.end method

.method public getDataSetIndex()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    return v0
.end method

.method public getDrawX()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawX:F

    return v0
.end method

.method public getDrawY()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawY:F

    return v0
.end method

.method public getStackIndex()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    return v0
.end method

.method public getXPx()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mXPx:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    return v0
.end method

.method public getYPx()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mYPx:F

    return v0
.end method

.method public isStacked()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataIndex(I)V
    .locals 0
    .param p1, "mDataIndex"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataIndex:I

    .line 146
    return-void
.end method

.method public setDraw(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawX:F

    .line 188
    iput p2, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDrawY:F

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Highlight, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSetIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stackIndex (only stacked barentry): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

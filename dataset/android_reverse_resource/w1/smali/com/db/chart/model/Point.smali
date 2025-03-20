.class public Lcom/db/chart/model/Point;
.super Lcom/db/chart/model/ChartEntry;
.source "Point.java"


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final DOTS_RADIUS:F = 3.0f

.field private static final DOTS_THICKNESS:F = 4.0f

.field private static final TAG:Ljava/lang/String; = "chart.model.Point"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasStroke:Z

.field private mRadius:F

.field private mStrokeColor:I

.field private mStrokeThickness:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/db/chart/model/ChartEntry;-><init>(Ljava/lang/String;F)V

    .line 64
    iput-boolean v1, p0, Lcom/db/chart/model/Point;->isVisible:Z

    .line 66
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/db/chart/Tools;->fromDpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/db/chart/model/Point;->mRadius:F

    .line 68
    iput-boolean v1, p0, Lcom/db/chart/model/Point;->mHasStroke:Z

    .line 69
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/db/chart/Tools;->fromDpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/db/chart/model/Point;->mStrokeThickness:F

    .line 70
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/db/chart/model/Point;->mStrokeColor:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/chart/model/Point;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/db/chart/model/Point;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/db/chart/model/Point;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/db/chart/model/Point;->mStrokeColor:I

    return v0
.end method

.method public getStrokeThickness()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/db/chart/model/Point;->mStrokeThickness:F

    return v0
.end method

.method public hasStroke()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/db/chart/model/Point;->mHasStroke:Z

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)Lcom/db/chart/model/Point;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable argument can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/model/Point;->isVisible:Z

    .line 204
    iput-object p1, p0, Lcom/db/chart/model/Point;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    return-object p0
.end method

.method public setRadius(F)Lcom/db/chart/model/Point;
    .locals 2
    .param p1, "radius"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 150
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dot radius can\'t be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/model/Point;->isVisible:Z

    .line 154
    iput p1, p0, Lcom/db/chart/model/Point;->mRadius:F

    .line 155
    return-object p0
.end method

.method public setStrokeColor(I)Lcom/db/chart/model/Point;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/db/chart/model/Point;->isVisible:Z

    .line 186
    iput-boolean v0, p0, Lcom/db/chart/model/Point;->mHasStroke:Z

    .line 187
    iput p1, p0, Lcom/db/chart/model/Point;->mStrokeColor:I

    .line 188
    return-object p0
.end method

.method public setStrokeThickness(F)Lcom/db/chart/model/Point;
    .locals 2
    .param p1, "thickness"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 167
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grid thickness < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iput-boolean v1, p0, Lcom/db/chart/model/Point;->isVisible:Z

    .line 171
    iput-boolean v1, p0, Lcom/db/chart/model/Point;->mHasStroke:Z

    .line 172
    iput p1, p0, Lcom/db/chart/model/Point;->mStrokeThickness:F

    .line 173
    return-object p0
.end method

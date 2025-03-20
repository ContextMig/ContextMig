.class public Lcom/db/chart/model/LineSet;
.super Lcom/db/chart/model/ChartSet;
.source "LineSet.java"


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final LINE_THICKNESS:F = 4.0f

.field private static final TAG:Ljava/lang/String; = "chart.model.LineSet"


# instance fields
.field private mBegin:I

.field private mColor:I

.field private mDashedIntervals:[F

.field private mDashedPhase:I

.field private mEnd:I

.field private mFillColor:I

.field private mGradientColors:[I

.field private mGradientPositions:[F

.field private mHasFill:Z

.field private mHasGradientFill:Z

.field private mIsDashed:Z

.field private mIsSmooth:Z

.field private mShadowColor:[I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mThickness:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/db/chart/model/ChartSet;-><init>()V

    .line 93
    invoke-direct {p0}, Lcom/db/chart/model/LineSet;->init()V

    .line 94
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
    .line 104
    invoke-direct {p0}, Lcom/db/chart/model/ChartSet;-><init>()V

    .line 105
    invoke-direct {p0}, Lcom/db/chart/model/LineSet;->init()V

    .line 107
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 108
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Labels or/and values can\'t be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Arrays size doesn\'t match."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_2
    array-length v1, p1

    .line 113
    .local v1, "nEntries":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 114
    aget-object v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/db/chart/model/LineSet;->addPoint(Ljava/lang/String;F)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_3
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/db/chart/Tools;->fromDpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/db/chart/model/LineSet;->mThickness:F

    .line 125
    iput v4, p0, Lcom/db/chart/model/LineSet;->mColor:I

    .line 127
    iput-boolean v1, p0, Lcom/db/chart/model/LineSet;->mIsDashed:Z

    .line 128
    iput-object v3, p0, Lcom/db/chart/model/LineSet;->mDashedIntervals:[F

    .line 129
    iput v1, p0, Lcom/db/chart/model/LineSet;->mDashedPhase:I

    .line 131
    iput-boolean v1, p0, Lcom/db/chart/model/LineSet;->mIsSmooth:Z

    .line 133
    iput-boolean v1, p0, Lcom/db/chart/model/LineSet;->mHasFill:Z

    .line 134
    iput v4, p0, Lcom/db/chart/model/LineSet;->mFillColor:I

    .line 136
    iput-boolean v1, p0, Lcom/db/chart/model/LineSet;->mHasGradientFill:Z

    .line 137
    iput-object v3, p0, Lcom/db/chart/model/LineSet;->mGradientColors:[I

    .line 138
    iput-object v3, p0, Lcom/db/chart/model/LineSet;->mGradientPositions:[F

    .line 140
    iput v1, p0, Lcom/db/chart/model/LineSet;->mBegin:I

    .line 141
    iput v1, p0, Lcom/db/chart/model/LineSet;->mEnd:I

    .line 143
    iput v2, p0, Lcom/db/chart/model/LineSet;->mShadowRadius:F

    .line 144
    iput v2, p0, Lcom/db/chart/model/LineSet;->mShadowDx:F

    .line 145
    iput v2, p0, Lcom/db/chart/model/LineSet;->mShadowDy:F

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/db/chart/model/LineSet;->mShadowColor:[I

    .line 147
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/db/chart/model/Point;)V
    .locals 0
    .param p1, "point"    # Lcom/db/chart/model/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/db/chart/model/LineSet;->addEntry(Lcom/db/chart/model/ChartEntry;)V

    .line 168
    return-void
.end method

.method public addPoint(Ljava/lang/String;F)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 157
    new-instance v0, Lcom/db/chart/model/Point;

    invoke-direct {v0, p1, p2}, Lcom/db/chart/model/Point;-><init>(Ljava/lang/String;F)V

    invoke-virtual {p0, v0}, Lcom/db/chart/model/LineSet;->addPoint(Lcom/db/chart/model/Point;)V

    .line 158
    return-void
.end method

.method public beginAt(I)Lcom/db/chart/model/LineSet;
    .locals 2
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 468
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/db/chart/model/LineSet;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index is negative or greater than set\'s size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_1
    iput p1, p0, Lcom/db/chart/model/LineSet;->mBegin:I

    .line 472
    return-object p0
.end method

.method public endAt(I)Lcom/db/chart/model/LineSet;
    .locals 2
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 485
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/db/chart/model/LineSet;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index is negative or greater than set\'s size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_1
    iget v0, p0, Lcom/db/chart/model/LineSet;->mBegin:I

    if-ge p1, v0, :cond_2

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index cannot be lesser than the start entry defined in beginAt(index)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_2
    iput p1, p0, Lcom/db/chart/model/LineSet;->mEnd:I

    .line 492
    return-object p0
.end method

.method public getBegin()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/db/chart/model/LineSet;->mBegin:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/db/chart/model/LineSet;->mColor:I

    return v0
.end method

.method public getDashedIntervals()[F
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/db/chart/model/LineSet;->mDashedIntervals:[F

    return-object v0
.end method

.method public getDashedPhase()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/db/chart/model/LineSet;->mDashedPhase:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/db/chart/model/LineSet;->mEnd:I

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/db/chart/model/LineSet;->size()I

    move-result v0

    .line 296
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/db/chart/model/LineSet;->mEnd:I

    goto :goto_0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/db/chart/model/LineSet;->mFillColor:I

    return v0
.end method

.method public getGradientColors()[I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/db/chart/model/LineSet;->mGradientColors:[I

    return-object v0
.end method

.method public getGradientPositions()[F
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/db/chart/model/LineSet;->mGradientPositions:[F

    return-object v0
.end method

.method public getShadowColor()[I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/db/chart/model/LineSet;->mShadowColor:[I

    return-object v0
.end method

.method public getShadowDx()F
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/db/chart/model/LineSet;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/db/chart/model/LineSet;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/db/chart/model/LineSet;->mShadowRadius:F

    return v0
.end method

.method public getThickness()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/db/chart/model/LineSet;->mThickness:F

    return v0
.end method

.method public hasFill()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/db/chart/model/LineSet;->mHasFill:Z

    return v0
.end method

.method public hasGradientFill()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/db/chart/model/LineSet;->mHasGradientFill:Z

    return v0
.end method

.method public hasShadow()Z
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/db/chart/model/LineSet;->mShadowRadius:F

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

.method public isDashed()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/db/chart/model/LineSet;->mIsDashed:Z

    return v0
.end method

.method public isSmooth()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/db/chart/model/LineSet;->mIsSmooth:Z

    return v0
.end method

.method public setColor(I)Lcom/db/chart/model/LineSet;
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 410
    iput p1, p0, Lcom/db/chart/model/LineSet;->mColor:I

    .line 411
    return-object p0
.end method

.method public setDashed([F)Lcom/db/chart/model/LineSet;
    .locals 2
    .param p1, "intervals"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/model/LineSet;->mIsDashed:Z

    .line 368
    iput-object p1, p0, Lcom/db/chart/model/LineSet;->mDashedIntervals:[F

    .line 369
    return-object p0
.end method

.method public setDashedPhase(I)Lcom/db/chart/model/LineSet;
    .locals 0
    .param p1, "phase"    # I

    .prologue
    .line 351
    iput p1, p0, Lcom/db/chart/model/LineSet;->mDashedPhase:I

    .line 352
    return-object p0
.end method

.method public setDotsColor(I)Lcom/db/chart/model/LineSet;
    .locals 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/db/chart/model/LineSet;->getEntries()Ljava/util/ArrayList;

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

    .line 507
    .local v0, "e":Lcom/db/chart/model/ChartEntry;
    invoke-virtual {v0, p1}, Lcom/db/chart/model/ChartEntry;->setColor(I)V

    goto :goto_0

    .line 508
    .end local v0    # "e":Lcom/db/chart/model/ChartEntry;
    :cond_0
    return-object p0
.end method

.method public setDotsDrawable(Landroid/graphics/drawable/Drawable;)Lcom/db/chart/model/LineSet;
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Drawable argument can\'t be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/db/chart/model/LineSet;->getEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    .line 579
    .local v0, "e":Lcom/db/chart/model/ChartEntry;
    check-cast v0, Lcom/db/chart/model/Point;

    .end local v0    # "e":Lcom/db/chart/model/ChartEntry;
    invoke-virtual {v0, p1}, Lcom/db/chart/model/Point;->setDrawable(Landroid/graphics/drawable/Drawable;)Lcom/db/chart/model/Point;

    goto :goto_0

    .line 580
    :cond_1
    return-object p0
.end method

.method public setDotsRadius(F)Lcom/db/chart/model/LineSet;
    .locals 3
    .param p1, "radius"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 522
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 523
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dots radius can\'t be < 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/db/chart/model/LineSet;->getEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    .line 526
    .local v0, "e":Lcom/db/chart/model/ChartEntry;
    check-cast v0, Lcom/db/chart/model/Point;

    .end local v0    # "e":Lcom/db/chart/model/ChartEntry;
    invoke-virtual {v0, p1}, Lcom/db/chart/model/Point;->setRadius(F)Lcom/db/chart/model/Point;

    goto :goto_0

    .line 527
    :cond_1
    return-object p0
.end method

.method public setDotsStrokeColor(I)Lcom/db/chart/model/LineSet;
    .locals 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/db/chart/model/LineSet;->getEntries()Ljava/util/ArrayList;

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

    .line 561
    .local v0, "e":Lcom/db/chart/model/ChartEntry;
    check-cast v0, Lcom/db/chart/model/Point;

    .end local v0    # "e":Lcom/db/chart/model/ChartEntry;
    invoke-virtual {v0, p1}, Lcom/db/chart/model/Point;->setStrokeColor(I)Lcom/db/chart/model/Point;

    goto :goto_0

    .line 562
    :cond_0
    return-object p0
.end method

.method public setDotsStrokeThickness(F)Lcom/db/chart/model/LineSet;
    .locals 3
    .param p1, "thickness"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 541
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 542
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dots thickness can\'t be < 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/db/chart/model/LineSet;->getEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    .line 545
    .local v0, "e":Lcom/db/chart/model/ChartEntry;
    check-cast v0, Lcom/db/chart/model/Point;

    .end local v0    # "e":Lcom/db/chart/model/ChartEntry;
    invoke-virtual {v0, p1}, Lcom/db/chart/model/Point;->setStrokeThickness(F)Lcom/db/chart/model/Point;

    goto :goto_0

    .line 546
    :cond_1
    return-object p0
.end method

.method public setFill(I)Lcom/db/chart/model/LineSet;
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/model/LineSet;->mHasFill:Z

    .line 426
    iput p1, p0, Lcom/db/chart/model/LineSet;->mFillColor:I

    .line 428
    iget v0, p0, Lcom/db/chart/model/LineSet;->mColor:I

    const/high16 v1, -0x1000000

    if-ne v0, v1, :cond_0

    .line 429
    iput p1, p0, Lcom/db/chart/model/LineSet;->mColor:I

    .line 431
    :cond_0
    return-object p0
.end method

.method public setGradientFill([I[F)Lcom/db/chart/model/LineSet;
    .locals 2
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positions"    # [F

    .prologue
    .line 446
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors argument can\'t be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/model/LineSet;->mHasGradientFill:Z

    .line 450
    iput-object p1, p0, Lcom/db/chart/model/LineSet;->mGradientColors:[I

    .line 451
    iput-object p2, p0, Lcom/db/chart/model/LineSet;->mGradientPositions:[F

    .line 453
    iget v0, p0, Lcom/db/chart/model/LineSet;->mColor:I

    const/high16 v1, -0x1000000

    if-ne v0, v1, :cond_2

    .line 454
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/db/chart/model/LineSet;->mColor:I

    .line 456
    :cond_2
    return-object p0
.end method

.method public setShadow(FFFI)V
    .locals 3
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 586
    invoke-super {p0, p1, p2, p3, p4}, Lcom/db/chart/model/ChartSet;->setShadow(FFFI)V

    .line 588
    iput p1, p0, Lcom/db/chart/model/LineSet;->mShadowRadius:F

    .line 589
    iput p2, p0, Lcom/db/chart/model/LineSet;->mShadowDx:F

    .line 590
    iput p3, p0, Lcom/db/chart/model/LineSet;->mShadowDy:F

    .line 592
    iget-object v0, p0, Lcom/db/chart/model/LineSet;->mShadowColor:[I

    const/4 v1, 0x0

    invoke-static {p4}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    aput v2, v0, v1

    .line 593
    iget-object v0, p0, Lcom/db/chart/model/LineSet;->mShadowColor:[I

    const/4 v1, 0x1

    invoke-static {p4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    aput v2, v0, v1

    .line 594
    iget-object v0, p0, Lcom/db/chart/model/LineSet;->mShadowColor:[I

    const/4 v1, 0x2

    invoke-static {p4}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    aput v2, v0, v1

    .line 595
    iget-object v0, p0, Lcom/db/chart/model/LineSet;->mShadowColor:[I

    const/4 v1, 0x3

    invoke-static {p4}, Landroid/graphics/Color;->green(I)I

    move-result v2

    aput v2, v0, v1

    .line 596
    return-void
.end method

.method public setSmooth(Z)Lcom/db/chart/model/LineSet;
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/db/chart/model/LineSet;->mIsSmooth:Z

    .line 382
    return-object p0
.end method

.method public setThickness(F)Lcom/db/chart/model/LineSet;
    .locals 2
    .param p1, "thickness"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 394
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Line thickness can\'t be <= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iput p1, p0, Lcom/db/chart/model/LineSet;->mThickness:F

    .line 398
    return-object p0
.end method

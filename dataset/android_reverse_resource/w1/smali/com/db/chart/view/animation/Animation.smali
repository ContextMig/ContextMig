.class public Lcom/db/chart/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# static fields
.field private static final DEFAULT_ALPHA_OFF:I = -0x1

.field private static final DEFAULT_DURATION:I = 0x3e8

.field private static final DEFAULT_OVERLAP_FACTOR:F = 1.0f

.field private static final DELAY_BETWEEN_UPDATES:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "animation.Animation"


# instance fields
.field private mAlphaSpeed:I

.field private final mAnimator:Ljava/lang/Runnable;

.field private mCancelled:Z

.field private mChartView:Lcom/db/chart/view/ChartView;

.field private mCurrentDuration:[J

.field private mCurrentGlobalDuration:J

.field private mDuration:I

.field private mEasing:Lcom/db/chart/view/animation/easing/BaseEasingMethod;

.field private mGlobalDuration:J

.field private mGlobalInitTime:J

.field private mInitTime:[J

.field private mOrder:[I

.field private mOverlapingFactor:F

.field private mPathMeasures:[[Landroid/graphics/PathMeasure;

.field private mPlaying:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mSetsAlpha:[F

.field private mStartXFactor:F

.field private mStartYFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/db/chart/view/animation/Animation$1;

    invoke-direct {v0, p0}, Lcom/db/chart/view/animation/Animation$1;-><init>(Lcom/db/chart/view/animation/Animation;)V

    iput-object v0, p0, Lcom/db/chart/view/animation/Animation;->mAnimator:Ljava/lang/Runnable;

    .line 152
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/db/chart/view/animation/Animation;->init(I)V

    .line 153
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/db/chart/view/animation/Animation$1;

    invoke-direct {v0, p0}, Lcom/db/chart/view/animation/Animation$1;-><init>(Lcom/db/chart/view/animation/Animation;)V

    iput-object v0, p0, Lcom/db/chart/view/animation/Animation;->mAnimator:Ljava/lang/Runnable;

    .line 157
    invoke-direct {p0, p1}, Lcom/db/chart/view/animation/Animation;->init(I)V

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/db/chart/view/animation/Animation;)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/animation/Animation;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/db/chart/view/animation/Animation;->mChartView:Lcom/db/chart/view/ChartView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/db/chart/view/animation/Animation;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/animation/Animation;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/db/chart/view/animation/Animation;->getUpdate(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getEntryUpdate(IIF[F)Z
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "normalizedTime"    # F
    .param p4, "pos"    # [F

    .prologue
    .line 461
    iget-object v0, p0, Lcom/db/chart/view/animation/Animation;->mPathMeasures:[[Landroid/graphics/PathMeasure;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/db/chart/view/animation/Animation;->mPathMeasures:[[Landroid/graphics/PathMeasure;

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iget-object v2, p0, Lcom/db/chart/view/animation/Animation;->mEasing:Lcom/db/chart/view/animation/easing/BaseEasingMethod;

    .line 462
    invoke-virtual {v2, p3}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->next(F)F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    .line 461
    invoke-virtual {v0, v1, p4, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v0

    return v0
.end method

.method private getUpdate(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 377
    .local v7, "nSets":I
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v10}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v6

    .line 381
    .local v6, "nEntries":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 382
    .local v0, "currentTime":J
    iget-wide v10, p0, Lcom/db/chart/view/animation/Animation;->mGlobalInitTime:J

    sub-long v10, v0, v10

    iput-wide v10, p0, Lcom/db/chart/view/animation/Animation;->mCurrentGlobalDuration:J

    .line 383
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 384
    iget-object v10, p0, Lcom/db/chart/view/animation/Animation;->mInitTime:[J

    aget-wide v10, v10, v4

    sub-long v2, v0, v10

    .line 385
    .local v2, "diff":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-gez v10, :cond_0

    .line 386
    iget-object v10, p0, Lcom/db/chart/view/animation/Animation;->mCurrentDuration:[J

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v4

    .line 383
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object v10, p0, Lcom/db/chart/view/animation/Animation;->mCurrentDuration:[J

    aput-wide v2, v10, v4

    goto :goto_1

    .line 393
    .end local v2    # "diff":J
    :cond_1
    iget-wide v10, p0, Lcom/db/chart/view/animation/Animation;->mCurrentGlobalDuration:J

    iget-wide v12, p0, Lcom/db/chart/view/animation/Animation;->mGlobalDuration:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    .line 394
    iget-wide v10, p0, Lcom/db/chart/view/animation/Animation;->mGlobalDuration:J

    iput-wide v10, p0, Lcom/db/chart/view/animation/Animation;->mCurrentGlobalDuration:J

    .line 397
    :cond_2
    const/4 v10, 0x2

    new-array v8, v10, [F

    .line 399
    .local v8, "posUpdate":[F
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_6

    .line 401
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v6, :cond_5

    .line 403
    invoke-direct {p0, v5}, Lcom/db/chart/view/animation/Animation;->normalizeTime(I)F

    move-result v9

    .line 405
    .local v9, "timeNormalized":F
    iget v10, p0, Lcom/db/chart/view/animation/Animation;->mAlphaSpeed:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/db/chart/view/animation/Animation;->mEasing:Lcom/db/chart/view/animation/easing/BaseEasingMethod;

    invoke-virtual {v10}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    .line 406
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/db/chart/model/ChartSet;

    iget-object v11, p0, Lcom/db/chart/view/animation/Animation;->mEasing:Lcom/db/chart/view/animation/easing/BaseEasingMethod;

    invoke-virtual {v11, v9}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->next(F)F

    move-result v11

    iget v12, p0, Lcom/db/chart/view/animation/Animation;->mAlphaSpeed:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget-object v12, p0, Lcom/db/chart/view/animation/Animation;->mSetsAlpha:[F

    aget v12, v12, v4

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/db/chart/model/ChartSet;->setAlpha(F)V

    .line 408
    :cond_3
    invoke-direct {p0, v4, v5, v9, v8}, Lcom/db/chart/view/animation/Animation;->getEntryUpdate(IIF[F)Z

    move-result v10

    if-nez v10, :cond_4

    .line 409
    const/4 v11, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v10, v5}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v10

    aput v10, v8, v11

    .line 410
    const/4 v11, 0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v10, v5}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v10

    aput v10, v8, v11

    .line 412
    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v10, v5}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-virtual {v10, v11, v12}, Lcom/db/chart/model/ChartEntry;->setCoordinates(FF)V

    .line 401
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 399
    .end local v9    # "timeNormalized":F
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 416
    .end local v5    # "j":I
    :cond_6
    iget-wide v10, p0, Lcom/db/chart/view/animation/Animation;->mCurrentGlobalDuration:J

    iget-wide v12, p0, Lcom/db/chart/view/animation/Animation;->mGlobalDuration:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_7

    iget-boolean v10, p0, Lcom/db/chart/view/animation/Animation;->mCancelled:Z

    if-nez v10, :cond_7

    .line 417
    iget-object v10, p0, Lcom/db/chart/view/animation/Animation;->mChartView:Lcom/db/chart/view/ChartView;

    iget-object v11, p0, Lcom/db/chart/view/animation/Animation;->mAnimator:Ljava/lang/Runnable;

    const-wide/16 v12, 0x14

    invoke-virtual {v10, v11, v12, v13}, Lcom/db/chart/view/ChartView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    iget-wide v10, p0, Lcom/db/chart/view/animation/Animation;->mCurrentGlobalDuration:J

    const-wide/16 v12, 0x14

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/db/chart/view/animation/Animation;->mCurrentGlobalDuration:J

    .line 427
    :goto_4
    return-object p1

    .line 420
    :cond_7
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/db/chart/view/animation/Animation;->mCurrentGlobalDuration:J

    .line 421
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/db/chart/view/animation/Animation;->mGlobalInitTime:J

    .line 422
    iget-object v10, p0, Lcom/db/chart/view/animation/Animation;->mRunnable:Ljava/lang/Runnable;

    if-eqz v10, :cond_8

    .line 423
    iget-object v10, p0, Lcom/db/chart/view/animation/Animation;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 424
    :cond_8
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/db/chart/view/animation/Animation;->mPlaying:Z

    goto :goto_4
.end method

.method private init(I)V
    .locals 6
    .param p1, "duration"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 165
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/db/chart/view/animation/Animation;->mGlobalDuration:J

    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/db/chart/view/animation/Animation;->mOverlapingFactor:F

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/db/chart/view/animation/Animation;->mAlphaSpeed:I

    .line 168
    new-instance v0, Lcom/db/chart/view/animation/easing/QuintEase;

    invoke-direct {v0}, Lcom/db/chart/view/animation/easing/QuintEase;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/animation/Animation;->mEasing:Lcom/db/chart/view/animation/easing/BaseEasingMethod;

    .line 169
    iput v2, p0, Lcom/db/chart/view/animation/Animation;->mStartXFactor:F

    .line 170
    iput v2, p0, Lcom/db/chart/view/animation/Animation;->mStartYFactor:F

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/chart/view/animation/Animation;->mPlaying:Z

    .line 173
    iput-wide v4, p0, Lcom/db/chart/view/animation/Animation;->mCurrentGlobalDuration:J

    .line 174
    iput-wide v4, p0, Lcom/db/chart/view/animation/Animation;->mGlobalInitTime:J

    .line 175
    return-void
.end method

.method private normalizeTime(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/db/chart/view/animation/Animation;->mCurrentDuration:[J

    aget-wide v0, v0, p1

    long-to-float v0, v0

    iget v1, p0, Lcom/db/chart/view/animation/Animation;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private prepareAnimation(Lcom/db/chart/view/ChartView;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "chartView"    # Lcom/db/chart/view/ChartView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/db/chart/view/ChartView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getData()Ljava/util/ArrayList;

    move-result-object v6

    .line 261
    .local v6, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    iget v11, p0, Lcom/db/chart/view/animation/Animation;->mStartXFactor:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_0

    .line 262
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getInnerChartLeft()F

    move-result v11

    .line 263
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getInnerChartRight()F

    move-result v12

    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getInnerChartLeft()F

    move-result v13

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/db/chart/view/animation/Animation;->mStartXFactor:F

    mul-float/2addr v12, v13

    add-float v9, v11, v12

    .line 269
    .local v9, "x":F
    :goto_0
    iget v11, p0, Lcom/db/chart/view/animation/Animation;->mStartYFactor:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_1

    .line 270
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v11

    .line 271
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v12

    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getInnerChartTop()F

    move-result v13

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/db/chart/view/animation/Animation;->mStartYFactor:F

    mul-float/2addr v12, v13

    sub-float v10, v11, v12

    .line 276
    .local v10, "y":F
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 277
    .local v5, "nSets":I
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v11}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v4

    .line 279
    .local v4, "nEntries":I
    new-array v11, v5, [F

    iput-object v11, p0, Lcom/db/chart/view/animation/Animation;->mSetsAlpha:[F

    .line 281
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    .local v8, "startValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    .local v1, "endValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 289
    iget-object v12, p0, Lcom/db/chart/view/animation/Animation;->mSetsAlpha:[F

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v11}, Lcom/db/chart/model/ChartSet;->getAlpha()F

    move-result v11

    aput v11, v12, v2

    .line 291
    const/4 v11, 0x2

    filled-new-array {v4, v11}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    .line 292
    .local v7, "startSet":[[F
    const/4 v11, 0x2

    filled-new-array {v4, v11}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 294
    .local v0, "endSet":[[F
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v4, :cond_4

    .line 296
    iget v11, p0, Lcom/db/chart/view/animation/Animation;->mStartXFactor:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    .line 297
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getOrientation()Lcom/db/chart/view/ChartView$Orientation;

    move-result-object v11

    sget-object v12, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v11, v12, :cond_2

    .line 298
    aget-object v12, v7, v3

    const/4 v13, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v11, v3}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v11

    aput v11, v12, v13

    .line 302
    :goto_4
    iget v11, p0, Lcom/db/chart/view/animation/Animation;->mStartYFactor:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3

    .line 303
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getOrientation()Lcom/db/chart/view/ChartView$Orientation;

    move-result-object v11

    sget-object v12, Lcom/db/chart/view/ChartView$Orientation;->HORIZONTAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v11, v12, :cond_3

    .line 304
    aget-object v12, v7, v3

    const/4 v13, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v11, v3}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v11

    aput v11, v12, v13

    .line 308
    :goto_5
    aget-object v12, v0, v3

    const/4 v13, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v11, v3}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v11

    aput v11, v12, v13

    .line 309
    aget-object v12, v0, v3

    const/4 v13, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v11, v3}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/db/chart/model/ChartEntry;->getY()F

    move-result v11

    aput v11, v12, v13

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 266
    .end local v0    # "endSet":[[F
    .end local v1    # "endValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "nEntries":I
    .end local v5    # "nSets":I
    .end local v7    # "startSet":[[F
    .end local v8    # "startValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_0
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getZeroPosition()F

    move-result v9

    .restart local v9    # "x":F
    goto/16 :goto_0

    .line 274
    :cond_1
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getZeroPosition()F

    move-result v10

    .restart local v10    # "y":F
    goto/16 :goto_1

    .line 300
    .restart local v0    # "endSet":[[F
    .restart local v1    # "endValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "nEntries":I
    .restart local v5    # "nSets":I
    .restart local v7    # "startSet":[[F
    .restart local v8    # "startValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    :cond_2
    aget-object v11, v7, v3

    const/4 v12, 0x0

    aput v9, v11, v12

    goto :goto_4

    .line 306
    :cond_3
    aget-object v11, v7, v3

    const/4 v12, 0x1

    aput v10, v11, v12

    goto :goto_5

    .line 312
    :cond_4
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 316
    .end local v0    # "endSet":[[F
    .end local v3    # "j":I
    .end local v7    # "startSet":[[F
    :cond_5
    iget-object v11, p0, Lcom/db/chart/view/animation/Animation;->mEasing:Lcom/db/chart/view/animation/easing/BaseEasingMethod;

    invoke-virtual {v11}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->getState()I

    move-result v11

    if-nez v11, :cond_6

    .line 317
    invoke-direct {p0, p1, v8, v1}, Lcom/db/chart/view/animation/Animation;->prepareAnimation(Lcom/db/chart/view/ChartView;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 319
    :goto_6
    return-object v11

    :cond_6
    invoke-direct {p0, p1, v1, v8}, Lcom/db/chart/view/animation/Animation;->prepareAnimation(Lcom/db/chart/view/ChartView;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_6
.end method

.method private prepareAnimation(Lcom/db/chart/view/ChartView;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18
    .param p1, "chartView"    # Lcom/db/chart/view/ChartView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/db/chart/view/ChartView;",
            "Ljava/util/ArrayList",
            "<[[F>;",
            "Ljava/util/ArrayList",
            "<[[F>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "start":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    .local p3, "end":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 195
    .local v5, "nSets":I
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    array-length v4, v10

    .line 197
    .local v4, "nEntries":I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/db/chart/view/animation/Animation;->mChartView:Lcom/db/chart/view/ChartView;

    .line 198
    new-array v10, v4, [J

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/db/chart/view/animation/Animation;->mCurrentDuration:[J

    .line 201
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/db/chart/view/animation/Animation;->mOrder:[I

    if-nez v10, :cond_0

    .line 202
    new-array v10, v4, [I

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/db/chart/view/animation/Animation;->mOrder:[I

    .line 203
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/db/chart/view/animation/Animation;->mOrder:[I

    array-length v10, v10

    if-ge v2, v10, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/db/chart/view/animation/Animation;->mOrder:[I

    aput v2, v10, v2

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/db/chart/view/animation/Animation;->mOrder:[I

    array-length v10, v10

    if-eq v10, v4, :cond_1

    .line 209
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Size of overlap order different than set\'s entries size."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 213
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/db/chart/view/animation/Animation;->mGlobalDuration:J

    int-to-long v12, v4

    div-long/2addr v10, v12

    long-to-float v6, v10

    .line 215
    .local v6, "noOverlapDuration":F
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/db/chart/view/animation/Animation;->mGlobalDuration:J

    long-to-float v10, v10

    sub-float/2addr v10, v6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/db/chart/view/animation/Animation;->mOverlapingFactor:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    float-to-int v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/db/chart/view/animation/Animation;->mDuration:I

    .line 219
    filled-new-array {v5, v4}, [I

    move-result-object v10

    const-class v11, Landroid/graphics/PathMeasure;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Landroid/graphics/PathMeasure;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/db/chart/view/animation/Animation;->mPathMeasures:[[Landroid/graphics/PathMeasure;

    .line 220
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 221
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 223
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 224
    .local v7, "path":Landroid/graphics/Path;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    aget-object v10, v10, v3

    const/4 v11, 0x0

    aget v11, v10, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    invoke-virtual {v7, v11, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    aget-object v10, v10, v3

    const/4 v11, 0x0

    aget v11, v10, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    invoke-virtual {v7, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/db/chart/view/animation/Animation;->mPathMeasures:[[Landroid/graphics/PathMeasure;

    aget-object v10, v10, v2

    new-instance v11, Landroid/graphics/PathMeasure;

    const/4 v12, 0x0

    invoke-direct {v11, v7, v12}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    aput-object v11, v10, v3

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 220
    .end local v7    # "path":Landroid/graphics/Path;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 232
    .end local v3    # "j":I
    :cond_3
    new-array v10, v4, [J

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/db/chart/view/animation/Animation;->mInitTime:[J

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/db/chart/view/animation/Animation;->mGlobalInitTime:J

    .line 235
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_4

    .line 237
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/db/chart/view/animation/Animation;->mGlobalInitTime:J

    int-to-long v12, v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/db/chart/view/animation/Animation;->mGlobalDuration:J

    int-to-long v0, v4

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    mul-long/2addr v12, v14

    add-long v8, v10, v12

    .line 239
    .local v8, "noOverlapInitTime":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/db/chart/view/animation/Animation;->mInitTime:[J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/db/chart/view/animation/Animation;->mOrder:[I

    aget v11, v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/db/chart/view/animation/Animation;->mOverlapingFactor:F

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/db/chart/view/animation/Animation;->mGlobalInitTime:J

    sub-long v14, v8, v14

    long-to-float v13, v14

    mul-float/2addr v12, v13

    float-to-long v12, v12

    sub-long v12, v8, v12

    aput-wide v12, v10, v11

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 243
    .end local v8    # "noOverlapInitTime":J
    :cond_4
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/db/chart/view/animation/Animation;->mPlaying:Z

    .line 244
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/db/chart/view/animation/Animation;->mChartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {v10}, Lcom/db/chart/view/ChartView;->getData()Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/db/chart/view/animation/Animation;->getUpdate(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    return-object v10
.end method

.method private setOverlap(F)Lcom/db/chart/view/animation/Animation;
    .locals 3
    .param p1, "factor"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 525
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overlap factor must be between 0 and 1, the current defined is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    iput p1, p0, Lcom/db/chart/view/animation/Animation;->mOverlapingFactor:F

    .line 530
    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/view/animation/Animation;->mCancelled:Z

    .line 449
    return-void
.end method

.method public getEndAction()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/db/chart/view/animation/Animation;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/db/chart/view/animation/Animation;->mPlaying:Z

    return v0
.end method

.method public prepareEnterAnimation(Lcom/db/chart/view/ChartView;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "chartView"    # Lcom/db/chart/view/ChartView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/db/chart/view/ChartView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/db/chart/view/animation/Animation;->mEasing:Lcom/db/chart/view/animation/easing/BaseEasingMethod;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->setState(I)V

    .line 335
    invoke-direct {p0, p1}, Lcom/db/chart/view/animation/Animation;->prepareAnimation(Lcom/db/chart/view/ChartView;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public prepareExitAnimation(Lcom/db/chart/view/ChartView;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "chartView"    # Lcom/db/chart/view/ChartView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/db/chart/view/ChartView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/db/chart/view/animation/Animation;->mEasing:Lcom/db/chart/view/animation/easing/BaseEasingMethod;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->setState(I)V

    .line 364
    invoke-direct {p0, p1}, Lcom/db/chart/view/animation/Animation;->prepareAnimation(Lcom/db/chart/view/ChartView;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public prepareUpdateAnimation(Lcom/db/chart/view/ChartView;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "chartView"    # Lcom/db/chart/view/ChartView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/db/chart/view/ChartView;",
            "Ljava/util/ArrayList",
            "<[[F>;",
            "Ljava/util/ArrayList",
            "<[[F>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    .local p2, "start":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    .local p3, "end":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    iget-object v0, p0, Lcom/db/chart/view/animation/Animation;->mEasing:Lcom/db/chart/view/animation/easing/BaseEasingMethod;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->setState(I)V

    .line 350
    invoke-direct {p0, p1, p2, p3}, Lcom/db/chart/view/animation/Animation;->prepareAnimation(Lcom/db/chart/view/ChartView;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(I)Lcom/db/chart/view/animation/Animation;
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 592
    iput p1, p0, Lcom/db/chart/view/animation/Animation;->mAlphaSpeed:I

    .line 593
    return-object p0
.end method

.method public setDuration(I)Lcom/db/chart/view/animation/Animation;
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 509
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/db/chart/view/animation/Animation;->mGlobalDuration:J

    .line 510
    return-object p0
.end method

.method public setEasing(Lcom/db/chart/view/animation/easing/BaseEasingMethod;)Lcom/db/chart/view/animation/Animation;
    .locals 0
    .param p1, "easing"    # Lcom/db/chart/view/animation/easing/BaseEasingMethod;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/db/chart/view/animation/Animation;->mEasing:Lcom/db/chart/view/animation/easing/BaseEasingMethod;

    .line 499
    return-object p0
.end method

.method public setEndAction(Ljava/lang/Runnable;)Lcom/db/chart/view/animation/Animation;
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/db/chart/view/animation/Animation;->mRunnable:Ljava/lang/Runnable;

    .line 561
    return-object p0
.end method

.method public setOverlap(F[I)Lcom/db/chart/view/animation/Animation;
    .locals 0
    .param p1, "factor"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2, "order"    # [I

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/db/chart/view/animation/Animation;->setOverlap(F)Lcom/db/chart/view/animation/Animation;

    .line 548
    iput-object p2, p0, Lcom/db/chart/view/animation/Animation;->mOrder:[I

    .line 549
    return-object p0
.end method

.method public setStartPoint(FF)Lcom/db/chart/view/animation/Animation;
    .locals 0
    .param p1, "xFactor"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = -1.0
            to = 1.0
        .end annotation
    .end param
    .param p2, "yFactor"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = -1.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 577
    iput p1, p0, Lcom/db/chart/view/animation/Animation;->mStartXFactor:F

    .line 578
    iput p2, p0, Lcom/db/chart/view/animation/Animation;->mStartYFactor:F

    .line 579
    return-object p0
.end method

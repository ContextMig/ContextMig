.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field mNeedsCancel:Z

.field mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 140
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    new-array v3, v4, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 152
    new-array v3, v4, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 161
    new-array v3, v4, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 164
    new-array v3, v4, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 167
    new-array v3, v4, [F

    fill-array-data v3, :array_4

    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 210
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 213
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const v3, 0x44c4e000    # 1575.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v0, v3

    .line 214
    .local v0, "maxVelocity":I
    const v3, 0x439d8000    # 315.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v2, v3

    .line 215
    .local v2, "minVelocity":I
    int-to-float v3, v0

    int-to-float v4, v0

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 216
    int-to-float v3, v2

    int-to-float v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 218
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 219
    invoke-virtual {p0, v8, v8}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 220
    invoke-virtual {p0, v5, v5}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 221
    invoke-virtual {p0, v7, v7}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 222
    sget v3, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 223
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 224
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 225
    return-void

    .line 149
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 152
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 161
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 164
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 167
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 9
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    .prologue
    const/4 v7, 0x0

    .line 548
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v3, v8, p1

    .line 549
    .local v3, "relativeEdge":F
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v0, v8, p1

    .line 550
    .local v0, "maximumEdge":F
    invoke-direct {p0, v3, p3, v0, p2}, Landroid/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v6

    .line 551
    .local v6, "value":F
    cmpl-float v8, v6, v7

    if-nez v8, :cond_0

    .line 567
    :goto_0
    return v7

    .line 556
    :cond_0
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v4, v8, p1

    .line 557
    .local v4, "relativeVelocity":F
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v2, v8, p1

    .line 558
    .local v2, "minimumVelocity":F
    iget-object v8, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v1, v8, p1

    .line 559
    .local v1, "maximumVelocity":F
    mul-float v5, v4, p4

    .line 564
    .local v5, "targetVelocity":F
    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 565
    mul-float v7, v6, v5

    invoke-static {v7, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    goto :goto_0

    .line 567
    :cond_1
    neg-float v7, v6

    mul-float/2addr v7, v5

    invoke-static {v7, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    neg-float v7, v7

    goto :goto_0
.end method

.method static constrain(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 672
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 677
    .end local p2    # "max":F
    :goto_0
    return p2

    .line 674
    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 675
    goto :goto_0

    :cond_1
    move p2, p0

    .line 677
    goto :goto_0
.end method

.method static constrain(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 662
    if-le p0, p2, :cond_0

    .line 667
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 664
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 665
    goto :goto_0

    :cond_1
    move p2, p0

    .line 667
    goto :goto_0
.end method

.method private constrainEdgeValue(FF)F
    .locals 4
    .param p1, "current"    # F
    .param p2, "leading"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 633
    cmpl-float v2, p2, v0

    if-nez v2, :cond_1

    .line 658
    :cond_0
    :goto_0
    return v0

    .line 637
    :cond_1
    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 640
    :pswitch_0
    cmpg-float v2, p1, p2

    if-gez v2, :cond_0

    .line 641
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_2

    .line 643
    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_0

    .line 644
    :cond_2
    iget-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 646
    goto :goto_0

    .line 651
    :pswitch_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 653
    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 7
    .param p1, "relativeValue"    # F
    .param p2, "size"    # F
    .param p3, "maxValue"    # F
    .param p4, "current"    # F

    .prologue
    const/4 v5, 0x0

    .line 616
    mul-float v6, p1, p2

    invoke-static {v6, v5, p3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    .line 617
    .local v0, "edgeSize":F
    invoke-direct {p0, p4, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v3

    .line 618
    .local v3, "valueLeading":F
    sub-float v6, p2, p4

    invoke-direct {p0, v6, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v4

    .line 619
    .local v4, "valueTrailing":F
    sub-float v2, v4, v3

    .line 621
    .local v2, "value":F
    cmpg-float v6, v2, v5

    if-gez v6, :cond_1

    .line 622
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v6, v2

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    neg-float v1, v5

    .line 629
    .local v1, "interpolated":F
    :goto_0
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v5

    .end local v1    # "interpolated":F
    :cond_0
    return v5

    .line 623
    :cond_1
    cmpl-float v6, v2, v5

    if-lez v6, :cond_0

    .line 624
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .restart local v1    # "interpolated":F
    goto :goto_0
.end method

.method private requestStop()V
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_0
.end method

.method private startAnimating()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 513
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;)V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 517
    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 518
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 520
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v0, :cond_1

    .line 521
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 528
    :goto_0
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 529
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method cancelTargetTouch()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 686
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 687
    .local v0, "eventTime":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 689
    .local v8, "cancel":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 690
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 691
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 465
    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v5, :cond_0

    .line 494
    :goto_0
    return v4

    .line 469
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 470
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 494
    :cond_1
    :goto_1
    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v5, :cond_2

    :goto_2
    move v4, v3

    goto :goto_0

    .line 472
    :pswitch_0
    iput-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 473
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 477
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    .line 476
    invoke-direct {p0, v4, v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v1

    .line 479
    .local v1, "xTargetVelocity":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 478
    invoke-direct {p0, v3, v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v2

    .line 480
    .local v2, "yTargetVelocity":F
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v5, v1, v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 484
    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_1

    .line 490
    .end local v1    # "xTargetVelocity":F
    .end local v2    # "yTargetVelocity":F
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_1

    :cond_2
    move v3, v4

    .line 494
    goto :goto_2

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "delayMillis"    # I

    .prologue
    .line 419
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    .line 420
    return-object p0
.end method

.method public setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 358
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    .line 359
    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 236
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    .line 239
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    .line 240
    return-object p0
.end method

.method public setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 402
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 403
    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 295
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 296
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 297
    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMin"    # F
    .param p2, "verticalMin"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 314
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 315
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 316
    return-object p0
.end method

.method public setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 452
    return-object p0
.end method

.method public setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 436
    return-object p0
.end method

.method public setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 379
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 380
    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 336
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 337
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 338
    return-object p0
.end method

.method shouldAnimate()Z
    .locals 4

    .prologue
    .line 501
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 502
    .local v1, "scroller":Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v2

    .line 503
    .local v2, "verticalDirection":I
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    .line 505
    .local v0, "horizontalDirection":I
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

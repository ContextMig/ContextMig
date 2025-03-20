.class public Lcom/jjoe64/graphview/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field protected mCompleteRange:Landroid/graphics/RectF;

.field protected mCurrentViewport:Landroid/graphics/RectF;

.field private mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeEffectBottomActive:Z

.field private mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeEffectLeftActive:Z

.field private mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeEffectRightActive:Z

.field private mEdgeEffectTop:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeEffectTopActive:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final mGraphView:Lcom/jjoe64/graphview/GraphView;

.field private mIsScalable:Z

.field private mIsScrollable:Z

.field private mPaint:Landroid/graphics/Paint;

.field protected mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field protected mScalingActive:Z

.field protected mScalingBeginLeft:F

.field protected mScalingBeginWidth:F

.field protected mScroller:Landroid/widget/OverScroller;

.field private mScrollerStartViewport:Landroid/graphics/RectF;

.field protected mScrollingReferenceX:F

.field private mXAxisBoundsManual:Z

.field private mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

.field private mYAxisBoundsManual:Z

.field private mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 3
    .param p1, "graphView"    # Lcom/jjoe64/graphview/GraphView;

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/jjoe64/graphview/Viewport$1;

    invoke-direct {v0, p0}, Lcom/jjoe64/graphview/Viewport$1;-><init>(Lcom/jjoe64/graphview/Viewport;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 148
    new-instance v0, Lcom/jjoe64/graphview/Viewport$2;

    invoke-direct {v0, p0}, Lcom/jjoe64/graphview/Viewport$2;-><init>(Lcom/jjoe64/graphview/Viewport;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 297
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    .line 304
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    .line 392
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mScrollerStartViewport:Landroid/graphics/RectF;

    .line 398
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    .line 432
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mScroller:Landroid/widget/OverScroller;

    .line 433
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectTop:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 434
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 435
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 436
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 437
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mGestureDetector:Landroid/view/GestureDetector;

    .line 438
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 440
    iput-object p1, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 441
    sget-object v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 442
    sget-object v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 443
    const/4 v0, 0x0

    iput v0, p0, Lcom/jjoe64/graphview/Viewport;->mBackgroundColor:I

    .line 444
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mPaint:Landroid/graphics/Paint;

    .line 445
    return-void
.end method

.method static synthetic access$000(Lcom/jjoe64/graphview/Viewport;)Lcom/jjoe64/graphview/GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jjoe64/graphview/Viewport;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Viewport;->mIsScalable:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/jjoe64/graphview/Viewport;)Landroid/support/v4/widget/EdgeEffectCompat;
    .locals 1
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/jjoe64/graphview/Viewport;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRightActive:Z

    return p1
.end method

.method static synthetic access$202(Lcom/jjoe64/graphview/Viewport;Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
    .locals 0
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;
    .param p1, "x1"    # Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jjoe64/graphview/Viewport;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Viewport;->mIsScrollable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/jjoe64/graphview/Viewport;)V
    .locals 0
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jjoe64/graphview/Viewport;->releaseEdgeEffects()V

    return-void
.end method

.method static synthetic access$500(Lcom/jjoe64/graphview/Viewport;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mScrollerStartViewport:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jjoe64/graphview/Viewport;)Landroid/support/v4/widget/EdgeEffectCompat;
    .locals 1
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    return-object v0
.end method

.method static synthetic access$702(Lcom/jjoe64/graphview/Viewport;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeftActive:Z

    return p1
.end method

.method static synthetic access$800(Lcom/jjoe64/graphview/Viewport;)Landroid/support/v4/widget/EdgeEffectCompat;
    .locals 1
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    return-object v0
.end method

.method static synthetic access$902(Lcom/jjoe64/graphview/Viewport;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jjoe64/graphview/Viewport;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectBottomActive:Z

    return p1
.end method

.method private drawEdgeEffectsUnclipped(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 817
    const/4 v0, 0x0

    .line 819
    .local v0, "needsInvalidate":Z
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 820
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 821
    .local v1, "restoreCount":I
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 822
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectTop:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 823
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    const/4 v0, 0x1

    .line 826
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 840
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 841
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 842
    .restart local v1    # "restoreCount":I
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v3

    iget-object v4, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 843
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 844
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v3

    iget-object v4, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 845
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 846
    const/4 v0, 0x1

    .line 848
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 851
    .end local v1    # "restoreCount":I
    :cond_3
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 852
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 853
    .restart local v1    # "restoreCount":I
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v2

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 854
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, v2, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 855
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v3

    iget-object v4, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 856
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 857
    const/4 v0, 0x1

    .line 859
    :cond_4
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 862
    .end local v1    # "restoreCount":I
    :cond_5
    if-eqz v0, :cond_6

    .line 863
    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 865
    :cond_6
    return-void
.end method

.method private fling(II)V
    .locals 11
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v5, 0x0

    .line 714
    const/4 p2, 0x0

    .line 715
    invoke-direct {p0}, Lcom/jjoe64/graphview/Viewport;->releaseEdgeEffects()V

    .line 717
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mScrollerStartViewport:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 718
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v3

    sub-int v6, v0, v3

    .line 719
    .local v6, "maxX":I
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v3

    sub-int v8, v0, v3

    .line 720
    .local v8, "maxY":I
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v1, v0, v6

    .line 721
    .local v1, "startX":I
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v2, v0, v8

    .line 722
    .local v2, "startY":I
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 723
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 730
    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v3

    div-int/lit8 v9, v3, 0x2

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 731
    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v3

    div-int/lit8 v10, v3, 0x2

    move v3, p1

    move v4, p2

    move v7, v5

    .line 723
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 732
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 733
    return-void
.end method

.method private releaseEdgeEffects()V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRightActive:Z

    iput-boolean v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeftActive:Z

    .line 703
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 704
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mEdgeEffectRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 705
    return-void
.end method


# virtual methods
.method public calcCompleteRange()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 518
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v7}, Lcom/jjoe64/graphview/GraphView;->getSeries()Ljava/util/List;

    move-result-object v3

    .line 519
    .local v3, "series":Ljava/util/List;, "Ljava/util/List<Lcom/jjoe64/graphview/series/Series;>;"
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 520
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/series/Series;

    invoke-interface {v7}, Lcom/jjoe64/graphview/series/Series;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 521
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/series/Series;

    invoke-interface {v7}, Lcom/jjoe64/graphview/series/Series;->getLowestValueX()D

    move-result-wide v0

    .line 522
    .local v0, "d":D
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/series/Series;

    .line 523
    .local v2, "s":Lcom/jjoe64/graphview/series/Series;
    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->getLowestValueX()D

    move-result-wide v8

    cmpl-double v8, v0, v8

    if-lez v8, :cond_0

    .line 524
    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->getLowestValueX()D

    move-result-wide v0

    goto :goto_0

    .line 527
    .end local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    :cond_1
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    double-to-float v8, v0

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 529
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/series/Series;

    invoke-interface {v7}, Lcom/jjoe64/graphview/series/Series;->getHighestValueX()D

    move-result-wide v0

    .line 530
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/series/Series;

    .line 531
    .restart local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->getHighestValueX()D

    move-result-wide v8

    cmpg-double v8, v0, v8

    if-gez v8, :cond_2

    .line 532
    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->getHighestValueX()D

    move-result-wide v0

    goto :goto_1

    .line 535
    .end local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    :cond_3
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    double-to-float v8, v0

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 537
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/series/Series;

    invoke-interface {v7}, Lcom/jjoe64/graphview/series/Series;->getLowestValueY()D

    move-result-wide v0

    .line 538
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/series/Series;

    .line 539
    .restart local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->getLowestValueY()D

    move-result-wide v8

    cmpl-double v8, v0, v8

    if-lez v8, :cond_4

    .line 540
    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->getLowestValueY()D

    move-result-wide v0

    goto :goto_2

    .line 543
    .end local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    :cond_5
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    double-to-float v8, v0

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 545
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/series/Series;

    invoke-interface {v7}, Lcom/jjoe64/graphview/series/Series;->getHighestValueY()D

    move-result-wide v0

    .line 546
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/series/Series;

    .line 547
    .restart local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->getHighestValueY()D

    move-result-wide v8

    cmpg-double v8, v0, v8

    if-gez v8, :cond_6

    .line 548
    invoke-interface {v2}, Lcom/jjoe64/graphview/series/Series;->getHighestValueY()D

    move-result-wide v0

    goto :goto_3

    .line 551
    .end local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    :cond_7
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    double-to-float v8, v0

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 555
    .end local v0    # "d":D
    :cond_8
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    sget-object v8, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    if-ne v7, v8, :cond_9

    .line 556
    sget-object v7, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 558
    :cond_9
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    sget-object v8, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    if-ne v7, v8, :cond_a

    .line 559
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 560
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 563
    :cond_a
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    sget-object v8, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    if-ne v7, v8, :cond_b

    .line 564
    sget-object v7, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 566
    :cond_b
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    sget-object v8, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->INITIAL:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    if-ne v7, v8, :cond_f

    .line 567
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 568
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 600
    :cond_c
    :goto_4
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v14

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 601
    :cond_d
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v14

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 602
    :cond_e
    return-void

    .line 569
    :cond_f
    iget-boolean v7, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsManual:Z

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsManual:Z

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_c

    .line 572
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 573
    .restart local v0    # "d":D
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/series/Series;

    .line 574
    .restart local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-double v10, v7

    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-double v12, v7

    invoke-interface {v2, v10, v11, v12, v13}, Lcom/jjoe64/graphview/series/Series;->getValues(DD)Ljava/util/Iterator;

    move-result-object v6

    .line 575
    .local v6, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jjoe64/graphview/series/DataPointInterface;>;"
    :cond_11
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 576
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v7}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v4

    .line 577
    .local v4, "v":D
    cmpl-double v7, v0, v4

    if-lez v7, :cond_11

    .line 578
    move-wide v0, v4

    goto :goto_5

    .line 583
    .end local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    .end local v4    # "v":D
    .end local v6    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jjoe64/graphview/series/DataPointInterface;>;"
    :cond_12
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    double-to-float v8, v0

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 586
    const-wide/16 v0, 0x1

    .line 587
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/series/Series;

    .line 588
    .restart local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-double v10, v7

    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-double v12, v7

    invoke-interface {v2, v10, v11, v12, v13}, Lcom/jjoe64/graphview/series/Series;->getValues(DD)Ljava/util/Iterator;

    move-result-object v6

    .line 589
    .restart local v6    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jjoe64/graphview/series/DataPointInterface;>;"
    :cond_14
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 590
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v7}, Lcom/jjoe64/graphview/series/DataPointInterface;->getY()D

    move-result-wide v4

    .line 591
    .restart local v4    # "v":D
    cmpg-double v7, v0, v4

    if-gez v7, :cond_14

    .line 592
    move-wide v0, v4

    goto :goto_6

    .line 596
    .end local v2    # "s":Lcom/jjoe64/graphview/series/Series;
    .end local v4    # "v":D
    .end local v6    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jjoe64/graphview/series/DataPointInterface;>;"
    :cond_15
    iget-object v7, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    double-to-float v8, v0

    iput v8, v7, Landroid/graphics/RectF;->top:F

    goto/16 :goto_4
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 894
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/Viewport;->drawEdgeEffectsUnclipped(Landroid/graphics/Canvas;)V

    .line 895
    return-void
.end method

.method public drawFirst(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 876
    iget v0, p0, Lcom/jjoe64/graphview/Viewport;->mBackgroundColor:I

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jjoe64/graphview/Viewport;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 878
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 879
    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 880
    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 881
    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v0

    iget-object v3, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 882
    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v0

    iget-object v4, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/jjoe64/graphview/Viewport;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 878
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 886
    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lcom/jjoe64/graphview/Viewport;->mBackgroundColor:I

    return v0
.end method

.method public getMaxX(Z)D
    .locals 2
    .param p1, "completeRange"    # Z

    .prologue
    .line 623
    if-eqz p1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v0

    .line 626
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v0

    goto :goto_0
.end method

.method public getMaxY(Z)D
    .locals 2
    .param p1, "completeRange"    # Z

    .prologue
    .line 649
    if-eqz p1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 652
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    goto :goto_0
.end method

.method public getMinX(Z)D
    .locals 2
    .param p1, "completeRange"    # Z

    .prologue
    .line 610
    if-eqz p1, :cond_0

    .line 611
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 613
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    goto :goto_0
.end method

.method public getMinY(Z)D
    .locals 2
    .param p1, "completeRange"    # Z

    .prologue
    .line 636
    if-eqz p1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    .line 639
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    goto :goto_0
.end method

.method public getXAxisBoundsStatus()Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    return-object v0
.end method

.method public getYAxisBoundsStatus()Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    return-object v0
.end method

.method public isScalable()Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Viewport;->mIsScalable:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Viewport;->mIsScrollable:Z

    return v0
.end method

.method public isXAxisBoundsManual()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsManual:Z

    return v0
.end method

.method public isYAxisBoundsManual()Z
    .locals 1

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsManual:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 455
    iget-object v1, p0, Lcom/jjoe64/graphview/Viewport;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 456
    .local v0, "b":Z
    iget-object v1, p0, Lcom/jjoe64/graphview/Viewport;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 457
    return v0
.end method

.method public scrollToEnd()V
    .locals 4

    .prologue
    .line 985
    iget-boolean v1, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsManual:Z

    if-eqz v1, :cond_0

    .line 986
    iget-object v1, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 987
    .local v0, "size":F
    iget-object v1, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 988
    iget-object v1, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jjoe64/graphview/Viewport;->mCompleteRange:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 989
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/jjoe64/graphview/Viewport;->mScrollingReferenceX:F

    .line 990
    iget-object v1, p0, Lcom/jjoe64/graphview/Viewport;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jjoe64/graphview/GraphView;->onDataChanged(ZZ)V

    .line 994
    .end local v0    # "size":F
    :goto_0
    return-void

    .line 992
    :cond_0
    const-string v1, "GraphView"

    const-string v2, "scrollToEnd works only with manual x axis bounds"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "mBackgroundColor"    # I

    .prologue
    .line 909
    iput p1, p0, Lcom/jjoe64/graphview/Viewport;->mBackgroundColor:I

    .line 910
    return-void
.end method

.method public setMaxX(D)V
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 683
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    double-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 684
    return-void
.end method

.method public setMaxY(D)V
    .locals 3
    .param p1, "y"    # D

    .prologue
    .line 663
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    double-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 664
    return-void
.end method

.method public setMinX(D)V
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 693
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    double-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 694
    return-void
.end method

.method public setMinY(D)V
    .locals 3
    .param p1, "y"    # D

    .prologue
    .line 673
    iget-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mCurrentViewport:Landroid/graphics/RectF;

    double-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 674
    return-void
.end method

.method public setScalable(Z)V
    .locals 1
    .param p1, "mIsScalable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 926
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Viewport;->mIsScalable:Z

    .line 927
    if-eqz p1, :cond_0

    .line 928
    iput-boolean v0, p0, Lcom/jjoe64/graphview/Viewport;->mIsScrollable:Z

    .line 931
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Viewport;->setXAxisBoundsManual(Z)V

    .line 934
    :cond_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "mIsScrollable"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Viewport;->mIsScrollable:Z

    .line 496
    return-void
.end method

.method public setXAxisBoundsManual(Z)V
    .locals 1
    .param p1, "mXAxisBoundsManual"    # Z

    .prologue
    .line 951
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsManual:Z

    .line 952
    if-eqz p1, :cond_0

    .line 953
    sget-object v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->FIX:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 955
    :cond_0
    return-void
.end method

.method public setXAxisBoundsStatus(Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)V
    .locals 0
    .param p1, "s"    # Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/jjoe64/graphview/Viewport;->mXAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 470
    return-void
.end method

.method public setYAxisBoundsManual(Z)V
    .locals 1
    .param p1, "mYAxisBoundsManual"    # Z

    .prologue
    .line 970
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsManual:Z

    .line 971
    if-eqz p1, :cond_0

    .line 972
    sget-object v0, Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;->FIX:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    iput-object v0, p0, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 974
    :cond_0
    return-void
.end method

.method public setYAxisBoundsStatus(Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;)V
    .locals 0
    .param p1, "s"    # Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/jjoe64/graphview/Viewport;->mYAxisBoundsStatus:Lcom/jjoe64/graphview/Viewport$AxisBoundsStatus;

    .line 482
    return-void
.end method

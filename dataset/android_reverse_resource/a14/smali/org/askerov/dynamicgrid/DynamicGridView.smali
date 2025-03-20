.class public Lorg/askerov/dynamicgrid/DynamicGridView;
.super Landroid/widget/GridView;
.source "DynamicGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/askerov/dynamicgrid/DynamicGridView$DynamicGridModification;,
        Lorg/askerov/dynamicgrid/DynamicGridView$OnSelectedItemBitmapCreationListener;,
        Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;,
        Lorg/askerov/dynamicgrid/DynamicGridView$OnDropListener;,
        Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;,
        Lorg/askerov/dynamicgrid/DynamicGridView$SwitchCellAnimator;
    }
.end annotation


# static fields
.field private static final INVALID_ID:I = -0x1

.field private static final MOVE_DURATION:I = 0x12c

.field private static final SMOOTH_SCROLL_AMOUNT_AT_EDGE:I = 0x8


# instance fields
.field private final idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActivePointerId:I

.field private mCellIsMobile:Z

.field private mCurrentModification:Lorg/askerov/dynamicgrid/DynamicGridView$DynamicGridModification;

.field private mDownX:I

.field private mDownY:I

.field private mDragListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;

.field private mDropListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDropListener;

.field private mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

.field private mHoverCellCurrentBounds:Landroid/graphics/Rect;

.field private mHoverCellOriginalBounds:Landroid/graphics/Rect;

.field private mIsEditMode:Z

.field private final mIsEditModeEnabled:Z

.field private mIsMobileScrolling:Z

.field private mIsWaitingForScrollFinish:Z

.field private mLastEventX:I

.field private mLastEventY:I

.field private mMobileItemId:J

.field private mMobileView:Landroid/view/View;

.field private mModificationStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/askerov/dynamicgrid/DynamicGridView$DynamicGridModification;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlapIfSwitchStraightLine:I

.field private mReorderAnimation:Z

.field private final mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSelectedItemBitmapCreationListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnSelectedItemBitmapCreationListener;

.field private mSmoothScrollAmountAtEdge:I

.field private mTotalOffsetX:I

.field private mTotalOffsetY:I

.field private mUserScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetY:I

    .line 43
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetX:I

    const/4 v1, -0x1

    .line 45
    iput v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownX:I

    .line 46
    iput v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownY:I

    .line 47
    iput v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventY:I

    .line 48
    iput v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventX:I

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->idList:Ljava/util/List;

    const-wide/16 v2, -0x1

    .line 55
    iput-wide v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    .line 57
    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mCellIsMobile:Z

    .line 58
    iput v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mActivePointerId:I

    .line 61
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mSmoothScrollAmountAtEdge:I

    .line 62
    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsWaitingForScrollFinish:Z

    .line 63
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mScrollState:I

    .line 65
    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsEditMode:Z

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsEditModeEnabled:Z

    .line 656
    new-instance v0, Lorg/askerov/dynamicgrid/DynamicGridView$2;

    invoke-direct {v0, p0}, Lorg/askerov/dynamicgrid/DynamicGridView$2;-><init>(Lorg/askerov/dynamicgrid/DynamicGridView;)V

    iput-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 82
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetY:I

    .line 43
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetX:I

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownX:I

    .line 46
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownY:I

    .line 47
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventY:I

    .line 48
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventX:I

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->idList:Ljava/util/List;

    const-wide/16 v1, -0x1

    .line 55
    iput-wide v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    .line 57
    iput-boolean p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mCellIsMobile:Z

    .line 58
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mActivePointerId:I

    .line 61
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mSmoothScrollAmountAtEdge:I

    .line 62
    iput-boolean p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsWaitingForScrollFinish:Z

    .line 63
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mScrollState:I

    .line 65
    iput-boolean p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsEditMode:Z

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsEditModeEnabled:Z

    .line 656
    new-instance p2, Lorg/askerov/dynamicgrid/DynamicGridView$2;

    invoke-direct {p2, p0}, Lorg/askerov/dynamicgrid/DynamicGridView$2;-><init>(Lorg/askerov/dynamicgrid/DynamicGridView;)V

    iput-object p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 87
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetY:I

    .line 43
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetX:I

    const/4 p3, -0x1

    .line 45
    iput p3, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownX:I

    .line 46
    iput p3, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownY:I

    .line 47
    iput p3, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventY:I

    .line 48
    iput p3, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventX:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->idList:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    .line 57
    iput-boolean p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mCellIsMobile:Z

    .line 58
    iput p3, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mActivePointerId:I

    .line 61
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mSmoothScrollAmountAtEdge:I

    .line 62
    iput-boolean p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsWaitingForScrollFinish:Z

    .line 63
    iput p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mScrollState:I

    .line 65
    iput-boolean p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsEditMode:Z

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsEditModeEnabled:Z

    .line 656
    new-instance p2, Lorg/askerov/dynamicgrid/DynamicGridView$2;

    invoke-direct {p2, p0}, Lorg/askerov/dynamicgrid/DynamicGridView$2;-><init>(Lorg/askerov/dynamicgrid/DynamicGridView;)V

    iput-object p2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 92
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private above(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2

    .line 543
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private aboveLeft(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2

    .line 535
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private aboveRight(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2

    .line 539
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic access$000(Lorg/askerov/dynamicgrid/DynamicGridView;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetY:I

    return p0
.end method

.method static synthetic access$002(Lorg/askerov/dynamicgrid/DynamicGridView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetY:I

    return p1
.end method

.method static synthetic access$1002(Lorg/askerov/dynamicgrid/DynamicGridView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mScrollState:I

    return p1
.end method

.method static synthetic access$1100(Lorg/askerov/dynamicgrid/DynamicGridView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mCellIsMobile:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/askerov/dynamicgrid/DynamicGridView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsMobileScrolling:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/askerov/dynamicgrid/DynamicGridView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->handleMobileCellScroll()V

    return-void
.end method

.method static synthetic access$1400(Lorg/askerov/dynamicgrid/DynamicGridView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsWaitingForScrollFinish:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/askerov/dynamicgrid/DynamicGridView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->touchEventsEnded()V

    return-void
.end method

.method static synthetic access$1600(Lorg/askerov/dynamicgrid/DynamicGridView;J)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/askerov/dynamicgrid/DynamicGridView;->updateNeighborViewsForId(J)V

    return-void
.end method

.method static synthetic access$1700(Lorg/askerov/dynamicgrid/DynamicGridView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->handleCellSwitch()V

    return-void
.end method

.method static synthetic access$200(Lorg/askerov/dynamicgrid/DynamicGridView;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetX:I

    return p0
.end method

.method static synthetic access$202(Lorg/askerov/dynamicgrid/DynamicGridView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetX:I

    return p1
.end method

.method static synthetic access$400(Lorg/askerov/dynamicgrid/DynamicGridView;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/askerov/dynamicgrid/DynamicGridView;->animateReorder(II)V

    return-void
.end method

.method static synthetic access$500(Lorg/askerov/dynamicgrid/DynamicGridView;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lorg/askerov/dynamicgrid/DynamicGridView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lorg/askerov/dynamicgrid/DynamicGridView;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/askerov/dynamicgrid/DynamicGridView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mReorderAnimation:Z

    return p1
.end method

.method static synthetic access$800(Lorg/askerov/dynamicgrid/DynamicGridView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->updateEnableState()V

    return-void
.end method

.method static synthetic access$900(Lorg/askerov/dynamicgrid/DynamicGridView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mUserScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method private animateReorder(II)V
    .locals 7

    const/4 v0, 0x1

    if-le p2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 572
    :goto_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 574
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 575
    invoke-direct {p0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->getId(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/askerov/dynamicgrid/DynamicGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    .line 576
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getColumnCount()I

    move-result v5

    rem-int v5, v1, v5

    if-nez v5, :cond_1

    .line 577
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getColumnCount()I

    move-result v6

    sub-int/2addr v6, v0

    mul-int v5, v5, v6

    int-to-float v5, v5

    .line 578
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 577
    invoke-direct {p0, v4, v5, v6}, Lorg/askerov/dynamicgrid/DynamicGridView;->createTranslationAnimations(Landroid/view/View;FF)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 580
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v4, v5, v3}, Lorg/askerov/dynamicgrid/DynamicGridView;->createTranslationAnimations(Landroid/view/View;FF)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 584
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v4, :cond_4

    .line 585
    invoke-direct {p0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->getId(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/askerov/dynamicgrid/DynamicGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v4

    .line 586
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getColumnCount()I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getColumnCount()I

    move-result v6

    rem-int/2addr v5, v6

    if-nez v5, :cond_3

    .line 587
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getColumnCount()I

    move-result v6

    sub-int/2addr v6, v0

    mul-int v5, v5, v6

    int-to-float v5, v5

    .line 588
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    .line 587
    invoke-direct {p0, v4, v5, v6}, Lorg/askerov/dynamicgrid/DynamicGridView;->createTranslationAnimations(Landroid/view/View;FF)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 590
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {p0, v4, v5, v3}, Lorg/askerov/dynamicgrid/DynamicGridView;->createTranslationAnimations(Landroid/view/View;FF)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 595
    :cond_4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 596
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x12c

    .line 597
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 598
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 599
    new-instance p2, Lorg/askerov/dynamicgrid/DynamicGridView$1;

    invoke-direct {p2, p0}, Lorg/askerov/dynamicgrid/DynamicGridView$1;-><init>(Lorg/askerov/dynamicgrid/DynamicGridView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 612
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private below(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2

    .line 547
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private belowLeft(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2

    .line 527
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private belowRight(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2

    .line 531
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private createTranslationAnimations(Landroid/view/View;FF)Landroid/animation/AnimatorSet;
    .locals 6

    const-string v0, "translationX"

    const/4 v1, 0x2

    .line 616
    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x0

    const/4 v4, 0x1

    aput p2, v2, v4

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "translationY"

    .line 617
    new-array v5, v1, [F

    aput p3, v5, v3

    aput p2, v5, v4

    invoke-static {p1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 618
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 619
    new-array p3, v1, [Landroid/animation/Animator;

    aput-object v0, p3, v3

    aput-object p1, p3, v4

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p2
.end method

.method private getAdapterInterface()Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;

    return-object v0
.end method

.method private getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 169
    invoke-direct {p0, p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 171
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 173
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {p1, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    .line 174
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    .line 176
    iget-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v4
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getColumnAndRowForView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 559
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    .line 560
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getColumnCount()I

    move-result v0

    .line 561
    rem-int v1, p1, v0

    .line 562
    div-int/2addr p1, v0

    .line 563
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getColumnCount()I
    .locals 1

    .line 150
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getAdapterInterface()Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;->getColumnCount()I

    move-result v0

    return v0
.end method

.method private getId(I)J
    .locals 2

    .line 567
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleCellSwitch()V
    .locals 13

    .line 416
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventY:I

    iget v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownY:I

    sub-int/2addr v0, v1

    .line 417
    iget v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventX:I

    iget v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownX:I

    sub-int/2addr v1, v2

    .line 418
    iget-object v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetY:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 419
    iget-object v3, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetX:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 420
    iget-wide v4, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    invoke-virtual {p0, v4, v5}, Lorg/askerov/dynamicgrid/DynamicGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileView:Landroid/view/View;

    .line 424
    iget-object v4, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileView:Landroid/view/View;

    invoke-direct {p0, v4}, Lorg/askerov/dynamicgrid/DynamicGridView;->getColumnAndRowForView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v4

    .line 425
    iget-object v5, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->idList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 426
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {p0, v9, v10}, Lorg/askerov/dynamicgrid/DynamicGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 428
    invoke-direct {p0, v9}, Lorg/askerov/dynamicgrid/DynamicGridView;->getColumnAndRowForView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v10

    .line 429
    invoke-direct {p0, v10, v4}, Lorg/askerov/dynamicgrid/DynamicGridView;->aboveRight(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 430
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v2, v11, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    if-gt v3, v11, :cond_8

    .line 431
    :cond_1
    invoke-direct {p0, v10, v4}, Lorg/askerov/dynamicgrid/DynamicGridView;->aboveLeft(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 432
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v2, v11, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v11

    if-lt v3, v11, :cond_8

    .line 433
    :cond_2
    invoke-direct {p0, v10, v4}, Lorg/askerov/dynamicgrid/DynamicGridView;->belowRight(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 434
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v2, v11, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    if-gt v3, v11, :cond_8

    .line 435
    :cond_3
    invoke-direct {p0, v10, v4}, Lorg/askerov/dynamicgrid/DynamicGridView;->belowLeft(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 436
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v2, v11, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v11

    if-lt v3, v11, :cond_8

    .line 437
    :cond_4
    invoke-direct {p0, v10, v4}, Lorg/askerov/dynamicgrid/DynamicGridView;->above(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 438
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    iget v12, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mOverlapIfSwitchStraightLine:I

    sub-int/2addr v11, v12

    if-lt v2, v11, :cond_8

    .line 439
    :cond_5
    invoke-direct {p0, v10, v4}, Lorg/askerov/dynamicgrid/DynamicGridView;->below(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 440
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mOverlapIfSwitchStraightLine:I

    add-int/2addr v11, v12

    if-gt v2, v11, :cond_8

    .line 441
    :cond_6
    invoke-direct {p0, v10, v4}, Lorg/askerov/dynamicgrid/DynamicGridView;->right(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 442
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    iget v12, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mOverlapIfSwitchStraightLine:I

    add-int/2addr v11, v12

    if-gt v3, v11, :cond_8

    .line 443
    :cond_7
    invoke-direct {p0, v10, v4}, Lorg/askerov/dynamicgrid/DynamicGridView;->left(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 444
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    iget v11, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mOverlapIfSwitchStraightLine:I

    sub-int/2addr v10, v11

    if-ge v3, v10, :cond_0

    .line 445
    :cond_8
    invoke-static {v9}, Lorg/askerov/dynamicgrid/DynamicGridUtils;->getViewX(Landroid/view/View;)F

    move-result v10

    iget-object v11, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileView:Landroid/view/View;

    invoke-static {v11}, Lorg/askerov/dynamicgrid/DynamicGridUtils;->getViewX(Landroid/view/View;)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 446
    invoke-static {v9}, Lorg/askerov/dynamicgrid/DynamicGridUtils;->getViewY(Landroid/view/View;)F

    move-result v11

    iget-object v12, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileView:Landroid/view/View;

    invoke-static {v12}, Lorg/askerov/dynamicgrid/DynamicGridUtils;->getViewY(Landroid/view/View;)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v12, v10, v6

    if-ltz v12, :cond_0

    cmpl-float v12, v11, v8

    if-ltz v12, :cond_0

    move-object v7, v9

    move v6, v10

    move v8, v11

    goto/16 :goto_0

    :cond_9
    if-eqz v7, :cond_c

    .line 456
    iget-object v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lorg/askerov/dynamicgrid/DynamicGridView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 457
    invoke-virtual {p0, v7}, Lorg/askerov/dynamicgrid/DynamicGridView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 459
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getAdapterInterface()Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;

    move-result-object v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_b

    .line 460
    invoke-interface {v4, v2}, Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;->canReorder(I)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4, v3}, Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;->canReorder(I)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    .line 464
    :cond_a
    invoke-direct {p0, v2, v3}, Lorg/askerov/dynamicgrid/DynamicGridView;->reorderElements(II)V

    .line 466
    iget v4, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventY:I

    iput v4, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownY:I

    .line 467
    iget v4, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventX:I

    iput v4, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownX:I

    .line 470
    new-instance v4, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;

    invoke-direct {v4, p0, v1, v0}, Lorg/askerov/dynamicgrid/DynamicGridView$LSwitchCellAnimator;-><init>(Lorg/askerov/dynamicgrid/DynamicGridView;II)V

    .line 471
    iget-wide v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    invoke-direct {p0, v0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->updateNeighborViewsForId(J)V

    .line 472
    invoke-interface {v4, v2, v3}, Lorg/askerov/dynamicgrid/DynamicGridView$SwitchCellAnimator;->animateSwitchCell(II)V

    goto :goto_2

    .line 461
    :cond_b
    :goto_1
    iget-wide v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    invoke-direct {p0, v0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->updateNeighborViewsForId(J)V

    return-void

    :cond_c
    :goto_2
    return-void
.end method

.method private handleMobileCellScroll()V
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsMobileScrolling:Z

    return-void
.end method

.method private left(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2

    .line 555
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private reorderElements(II)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDragListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDragListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;

    invoke-interface {v0, p1, p2}, Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;->onDragPositionsChanged(II)V

    .line 146
    :cond_0
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getAdapterInterface()Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;->reorderItems(II)V

    return-void
.end method

.method private reset(Landroid/view/View;)V
    .locals 3

    .line 386
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->idList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, -0x1

    .line 387
    iput-wide v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 389
    iput-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    const/4 p1, 0x0

    .line 391
    :goto_0
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    .line 392
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->invalidate()V

    return-void
.end method

.method private right(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2

    .line 551
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private startDragAtPosition(I)V
    .locals 4

    const/4 v0, 0x0

    .line 310
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetY:I

    .line 311
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetX:I

    .line 312
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    .line 313
    invoke-virtual {p0, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    .line 316
    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mSelectedItemBitmapCreationListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnSelectedItemBitmapCreationListener;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mSelectedItemBitmapCreationListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnSelectedItemBitmapCreationListener;

    iget-wide v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    invoke-interface {v1, v0, p1, v2, v3}, Lorg/askerov/dynamicgrid/DynamicGridView$OnSelectedItemBitmapCreationListener;->onPreSelectedItemBitmapCreation(Landroid/view/View;IJ)V

    .line 318
    :cond_0
    invoke-direct {p0, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    .line 319
    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mSelectedItemBitmapCreationListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnSelectedItemBitmapCreationListener;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mSelectedItemBitmapCreationListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnSelectedItemBitmapCreationListener;

    iget-wide v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    invoke-interface {v1, v0, p1, v2, v3}, Lorg/askerov/dynamicgrid/DynamicGridView$OnSelectedItemBitmapCreationListener;->onPostSelectedItemBitmapCreation(Landroid/view/View;IJ)V

    :cond_1
    const/4 v1, 0x4

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mCellIsMobile:Z

    .line 323
    iget-wide v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    invoke-direct {p0, v0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->updateNeighborViewsForId(J)V

    .line 324
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDragListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDragListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;

    invoke-interface {v0, p1}, Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;->onDragStarted(I)V

    :cond_2
    return-void
.end method

.method private touchEventsCancelled()V
    .locals 2

    .line 405
    iget-wide v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    invoke-virtual {p0, v0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 406
    iget-boolean v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mCellIsMobile:Z

    if-eqz v1, :cond_0

    .line 407
    invoke-direct {p0, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->reset(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mCellIsMobile:Z

    .line 410
    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsMobileScrolling:Z

    const/4 v0, -0x1

    .line 411
    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mActivePointerId:I

    return-void
.end method

.method private touchEventsEnded()V
    .locals 4

    .line 362
    iget-wide v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mMobileItemId:J

    invoke-virtual {p0, v0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 363
    iget-boolean v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mCellIsMobile:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsWaitingForScrollFinish:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 364
    iput-boolean v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mCellIsMobile:Z

    .line 365
    iput-boolean v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsWaitingForScrollFinish:Z

    .line 366
    iput-boolean v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsMobileScrolling:Z

    const/4 v1, -0x1

    .line 367
    iput v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mActivePointerId:I

    .line 372
    iget v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mScrollState:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsWaitingForScrollFinish:Z

    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 377
    iget-object v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 378
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->invalidate()V

    .line 379
    invoke-direct {p0, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->reset(Landroid/view/View;)V

    goto :goto_0

    .line 381
    :cond_2
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->touchEventsCancelled()V

    :goto_0
    return-void
.end method

.method private updateEnableState()V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mReorderAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->setEnabled(Z)V

    return-void
.end method

.method private updateNeighborViewsForId(J)V
    .locals 3

    .line 193
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->idList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/askerov/dynamicgrid/DynamicGridView;->getPositionForID(J)I

    move-result p1

    .line 195
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getFirstVisiblePosition()I

    move-result p2

    :goto_0
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getLastVisiblePosition()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-eq p1, p2, :cond_0

    .line 196
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getAdapterInterface()Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/askerov/dynamicgrid/DynamicGridAdapterInterface;->canReorder(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->idList:Ljava/util/List;

    invoke-direct {p0, p2}, Lorg/askerov/dynamicgrid/DynamicGridView;->getId(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 625
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 626
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getPositionForID(J)I
    .locals 0

    .line 206
    invoke-virtual {p0, p1, p2}, Lorg/askerov/dynamicgrid/DynamicGridView;->getViewForId(J)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getViewForId(J)Landroid/view/View;
    .locals 6

    .line 215
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 216
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    .line 217
    :goto_0
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 218
    invoke-virtual {p0, v2}, Lorg/askerov/dynamicgrid/DynamicGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v0, v2

    .line 220
    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 7

    .line 335
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->computeVerticalScrollOffset()I

    move-result v0

    .line 336
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getHeight()I

    move-result v1

    .line 337
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->computeVerticalScrollExtent()I

    move-result v2

    .line 338
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->computeVerticalScrollRange()I

    move-result v3

    .line 339
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v4, :cond_0

    if-lez v0, :cond_0

    .line 343
    iget p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mSmoothScrollAmountAtEdge:I

    neg-int p1, p1

    invoke-virtual {p0, p1, v6}, Lorg/askerov/dynamicgrid/DynamicGridView;->smoothScrollBy(II)V

    return v5

    :cond_0
    add-int/2addr v4, p1

    if-lt v4, v1, :cond_1

    add-int/2addr v0, v2

    if-ge v0, v3, :cond_1

    .line 348
    iget p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mSmoothScrollAmountAtEdge:I

    invoke-virtual {p0, p1, v6}, Lorg/askerov/dynamicgrid/DynamicGridView;->smoothScrollBy(II)V

    return v5

    :cond_1
    return v6
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 139
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mSmoothScrollAmountAtEdge:I

    .line 140
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07008b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mOverlapIfSwitchStraightLine:I

    return-void
.end method

.method public isEditMode()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsEditMode:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 280
    :pswitch_0
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->touchEventsCancelled()V

    .line 282
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDropListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDropListener;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDropListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDropListener;

    invoke-interface {v0}, Lorg/askerov/dynamicgrid/DynamicGridView$OnDropListener;->onActionDrop()V

    goto/16 :goto_0

    .line 246
    :pswitch_1
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mActivePointerId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_0

    .line 250
    :cond_0
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventY:I

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventX:I

    .line 254
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventY:I

    iget v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownY:I

    sub-int/2addr v0, v2

    .line 255
    iget v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mLastEventX:I

    iget v3, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownX:I

    sub-int/2addr v2, v3

    .line 257
    iget-boolean v3, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mCellIsMobile:Z

    if-eqz v3, :cond_3

    .line 258
    iget-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iget v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetX:I

    add-int/2addr v3, v2

    iget-object v2, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mTotalOffsetY:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 260
    iget-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 261
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->invalidate()V

    .line 262
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->handleCellSwitch()V

    .line 263
    iput-boolean v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsMobileScrolling:Z

    .line 264
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->handleMobileCellScroll()V

    return v1

    .line 270
    :pswitch_2
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->touchEventsEnded()V

    .line 272
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDropListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDropListener;

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDropListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDropListener;

    invoke-interface {v0}, Lorg/askerov/dynamicgrid/DynamicGridView$OnDropListener;->onActionDrop()V

    goto :goto_0

    .line 232
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownX:I

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownY:I

    .line 234
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mActivePointerId:I

    .line 235
    iget-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsEditMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->layoutChildren()V

    .line 237
    iget v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownX:I

    iget v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDownY:I

    invoke-virtual {p0, v0, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->pointToPosition(II)I

    move-result v0

    .line 238
    invoke-direct {p0, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->startDragAtPosition(I)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 294
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 297
    iget v1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mActivePointerId:I

    if-ne v0, v1, :cond_3

    .line 298
    invoke-direct {p0}, Lorg/askerov/dynamicgrid/DynamicGridView;->touchEventsEnded()V

    .line 306
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 31
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 358
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnDragListener(Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mDragListener:Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mUserScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public startEditMode()V
    .locals 1

    const/4 v0, -0x1

    .line 108
    invoke-virtual {p0, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->startEditMode(I)V

    return-void
.end method

.method public startEditMode(I)V
    .locals 2

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->startDragAtPosition(I)V

    .line 123
    :cond_0
    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsEditMode:Z

    return-void
.end method

.method public stopEditMode()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lorg/askerov/dynamicgrid/DynamicGridView;->mIsEditMode:Z

    .line 128
    invoke-virtual {p0, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.class public Lcom/fsck/k9/activity/misc/SwipeGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;
    }
.end annotation


# static fields
.field public static final BEZEL_SWIPE_THRESHOLD:I = 0x14

.field private static final SWIPE_MAX_OFF_PATH_DIP:F = 250.0f

.field private static final SWIPE_THRESHOLD_VELOCITY_DIP:F = 325.0f


# instance fields
.field private mLastOnDownEvent:Landroid/view/MotionEvent;

.field private final mListener:Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;

.field private mMaxOffPath:I

.field private mMinVelocity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 23
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;->mLastOnDownEvent:Landroid/view/MotionEvent;

    .line 25
    if-nez p2, :cond_0

    .line 26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'listener\' may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    iput-object p2, p0, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;->mListener:Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .local v0, "gestureScale":F
    const v1, 0x43a28000    # 325.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;->mMinVelocity:I

    .line 35
    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;->mMaxOffPath:I

    .line 36
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;->mLastOnDownEvent:Landroid/view/MotionEvent;

    .line 41
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x0

    .line 48
    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;->mLastOnDownEvent:Landroid/view/MotionEvent;

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 84
    :cond_1
    :goto_0
    return v5

    .line 58
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v0, v3, v4

    .line 59
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v1, v3, v4

    .line 62
    .local v1, "deltaY":F
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 65
    .local v2, "minDistance":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;->mMaxOffPath:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;->mMinVelocity:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 69
    mul-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 70
    iget-object v3, p0, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;->mListener:Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;

    invoke-interface {v3, p1, p2}, Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;->onSwipeRightToLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 79
    :goto_1
    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v3

    goto :goto_0

    .line 71
    :cond_3
    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 72
    iget-object v3, p0, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;->mListener:Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;

    invoke-interface {v3, p1, p2}, Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;->onSwipeLeftToRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.class public Lde/baumann/browser/View/SwipeToBoundListener;
.super Ljava/lang/Object;
.source "SwipeToBoundListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;
    }
.end annotation


# instance fields
.field private final animTime:J

.field private final callback:Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;

.field private canSwitch:Z

.field private downX:F

.field private final slop:I

.field private swiping:Z

.field private swipingLeft:Z

.field private swipingSlop:I

.field private targetWidth:I

.field private translationX:F

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lde/baumann/browser/View/SwipeToBoundListener;->targetWidth:I

    .line 31
    iput-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->view:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lde/baumann/browser/View/SwipeToBoundListener;->callback:Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;

    .line 34
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->slop:I

    .line 36
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x10e0000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->animTime:J

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swiping:Z

    .line 38
    iput-boolean p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swipingLeft:Z

    .line 39
    iput-boolean p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->canSwitch:Z

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/View/SwipeToBoundListener;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lde/baumann/browser/View/SwipeToBoundListener;->canSwitch:Z

    return p0
.end method

.method static synthetic access$100(Lde/baumann/browser/View/SwipeToBoundListener;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swipingLeft:Z

    return p0
.end method

.method static synthetic access$200(Lde/baumann/browser/View/SwipeToBoundListener;)Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;
    .locals 0

    .line 8
    iget-object p0, p0, Lde/baumann/browser/View/SwipeToBoundListener;->callback:Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;

    return-object p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 44
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->callback:Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;

    invoke-interface {p1}, Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;->canSwipe()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 48
    :cond_0
    iget p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->translationX:F

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 49
    iget p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->targetWidth:I

    const/4 v2, 0x2

    if-ge p1, v2, :cond_1

    .line 50
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->targetWidth:I

    .line 53
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 89
    :pswitch_0
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_2

    goto/16 :goto_3

    .line 93
    :cond_2
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lde/baumann/browser/View/SwipeToBoundListener;->animTime:J

    .line 95
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 98
    iput v1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->downX:F

    .line 99
    iput v1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->translationX:F

    .line 100
    iput-boolean v0, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swiping:Z

    .line 101
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 102
    iput-object v2, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_3

    .line 106
    :pswitch_1
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_3

    goto/16 :goto_3

    .line 110
    :cond_3
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v2, p0, Lde/baumann/browser/View/SwipeToBoundListener;->downX:F

    sub-float/2addr p1, v2

    .line 113
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lde/baumann/browser/View/SwipeToBoundListener;->slop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-lez v2, :cond_7

    .line 114
    iput-boolean v3, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swiping:Z

    cmpg-float v2, p1, v1

    if-gez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 115
    :goto_0
    iput-boolean v2, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swipingLeft:Z

    .line 116
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v4, p0, Lde/baumann/browser/View/SwipeToBoundListener;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lde/baumann/browser/Unit/ViewUnit;->dp2px(Landroid/content/Context;F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lde/baumann/browser/View/SwipeToBoundListener;->canSwitch:Z

    cmpl-float v1, p1, v1

    if-lez v1, :cond_6

    .line 117
    iget v1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->slop:I

    goto :goto_2

    :cond_6
    iget v1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->slop:I

    neg-int v1, v1

    :goto_2
    iput v1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swipingSlop:I

    .line 118
    iget-object v1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 120
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/lit8 p2, p2, 0x3

    invoke-virtual {v1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 122
    iget-object p2, p0, Lde/baumann/browser/View/SwipeToBoundListener;->view:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 123
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 126
    :cond_7
    iget-boolean p2, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swiping:Z

    if-eqz p2, :cond_a

    .line 127
    iput p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->translationX:F

    .line 128
    iget-object p2, p0, Lde/baumann/browser/View/SwipeToBoundListener;->view:Landroid/view/View;

    iget v0, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swipingSlop:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 129
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->callback:Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;

    invoke-interface {p1}, Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;->onSwipe()V

    return v3

    .line 62
    :pswitch_2
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_8

    goto :goto_3

    .line 66
    :cond_8
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 67
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 69
    iget-boolean p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swiping:Z

    if-eqz p1, :cond_9

    .line 70
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lde/baumann/browser/View/SwipeToBoundListener;->animTime:J

    .line 72
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lde/baumann/browser/View/SwipeToBoundListener$1;

    invoke-direct {p2, p0}, Lde/baumann/browser/View/SwipeToBoundListener$1;-><init>(Lde/baumann/browser/View/SwipeToBoundListener;)V

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 81
    :cond_9
    iput v1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->downX:F

    .line 82
    iput v1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->translationX:F

    .line 83
    iput-boolean v0, p0, Lde/baumann/browser/View/SwipeToBoundListener;->swiping:Z

    .line 84
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 85
    iput-object v2, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_3

    .line 55
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->downX:F

    .line 57
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 58
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToBoundListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return v0

    :cond_a
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

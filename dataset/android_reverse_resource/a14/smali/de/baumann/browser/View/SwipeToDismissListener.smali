.class public Lde/baumann/browser/View/SwipeToDismissListener;
.super Ljava/lang/Object;
.source "SwipeToDismissListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/baumann/browser/View/SwipeToDismissListener$DismissCallback;
    }
.end annotation


# instance fields
.field private final animTime:J

.field private final callback:Lde/baumann/browser/View/SwipeToDismissListener$DismissCallback;

.field private downY:F

.field private final maxFlingVelocity:I

.field private final minFlingVelocity:I

.field private final slop:I

.field private swiping:Z

.field private swipingSlop:I

.field private translationY:F

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private final view:Landroid/view/View;

.field private viewHeight:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lde/baumann/browser/View/SwipeToDismissListener$DismissCallback;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lde/baumann/browser/View/SwipeToDismissListener;->viewHeight:I

    .line 30
    iput-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->callback:Lde/baumann/browser/View/SwipeToDismissListener$DismissCallback;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lde/baumann/browser/View/SwipeToDismissListener;->slop:I

    .line 35
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lde/baumann/browser/View/SwipeToDismissListener;->minFlingVelocity:I

    .line 36
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->maxFlingVelocity:I

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x10e0000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->animTime:J

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/View/SwipeToDismissListener;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lde/baumann/browser/View/SwipeToDismissListener;->performDismiss()V

    return-void
.end method

.method static synthetic access$100(Lde/baumann/browser/View/SwipeToDismissListener;)Lde/baumann/browser/View/SwipeToDismissListener$DismissCallback;
    .locals 0

    .line 9
    iget-object p0, p0, Lde/baumann/browser/View/SwipeToDismissListener;->callback:Lde/baumann/browser/View/SwipeToDismissListener$DismissCallback;

    return-object p0
.end method

.method static synthetic access$200(Lde/baumann/browser/View/SwipeToDismissListener;)Landroid/view/View;
    .locals 0

    .line 9
    iget-object p0, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    return-object p0
.end method

.method private performDismiss()V
    .locals 5

    .line 154
    iget-object v0, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    .line 157
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v3, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lde/baumann/browser/View/SwipeToDismissListener;->animTime:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 158
    new-instance v3, Lde/baumann/browser/View/SwipeToDismissListener$2;

    invoke-direct {v3, p0, v0, v1}, Lde/baumann/browser/View/SwipeToDismissListener$2;-><init>(Lde/baumann/browser/View/SwipeToDismissListener;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    new-instance v1, Lde/baumann/browser/View/SwipeToDismissListener$3;

    invoke-direct {v1, p0, v0}, Lde/baumann/browser/View/SwipeToDismissListener$3;-><init>(Lde/baumann/browser/View/SwipeToDismissListener;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 42
    iget p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->translationY:F

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 43
    iget p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->viewHeight:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 44
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->viewHeight:I

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    .line 103
    :pswitch_0
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_1

    goto/16 :goto_9

    .line 107
    :cond_1
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lde/baumann/browser/View/SwipeToDismissListener;->animTime:J

    .line 110
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 113
    iput v0, p0, Lde/baumann/browser/View/SwipeToDismissListener;->downY:F

    .line 114
    iput v0, p0, Lde/baumann/browser/View/SwipeToDismissListener;->translationY:F

    .line 115
    iput-boolean v5, p0, Lde/baumann/browser/View/SwipeToDismissListener;->swiping:Z

    .line 116
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 117
    iput-object v2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_9

    .line 121
    :pswitch_1
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_2

    goto/16 :goto_9

    .line 124
    :cond_2
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->downY:F

    sub-float/2addr p1, v1

    .line 127
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->slop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 128
    iput-boolean v4, p0, Lde/baumann/browser/View/SwipeToDismissListener;->swiping:Z

    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    .line 129
    iget v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->slop:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->slop:I

    neg-int v1, v1

    :goto_0
    iput v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->swipingSlop:I

    .line 130
    iget-object v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 132
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/lit8 p2, p2, 0x3

    invoke-virtual {v1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 134
    iget-object p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 138
    :cond_4
    iget-boolean p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->swiping:Z

    if-eqz p2, :cond_10

    .line 139
    iput p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->translationY:F

    .line 140
    iget-object p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    iget v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->swipingSlop:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 141
    iget-object p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v1

    iget v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->viewHeight:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    sub-float p1, v3, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return v4

    .line 55
    :pswitch_2
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_5

    goto/16 :goto_9

    .line 59
    :cond_5
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 60
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {p1, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->downY:F

    sub-float/2addr p1, p2

    .line 63
    iget-object p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    .line 64
    iget-object v6, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 68
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lde/baumann/browser/View/SwipeToDismissListener;->viewHeight:I

    div-int/2addr v8, v1

    int-to-float v1, v8

    cmpl-float v1, v7, v1

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->swiping:Z

    if-eqz v1, :cond_7

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    move v4, p1

    const/4 p1, 0x1

    goto :goto_5

    .line 71
    :cond_7
    iget v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->minFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_b

    iget v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->maxFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_b

    iget-boolean v1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->swiping:Z

    if-eqz v1, :cond_b

    cmpg-float p2, p2, v0

    if-gez p2, :cond_8

    const/4 p2, 0x1

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    if-ne p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    .line 73
    :goto_4
    iget-object p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_c

    goto :goto_5

    :cond_b
    const/4 p1, 0x0

    :cond_c
    const/4 v4, 0x0

    :goto_5
    if-eqz p1, :cond_e

    .line 77
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v4, :cond_d

    iget p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->viewHeight:I

    :goto_6
    int-to-float p2, p2

    goto :goto_7

    :cond_d
    iget p2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->viewHeight:I

    neg-int p2, p2

    goto :goto_6

    .line 78
    :goto_7
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lde/baumann/browser/View/SwipeToDismissListener;->animTime:J

    .line 80
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lde/baumann/browser/View/SwipeToDismissListener$1;

    invoke-direct {p2, p0}, Lde/baumann/browser/View/SwipeToDismissListener$1;-><init>(Lde/baumann/browser/View/SwipeToDismissListener;)V

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_8

    .line 87
    :cond_e
    iget-boolean p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->swiping:Z

    if-eqz p1, :cond_f

    .line 88
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lde/baumann/browser/View/SwipeToDismissListener;->animTime:J

    .line 91
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 95
    :cond_f
    :goto_8
    iput v0, p0, Lde/baumann/browser/View/SwipeToDismissListener;->downY:F

    .line 96
    iput v0, p0, Lde/baumann/browser/View/SwipeToDismissListener;->translationY:F

    .line 97
    iput-boolean v5, p0, Lde/baumann/browser/View/SwipeToDismissListener;->swiping:Z

    .line 98
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 99
    iput-object v2, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_9

    .line 49
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->downY:F

    .line 50
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 51
    iget-object p1, p0, Lde/baumann/browser/View/SwipeToDismissListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return v5

    :cond_10
    :goto_9
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

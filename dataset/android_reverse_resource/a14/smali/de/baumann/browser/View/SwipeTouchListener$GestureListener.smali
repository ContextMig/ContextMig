.class final Lde/baumann/browser/View/SwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/baumann/browser/View/SwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/SwipeTouchListener;


# direct methods
.method private constructor <init>(Lde/baumann/browser/View/SwipeTouchListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lde/baumann/browser/View/SwipeTouchListener$GestureListener;->this$0:Lde/baumann/browser/View/SwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/baumann/browser/View/SwipeTouchListener;Lde/baumann/browser/View/SwipeTouchListener$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lde/baumann/browser/View/SwipeTouchListener$GestureListener;-><init>(Lde/baumann/browser/View/SwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 40
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    if-lez p1, :cond_1

    .line 43
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    cmpl-float p1, p2, v1

    if-lez p1, :cond_0

    .line 45
    iget-object p1, p0, Lde/baumann/browser/View/SwipeTouchListener$GestureListener;->this$0:Lde/baumann/browser/View/SwipeTouchListener;

    invoke-virtual {p1}, Lde/baumann/browser/View/SwipeTouchListener;->onSwipeRight()V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/View/SwipeTouchListener$GestureListener;->this$0:Lde/baumann/browser/View/SwipeTouchListener;

    invoke-virtual {p1}, Lde/baumann/browser/View/SwipeTouchListener;->onSwipeLeft()V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    cmpl-float p1, v0, v1

    if-lez p1, :cond_2

    .line 54
    iget-object p1, p0, Lde/baumann/browser/View/SwipeTouchListener$GestureListener;->this$0:Lde/baumann/browser/View/SwipeTouchListener;

    invoke-virtual {p1}, Lde/baumann/browser/View/SwipeTouchListener;->onSwipeBottom()V

    goto :goto_0

    .line 56
    :cond_2
    iget-object p1, p0, Lde/baumann/browser/View/SwipeTouchListener$GestureListener;->this$0:Lde/baumann/browser/View/SwipeTouchListener;

    invoke-virtual {p1}, Lde/baumann/browser/View/SwipeTouchListener;->onSwipeTop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    return p1
.end method

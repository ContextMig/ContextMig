.class final Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnSwipeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final SWIPE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x435f30e0b0ce500aL    # 3.511786350059524E16

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->this$0:Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;-><init>(Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;)V

    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    aput-boolean v1, v0, v1

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->$jacocoInit()[Z

    move-result-object v1

    .line 45
    const/4 v2, 0x0

    const/4 v0, 0x2

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 49
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const/4 v0, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    .line 50
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_0

    const/4 v0, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    const/16 v0, 0x10

    aput-boolean v6, v1, v0

    .line 69
    :goto_1
    const/16 v0, 0x13

    aput-boolean v6, v1, v0

    return v2

    .line 50
    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_1

    const/4 v0, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    const/16 v3, 0x11

    aput-boolean v6, v1, v3

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x12

    aput-boolean v6, v1, v0

    goto :goto_1

    .line 51
    :cond_1
    cmpl-float v0, v3, v8

    if-lez v0, :cond_2

    const/16 v0, 0x8

    const/4 v3, 0x1

    :try_start_2
    aput-boolean v3, v1, v0

    .line 52
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->this$0:Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->access$100(Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;)Lchan/android/app/pocketnote/app/calendar/Swiper;

    move-result-object v0

    invoke-interface {v0}, Lchan/android/app/pocketnote/app/calendar/Swiper;->onSwipeRight()V

    const/16 v0, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->this$0:Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->access$100(Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;)Lchan/android/app/pocketnote/app/calendar/Swiper;

    move-result-object v0

    invoke-interface {v0}, Lchan/android/app/pocketnote/app/calendar/Swiper;->onSwipeLeft()V

    const/16 v0, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 58
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v7

    if-gtz v3, :cond_4

    const/16 v0, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    goto :goto_0

    :cond_4
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v7

    if-gtz v3, :cond_5

    const/16 v0, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 59
    :cond_5
    cmpl-float v0, v0, v8

    if-lez v0, :cond_6

    const/16 v0, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 60
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->this$0:Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->access$100(Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;)Lchan/android/app/pocketnote/app/calendar/Swiper;

    move-result-object v0

    invoke-interface {v0}, Lchan/android/app/pocketnote/app/calendar/Swiper;->onSwipeDown()V

    const/16 v0, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 62
    :cond_6
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;->this$0:Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->access$100(Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;)Lchan/android/app/pocketnote/app/calendar/Swiper;

    move-result-object v0

    invoke-interface {v0}, Lchan/android/app/pocketnote/app/calendar/Swiper;->onSwipeUp()V

    const/16 v0, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

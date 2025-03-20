.class Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;
.super Ljava/lang/Object;
.source "OnSwipeListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final SWIPE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final swiper:Lchan/android/app/pocketnote/app/calendar/Swiper;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6f1bc9ea1fd4397dL    # 1.645755923259005E227

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnSwipeListener"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lchan/android/app/pocketnote/app/calendar/Swiper;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    .line 19
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$GestureListener;-><init>(Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 20
    iput-object p2, p0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->swiper:Lchan/android/app/pocketnote/app/calendar/Swiper;

    .line 21
    aput-boolean v4, v0, v4

    return-void
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;)Lchan/android/app/pocketnote/app/calendar/Swiper;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->swiper:Lchan/android/app/pocketnote/app/calendar/Swiper;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public getGestureDetector()Landroid/view/GestureDetector;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return v2
.end method

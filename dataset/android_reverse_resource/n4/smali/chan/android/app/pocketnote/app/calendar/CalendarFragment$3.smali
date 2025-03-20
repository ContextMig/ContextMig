.class Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/calendar/Swiper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2f6e1d6a48755533L    # -1.3254097585823277E80

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarFragment$3"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 198
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onSwipeDown()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 216
    const-string v1, "Swipe down"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSwipeLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 201
    const-string v1, "Swipe left"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    .line 202
    aput-boolean v2, v0, v2

    return-void
.end method

.method public onSwipeRight()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 206
    const-string v1, "Swipe right"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSwipeUp()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 211
    const-string v1, "Swipe up"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

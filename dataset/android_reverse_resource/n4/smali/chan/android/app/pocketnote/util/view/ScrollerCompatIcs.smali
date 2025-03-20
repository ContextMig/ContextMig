.class Lchan/android/app/pocketnote/util/view/ScrollerCompatIcs;
.super Ljava/lang/Object;
.source "ScrollerCompatIcs.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/ScrollerCompatIcs;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x254682605e6b0adeL    # -1.1043334154110212E129

    const-string v2, "chan/android/app/pocketnote/util/view/ScrollerCompatIcs"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/ScrollerCompatIcs;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/ScrollerCompatIcs;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getCurrVelocity(Landroid/widget/Scroller;)F
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/ScrollerCompatIcs;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method

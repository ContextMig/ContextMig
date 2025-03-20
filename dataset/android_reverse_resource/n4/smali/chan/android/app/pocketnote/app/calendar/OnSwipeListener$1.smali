.class synthetic Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$1;
.super Ljava/lang/Object;
.source "OnSwipeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5968e9af44fa99c3L    # 5.146492312607876E122

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnSwipeListener$1"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

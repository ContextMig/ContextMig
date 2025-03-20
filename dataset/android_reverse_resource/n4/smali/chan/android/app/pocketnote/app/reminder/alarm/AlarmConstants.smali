.class public Lchan/android/app/pocketnote/app/reminder/alarm/AlarmConstants;
.super Ljava/lang/Object;
.source "AlarmConstants.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ALARM_INTERVAL:J = 0x2932e00L

.field public static final ALARM_TRIGGER_AT_TIME:J

.field public static final FORCE_RELOAD:Ljava/lang/String; = "FORCE_RELOAD"

.field public static final LOG_TAG:Ljava/lang/String; = "AlertAlarm"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmConstants;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x340c15f199c8cc63L    # -7.812748465897193E57

    const-string v2, "chan/android/app/pocketnote/app/reminder/alarm/AlarmConstants"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmConstants;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmConstants;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    sput-wide v2, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmConstants;->ALARM_TRIGGER_AT_TIME:J

    aput-boolean v1, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmConstants;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

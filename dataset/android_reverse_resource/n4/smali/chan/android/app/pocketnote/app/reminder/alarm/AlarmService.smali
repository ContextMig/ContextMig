.class public Lchan/android/app/pocketnote/app/reminder/alarm/AlarmService;
.super Landroid/app/IntentService;
.source "AlarmService.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmService;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1cf5c07cf4cc7470L

    const-string v2, "chan/android/app/pocketnote/app/reminder/alarm/AlarmService"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmService;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmService;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    const-string v1, "Alert Service"

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmService;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmService;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 18
    aput-boolean v1, v0, v1

    return-void
.end method

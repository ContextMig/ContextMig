.class public Lorg/asdtm/goodweather/receiver/StartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartupReceiver.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "StartupReceiver"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/receiver/StartupReceiver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5203766a8406271L

    const-string v2, "org/asdtm/goodweather/receiver/StartupReceiver"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/receiver/StartupReceiver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/receiver/StartupReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/receiver/StartupReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-static {p1}, Lorg/asdtm/goodweather/utils/AppPreference;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    aput-boolean v2, v0, v2

    .line 17
    invoke-static {p1, v1}, Lorg/asdtm/goodweather/service/NotificationService;->setNotificationServiceAlarm(Landroid/content/Context;Z)V

    .line 18
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.class public Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;
.super Ljava/lang/Object;
.source "AppWidgetProviderAlarm.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "AppWidgetProviderAlarm"


# instance fields
.field private mCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7920a27ddbcacc1fL    # 2.8796644373300027E275

    const-string v2, "org/asdtm/goodweather/utils/AppWidgetProviderAlarm"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mCls:Ljava/lang/Class;

    .line 19
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-boolean v5, v0, v2

    .line 39
    const-string v2, "org.asdtm.goodweather.action.FORCED_APPWIDGET_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xb

    aput-boolean v5, v0, v2

    .line 40
    iget-object v2, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v5, v0, v2

    return-object v1
.end method


# virtual methods
.method public cancelAlarm()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->$jacocoInit()[Z

    move-result-object v1

    .line 32
    iget-object v0, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    .line 33
    iget-object v2, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mCls:Ljava/lang/Class;

    invoke-direct {p0, v2}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->getPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    .line 34
    iget-object v0, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mCls:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->getPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 35
    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    return-void
.end method

.method public isAlarmOff()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->$jacocoInit()[Z

    move-result-object v3

    .line 47
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mCls:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0xd

    aput-boolean v2, v3, v5

    .line 48
    const-string v5, "org.asdtm.goodweather.action.FORCED_APPWIDGET_UPDATE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0xe

    aput-boolean v2, v3, v5

    .line 49
    iget-object v5, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mContext:Landroid/content/Context;

    const/high16 v6, 0x20000000

    invoke-static {v5, v1, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 53
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v0, :cond_0

    const/16 v1, 0xf

    aput-boolean v2, v3, v1

    move v1, v2

    :goto_0
    const/16 v4, 0x11

    aput-boolean v2, v3, v4

    return v1

    :cond_0
    const/16 v4, 0x10

    aput-boolean v2, v3, v4

    goto :goto_0
.end method

.method public setAlarm()V
    .locals 10

    .prologue
    const/4 v1, 0x3

    const/4 v9, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->$jacocoInit()[Z

    move-result-object v7

    .line 22
    iget-object v2, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/asdtm/goodweather/utils/AppPreference;->getWidgetUpdatePeriod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-boolean v9, v7, v9

    .line 23
    invoke-static {v2}, Lorg/asdtm/goodweather/utils/Utils;->intervalMillisForAlarm(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v2, 0x2

    aput-boolean v9, v7, v2

    .line 24
    iget-object v2, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 25
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    aput-boolean v9, v7, v1

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p0, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->mCls:Ljava/lang/Class;

    const/4 v8, 0x4

    aput-boolean v9, v7, v8

    .line 28
    invoke-direct {p0, v6}, Lorg/asdtm/goodweather/utils/AppWidgetProviderAlarm;->getPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v8, 0x5

    aput-boolean v9, v7, v8

    .line 25
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 29
    const/4 v1, 0x6

    aput-boolean v9, v7, v1

    return-void
.end method

.class public Lcz/martykan/forecastie/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;,
        Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;,
        Lcz/martykan/forecastie/AlarmReceiver$GetLongTermWeatherTask;,
        Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/AlarmReceiver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4011c38fd4c70f7L

    const-string v2, "cz/martykan/forecastie/AlarmReceiver"

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/AlarmReceiver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getWeather()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver;->$jacocoInit()[Z

    move-result-object v2

    .line 63
    const-string v3, "Alarm"

    const-string v4, "Recurring alarm; requesting download service."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x16

    aput-boolean v1, v2, v3

    .line 65
    invoke-direct {p0}, Lcz/martykan/forecastie/AlarmReceiver;->isNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const/16 v3, 0x17

    aput-boolean v1, v2, v3

    .line 67
    invoke-direct {p0}, Lcz/martykan/forecastie/AlarmReceiver;->isUpdateLocation()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    aput-boolean v1, v2, v3

    .line 68
    new-instance v3, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;

    invoke-direct {v3, p0}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;-><init>(Lcz/martykan/forecastie/AlarmReceiver;)V

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v3, 0x19

    aput-boolean v1, v2, v3

    .line 76
    :goto_0
    iget-object v3, p0, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    const/16 v4, 0x1d

    aput-boolean v1, v2, v4

    .line 77
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v4, 0x1e

    aput-boolean v1, v2, v4

    .line 78
    const-string v4, "backgroundRefreshFailed"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x1f

    aput-boolean v1, v2, v0

    .line 79
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    const/16 v0, 0x20

    aput-boolean v1, v2, v0

    return-void

    .line 70
    :cond_0
    new-instance v3, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;

    invoke-direct {v3, p0}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;-><init>(Lcz/martykan/forecastie/AlarmReceiver;)V

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v3, 0x1a

    aput-boolean v1, v2, v3

    .line 71
    new-instance v3, Lcz/martykan/forecastie/AlarmReceiver$GetLongTermWeatherTask;

    invoke-direct {v3, p0}, Lcz/martykan/forecastie/AlarmReceiver$GetLongTermWeatherTask;-><init>(Lcz/martykan/forecastie/AlarmReceiver;)V

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcz/martykan/forecastie/AlarmReceiver$GetLongTermWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v3, 0x1b

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 74
    :cond_1
    const/16 v0, 0x1c

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0
.end method

.method private static intervalMillisForRecurringAlarm(Ljava/lang/String;)J
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver;->$jacocoInit()[Z

    move-result-object v1

    .line 335
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 336
    .local v0, "interval":I
    sparse-switch v0, :sswitch_data_0

    .line 350
    const v2, 0x36ee80

    mul-int/2addr v2, v0

    int-to-long v2, v2

    const/16 v4, 0x30

    aput-boolean v5, v1, v4

    :goto_0
    return-wide v2

    .line 338
    :sswitch_0
    const-wide/16 v2, 0x0

    const/16 v4, 0x2a

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 340
    :sswitch_1
    const-wide/32 v2, 0xdbba0

    const/16 v4, 0x2b

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 342
    :sswitch_2
    const-wide/32 v2, 0x1b7740

    const/16 v4, 0x2c

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 344
    :sswitch_3
    const-wide/32 v2, 0x36ee80

    const/16 v4, 0x2d

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 346
    :sswitch_4
    const-wide/32 v2, 0x2932e00

    const/16 v4, 0x2e

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 348
    :sswitch_5
    const-wide/32 v2, 0x5265c00

    const/16 v4, 0x2f

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 336
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0xc -> :sswitch_4
        0xf -> :sswitch_1
        0x18 -> :sswitch_5
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private isNetworkAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver;->$jacocoInit()[Z

    move-result-object v2

    .line 83
    iget-object v0, p0, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v3, 0x21

    aput-boolean v1, v2, v3

    .line 84
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/16 v3, 0x22

    aput-boolean v1, v2, v3

    .line 85
    if-nez v0, :cond_0

    const/16 v0, 0x23

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/16 v3, 0x26

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x27

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x24

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x25

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method

.method private isUpdateLocation()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x28

    aput-boolean v4, v0, v2

    .line 90
    const-string v2, "updateLocationAutomatically"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x29

    aput-boolean v4, v0, v2

    return v1
.end method

.method public static setRecurringAlarm(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver;->$jacocoInit()[Z

    move-result-object v7

    .line 355
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "refreshInterval"

    const-string v2, "1"

    const/16 v3, 0x31

    aput-boolean v9, v7, v3

    .line 356
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x32

    aput-boolean v9, v7, v0

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x33

    aput-boolean v9, v7, v2

    .line 358
    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/16 v0, 0x34

    aput-boolean v9, v7, v0

    .line 360
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/16 v2, 0x35

    aput-boolean v9, v7, v2

    .line 362
    invoke-static {v1}, Lcz/martykan/forecastie/AlarmReceiver;->intervalMillisForRecurringAlarm(Ljava/lang/String;)J

    move-result-wide v4

    .line 363
    .local v4, "intervalMillis":J
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    const/16 v1, 0x36

    aput-boolean v9, v7, v1

    .line 365
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v0, 0x37

    aput-boolean v9, v7, v0

    .line 372
    :goto_0
    const/16 v0, 0x3b

    aput-boolean v9, v7, v0

    return-void

    .line 367
    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x38

    aput-boolean v9, v7, v2

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    const/16 v8, 0x39

    aput-boolean v9, v7, v8

    .line 367
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    const/16 v0, 0x3a

    aput-boolean v9, v7, v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iput-object p1, p0, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    aput-boolean v5, v0, v5

    .line 42
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    .line 43
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v5, v0, v2

    .line 44
    const-string v2, "refreshInterval"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    .line 45
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    .line 49
    :goto_0
    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    .line 60
    :goto_1
    const/16 v1, 0x15

    aput-boolean v5, v0, v1

    return-void

    .line 45
    :cond_0
    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    .line 46
    invoke-static {p1}, Lcz/martykan/forecastie/AlarmReceiver;->setRecurringAlarm(Landroid/content/Context;)V

    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    .line 47
    invoke-direct {p0}, Lcz/martykan/forecastie/AlarmReceiver;->getWeather()V

    const/16 v1, 0x8

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 49
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    aput-boolean v5, v0, v1

    .line 51
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0xb

    aput-boolean v5, v0, v2

    .line 52
    const-string v2, "refreshInterval"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    aput-boolean v5, v0, v3

    .line 53
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xd

    aput-boolean v5, v0, v1

    .line 57
    :goto_2
    const/16 v1, 0x13

    aput-boolean v5, v0, v1

    goto :goto_1

    .line 53
    :cond_2
    const-string v2, "backgroundRefreshFailed"

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput-boolean v5, v0, v4

    .line 54
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xf

    aput-boolean v5, v0, v1

    .line 55
    :goto_3
    invoke-direct {p0}, Lcz/martykan/forecastie/AlarmReceiver;->getWeather()V

    const/16 v1, 0x12

    aput-boolean v5, v0, v1

    goto :goto_2

    .line 54
    :cond_3
    invoke-direct {p0}, Lcz/martykan/forecastie/AlarmReceiver;->isUpdateLocation()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x10

    aput-boolean v5, v0, v1

    goto :goto_2

    :cond_4
    const/16 v1, 0x11

    aput-boolean v5, v0, v1

    goto :goto_3

    .line 58
    :cond_5
    invoke-direct {p0}, Lcz/martykan/forecastie/AlarmReceiver;->getWeather()V

    const/16 v1, 0x14

    aput-boolean v5, v0, v1

    goto :goto_1
.end method

.class public Lorg/asdtm/goodweather/service/NotificationService;
.super Landroid/app/IntentService;
.source "NotificationService.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "NotificationsService"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/service/NotificationService;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x59183787ae9f0160L    # 1.5633530867204237E121

    const-string v2, "org/asdtm/goodweather/service/NotificationService"

    const/16 v3, 0x47

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/service/NotificationService;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/NotificationService;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    const-string v1, "NotificationsService"

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private isVibrateEnabled()[J
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/NotificationService;->$jacocoInit()[Z

    move-result-object v1

    .line 145
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    const/16 v2, 0x45

    aput-boolean v3, v1, v2

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/16 v2, 0x46

    aput-boolean v3, v1, v2

    goto :goto_0

    :array_0
    .array-data 8
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/NotificationService;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/asdtm/goodweather/service/NotificationService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static setNotificationServiceAlarm(Landroid/content/Context;Z)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/NotificationService;->$jacocoInit()[Z

    move-result-object v7

    .line 71
    invoke-static {p0}, Lorg/asdtm/goodweather/service/NotificationService;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x11

    aput-boolean v9, v7, v1

    .line 72
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/16 v0, 0x12

    aput-boolean v9, v7, v0

    .line 74
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/16 v1, 0x13

    aput-boolean v9, v7, v1

    .line 75
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getInterval(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v9, v7, v2

    .line 76
    invoke-static {v1}, Lorg/asdtm/goodweather/utils/Utils;->intervalMillisForAlarm(Ljava/lang/String;)J

    move-result-wide v4

    .line 77
    .local v4, "intervalMillis":J
    if-eqz p1, :cond_0

    .line 79
    const/4 v1, 0x2

    const/16 v2, 0x15

    aput-boolean v9, v7, v2

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    const/16 v8, 0x16

    aput-boolean v9, v7, v8

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    const/16 v0, 0x17

    aput-boolean v9, v7, v0

    .line 87
    :goto_0
    const/16 v0, 0x1a

    aput-boolean v9, v7, v0

    return-void

    .line 84
    :cond_0
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v0, 0x18

    aput-boolean v9, v7, v0

    .line 85
    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    const/16 v0, 0x19

    aput-boolean v9, v7, v0

    goto :goto_0
.end method

.method private weatherNotification(Lorg/asdtm/goodweather/model/Weather;)V
    .locals 19

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/NotificationService;->$jacocoInit()[Z

    move-result-object v4

    .line 90
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lorg/asdtm/goodweather/MainActivity;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x1b

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 91
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const/16 v6, 0x1c

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 93
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/Utils;->getTemperatureScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1d

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 94
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/Utils;->getSpeedScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1e

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "%.1f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/asdtm/goodweather/model/Weather;->temperature:Lorg/asdtm/goodweather/model/Weather$Temperature;

    const/16 v13, 0x1f

    const/4 v14, 0x1

    aput-boolean v14, v4, v13

    .line 97
    invoke-virtual {v12}, Lorg/asdtm/goodweather/model/Weather$Temperature;->getTemp()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x20

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    .line 96
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 99
    const v9, 0x7f080077

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const-string v13, "%.1f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/asdtm/goodweather/model/Weather;->wind:Lorg/asdtm/goodweather/model/Weather$Wind;

    move-object/from16 v16, v0

    const/16 v17, 0x22

    const/16 v18, 0x1

    aput-boolean v18, v4, v17

    .line 101
    invoke-virtual/range {v16 .. v16}, Lorg/asdtm/goodweather/model/Weather$Wind;->getSpeed()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x23

    const/16 v16, 0x1

    aput-boolean v16, v4, v15

    .line 99
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lorg/asdtm/goodweather/service/NotificationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "wind":Ljava/lang/String;
    const v7, 0x7f080067

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    const/16 v12, 0x24

    const/4 v13, 0x1

    aput-boolean v13, v4, v12

    .line 104
    invoke-virtual {v11}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->getHumidity()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const v11, 0x7f0800a8

    const/16 v12, 0x25

    const/4 v13, 0x1

    aput-boolean v13, v4, v12

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/asdtm/goodweather/service/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/asdtm/goodweather/service/NotificationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "humidity":Ljava/lang/String;
    const v7, 0x7f080070

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x27

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    const-string v12, "%.1f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    const/16 v16, 0x28

    const/16 v17, 0x1

    aput-boolean v17, v4, v16

    .line 108
    invoke-virtual {v15}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->getPressure()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0x29

    const/4 v15, 0x1

    aput-boolean v15, v4, v14

    .line 107
    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const v11, 0x7f080040

    const/16 v12, 0x2a

    const/4 v13, 0x1

    aput-boolean v13, v4, v12

    .line 109
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/asdtm/goodweather/service/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 106
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/asdtm/goodweather/service/NotificationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "pressure":Ljava/lang/String;
    const v7, 0x7f080070

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/asdtm/goodweather/model/Weather;->cloud:Lorg/asdtm/goodweather/model/Weather$Cloud;

    const/16 v12, 0x2c

    const/4 v13, 0x1

    aput-boolean v13, v4, v12

    .line 111
    invoke-virtual {v11}, Lorg/asdtm/goodweather/model/Weather$Cloud;->getClouds()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const v11, 0x7f0800a8

    const/16 v12, 0x2d

    const/4 v13, 0x1

    aput-boolean v13, v4, v12

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/asdtm/goodweather/service/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 110
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/asdtm/goodweather/service/NotificationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2f

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "  "

    const/16 v11, 0x30

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    .line 115
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x31

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 116
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    const/16 v11, 0x32

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    .line 117
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x33

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 118
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    const/16 v11, 0x34

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    .line 119
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x35

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 120
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x36

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 122
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x37

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 123
    invoke-virtual {v9, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v9, 0x7f02007c

    const/16 v10, 0x38

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 124
    invoke-virtual {v5, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/asdtm/goodweather/model/Weather;->location:Lorg/asdtm/goodweather/model/CitySearch;

    const/16 v11, 0x39

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    .line 128
    invoke-virtual {v10}, Lorg/asdtm/goodweather/model/CitySearch;->getCityName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/asdtm/goodweather/model/Weather;->location:Lorg/asdtm/goodweather/model/CitySearch;

    const/16 v11, 0x3a

    const/4 v12, 0x1

    aput-boolean v12, v4, v11

    .line 130
    invoke-virtual {v10}, Lorg/asdtm/goodweather/model/CitySearch;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3b

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 125
    invoke-virtual {v5, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    const/16 v9, 0x3c

    const/4 v10, 0x1

    aput-boolean v10, v4, v9

    .line 134
    invoke-virtual {v8}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x3d

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 131
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/16 v6, 0x3e

    const/4 v8, 0x1

    aput-boolean v8, v4, v6

    .line 135
    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/16 v6, 0x3f

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 136
    invoke-direct/range {p0 .. p0}, Lorg/asdtm/goodweather/service/NotificationService;->isVibrateEnabled()[J

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v7, 0x40

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 137
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/16 v6, 0x41

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 138
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    const/16 v6, 0x42

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 140
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v6

    const/16 v7, 0x43

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 141
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 142
    const/16 v5, 0x44

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/NotificationService;->$jacocoInit()[Z

    move-result-object v1

    .line 41
    new-instance v0, Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/ConnectionDetector;-><init>(Landroid/content/Context;)V

    aput-boolean v7, v1, v7

    .line 42
    invoke-virtual {v0}, Lorg/asdtm/goodweather/ConnectionDetector;->isNetworkAvailableAndConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x2

    aput-boolean v7, v1, v0

    .line 63
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/asdtm/goodweather/service/NotificationService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v7, v1, v2

    .line 47
    const-string v2, "latitude"

    const-string v3, "51.51"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-boolean v7, v1, v3

    .line 48
    const-string v3, "longitude"

    const-string v4, "-0.13"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    aput-boolean v7, v1, v3

    .line 49
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/asdtm/goodweather/utils/LanguageUtil;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-boolean v7, v1, v4

    .line 50
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v1, v5

    .line 54
    new-instance v5, Lorg/asdtm/goodweather/WeatherRequest;

    invoke-direct {v5}, Lorg/asdtm/goodweather/WeatherRequest;-><init>()V

    invoke-virtual {v5, v2, v0, v4, v3}, Lorg/asdtm/goodweather/WeatherRequest;->getItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 55
    invoke-static {v0}, Lorg/asdtm/goodweather/WeatherJSONParser;->getWeather(Ljava/lang/String;)Lorg/asdtm/goodweather/model/Weather;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 57
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->saveLastUpdateTimeMillis(Landroid/content/Context;)J

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 58
    invoke-static {p0, v0}, Lorg/asdtm/goodweather/utils/AppPreference;->saveWeather(Landroid/content/Context;Lorg/asdtm/goodweather/model/Weather;)V

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 59
    invoke-direct {p0, v0}, Lorg/asdtm/goodweather/service/NotificationService;->weatherNotification(Lorg/asdtm/goodweather/model/Weather;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/16 v0, 0xc

    aput-boolean v7, v1, v0

    .line 63
    :goto_1
    const/16 v0, 0xf

    aput-boolean v7, v1, v0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    :goto_2
    const/16 v2, 0xd

    aput-boolean v7, v1, v2

    .line 61
    const-string v2, "NotificationsService"

    const-string v3, "Error get weather"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xe

    aput-boolean v7, v1, v0

    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    goto :goto_2
.end method

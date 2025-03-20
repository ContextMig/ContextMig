.class public Lorg/asdtm/goodweather/widget/MoreWidgetService;
.super Landroid/app/IntentService;
.source "MoreWidgetService.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "UpdateMoreWidgetService"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/widget/MoreWidgetService;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3a1bf388615c85d3L    # 8.819875048683853E-29

    const-string v2, "org/asdtm/goodweather/widget/MoreWidgetService"

    const/16 v3, 0x3a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/widget/MoreWidgetService;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    const-string v1, "UpdateMoreWidgetService"

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private updateWidget(Lorg/asdtm/goodweather/model/Weather;)V
    .locals 29

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->$jacocoInit()[Z

    move-result-object v10

    .line 64
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    const/16 v9, 0x10

    const/4 v12, 0x1

    aput-boolean v12, v10, v9

    .line 65
    new-instance v9, Landroid/content/ComponentName;

    const-class v12, Lorg/asdtm/goodweather/widget/MoreWidgetProvider;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v12, 0x11

    const/4 v13, 0x1

    aput-boolean v13, v10, v12

    .line 67
    invoke-virtual {v11, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v7

    .line 68
    .local v7, "widgetIds":[I
    array-length v12, v7

    const/4 v9, 0x0

    const/16 v13, 0x12

    const/4 v14, 0x1

    aput-boolean v14, v10, v13

    :goto_0
    if-ge v9, v12, :cond_1

    aget v13, v7, v9

    const/16 v14, 0x13

    const/4 v15, 0x1

    aput-boolean v15, v10, v14

    .line 69
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/Utils;->getTemperatureScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x14

    const/16 v16, 0x1

    aput-boolean v16, v10, v15

    .line 70
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/Utils;->getSpeedScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x15

    const/16 v17, 0x1

    aput-boolean v17, v10, v16

    .line 71
    const v16, 0x7f0800a8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x16

    const/16 v18, 0x1

    aput-boolean v18, v10, v17

    .line 72
    const v17, 0x7f080040

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x17

    const/16 v19, 0x1

    aput-boolean v19, v10, v18

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    const-string v19, "%.0f"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/asdtm/goodweather/model/Weather;->temperature:Lorg/asdtm/goodweather/model/Weather$Temperature;

    move-object/from16 v22, v0

    const/16 v23, 0x18

    const/16 v24, 0x1

    aput-boolean v24, v10, v23

    .line 75
    invoke-virtual/range {v22 .. v22}, Lorg/asdtm/goodweather/model/Weather$Temperature;->getTemp()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x19

    const/16 v22, 0x1

    aput-boolean v22, v10, v21

    .line 74
    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1a

    const/16 v20, 0x1

    aput-boolean v20, v10, v19

    .line 76
    const v19, 0x7f080077

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    const-string v23, "%.1f"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/asdtm/goodweather/model/Weather;->wind:Lorg/asdtm/goodweather/model/Weather$Wind;

    move-object/from16 v26, v0

    const/16 v27, 0x1b

    const/16 v28, 0x1

    aput-boolean v28, v10, v27

    .line 78
    invoke-virtual/range {v26 .. v26}, Lorg/asdtm/goodweather/model/Weather$Wind;->getSpeed()F

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1c

    const/16 v26, 0x1

    aput-boolean v26, v10, v25

    .line 76
    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "wind":Ljava/lang/String;
    const v15, 0x7f080067

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    move-object/from16 v21, v0

    const/16 v22, 0x1d

    const/16 v23, 0x1

    aput-boolean v23, v10, v22

    .line 81
    invoke-virtual/range {v21 .. v21}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->getHumidity()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v16, v19, v20

    const/16 v20, 0x1e

    const/16 v21, 0x1

    aput-boolean v21, v10, v20

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "humidity":Ljava/lang/String;
    const v15, 0x7f080070

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1f

    const/16 v22, 0x1

    aput-boolean v22, v10, v21

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    const-string v22, "%.1f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    move-object/from16 v25, v0

    const/16 v26, 0x20

    const/16 v27, 0x1

    aput-boolean v27, v10, v26

    .line 85
    invoke-virtual/range {v25 .. v25}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->getPressure()F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x21

    const/16 v25, 0x1

    aput-boolean v25, v10, v24

    .line 84
    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v17, v19, v20

    const/16 v17, 0x22

    const/16 v20, 0x1

    aput-boolean v20, v10, v17

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "pressure":Ljava/lang/String;
    const v15, 0x7f080062

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/asdtm/goodweather/model/Weather;->cloud:Lorg/asdtm/goodweather/model/Weather$Cloud;

    move-object/from16 v20, v0

    const/16 v21, 0x23

    const/16 v22, 0x1

    aput-boolean v22, v10, v21

    .line 88
    invoke-virtual/range {v20 .. v20}, Lorg/asdtm/goodweather/model/Weather$Cloud;->getClouds()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v17, v19

    const/16 v19, 0x1

    aput-object v16, v17, v19

    const/16 v16, 0x24

    const/16 v19, 0x1

    aput-boolean v19, v10, v16

    .line 87
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x25

    const/16 v17, 0x1

    aput-boolean v17, v10, v16

    .line 90
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->getIdIcon()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x26

    const/16 v19, 0x1

    aput-boolean v19, v10, v17

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/asdtm/goodweather/utils/Utils;->getStrIcon(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "weatherIcon":Ljava/lang/String;
    const/16 v16, 0x27

    const/16 v17, 0x1

    aput-boolean v17, v10, v16

    .line 93
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/AppPreference;->saveLastUpdateTimeMillis(Landroid/content/Context;)J

    move-result-wide v16

    const/16 v19, 0x28

    const/16 v20, 0x1

    aput-boolean v20, v10, v19

    .line 92
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lorg/asdtm/goodweather/utils/Utils;->setLastUpdateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x29

    const/16 v19, 0x1

    aput-boolean v19, v10, v17

    .line 95
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f040049

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/16 v19, 0x2a

    const/16 v20, 0x1

    aput-boolean v20, v10, v19

    .line 97
    const v19, 0x7f0f00f4

    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v19, 0x2b

    const/16 v20, 0x1

    aput-boolean v20, v10, v19

    .line 98
    const v19, 0x7f0f00f8

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v14, 0x2c

    const/16 v18, 0x1

    aput-boolean v18, v10, v14

    .line 99
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/AppPreference;->hideDescription(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 100
    const v14, 0x7f0f00f9

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    move-object/from16 v18, v0

    const/16 v19, 0x2d

    const/16 v20, 0x1

    aput-boolean v20, v10, v19

    .line 101
    invoke-virtual/range {v18 .. v18}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->getDescription()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2e

    const/16 v20, 0x1

    aput-boolean v20, v10, v19

    .line 100
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v14, 0x2f

    const/16 v18, 0x1

    aput-boolean v18, v10, v14

    .line 103
    :goto_1
    const v14, 0x7f0f00fb

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v14, 0x31

    const/16 v18, 0x1

    aput-boolean v18, v10, v14

    .line 104
    const v14, 0x7f0f00fc

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v14, 0x32

    const/16 v18, 0x1

    aput-boolean v18, v10, v14

    .line 105
    const v14, 0x7f0f00fd

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v14, 0x33

    const/16 v18, 0x1

    aput-boolean v18, v10, v14

    .line 106
    const v14, 0x7f0f00fe

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 107
    const v14, 0x7f0f00fa

    const/16 v15, 0x34

    const/16 v18, 0x1

    aput-boolean v18, v10, v15

    .line 108
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/asdtm/goodweather/utils/Utils;->createWeatherIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    const/16 v18, 0x35

    const/16 v19, 0x1

    aput-boolean v19, v10, v18

    .line 107
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/16 v14, 0x36

    const/4 v15, 0x1

    aput-boolean v15, v10, v14

    .line 109
    const v14, 0x7f0f00f5

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v14, 0x37

    const/4 v15, 0x1

    aput-boolean v15, v10, v14

    .line 111
    move-object/from16 v0, v17

    invoke-virtual {v11, v13, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 68
    add-int/lit8 v9, v9, 0x1

    const/16 v13, 0x38

    const/4 v14, 0x1

    aput-boolean v14, v10, v13

    goto/16 :goto_0

    .line 102
    :cond_0
    const v14, 0x7f0f00f9

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v14, 0x30

    const/16 v18, 0x1

    aput-boolean v18, v10, v14

    goto :goto_1

    .line 113
    .end local v4    # "humidity":Ljava/lang/String;
    .end local v5    # "pressure":Ljava/lang/String;
    .end local v6    # "weatherIcon":Ljava/lang/String;
    .end local v8    # "wind":Ljava/lang/String;
    :cond_1
    const/16 v9, 0x39

    const/4 v11, 0x1

    aput-boolean v11, v10, v9

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->$jacocoInit()[Z

    move-result-object v1

    .line 39
    new-instance v0, Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/ConnectionDetector;-><init>(Landroid/content/Context;)V

    aput-boolean v7, v1, v7

    .line 40
    invoke-virtual {v0}, Lorg/asdtm/goodweather/ConnectionDetector;->isNetworkAvailableAndConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x2

    aput-boolean v7, v1, v0

    .line 61
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v7, v1, v2

    .line 45
    const-string v2, "latitude"

    const-string v3, "51.51"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-boolean v7, v1, v3

    .line 46
    const-string v3, "longitude"

    const-string v4, "-0.13"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    aput-boolean v7, v1, v3

    .line 47
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/asdtm/goodweather/utils/LanguageUtil;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-boolean v7, v1, v4

    .line 48
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v1, v5

    .line 51
    new-instance v5, Lorg/asdtm/goodweather/WeatherRequest;

    invoke-direct {v5}, Lorg/asdtm/goodweather/WeatherRequest;-><init>()V

    invoke-virtual {v5, v2, v0, v4, v3}, Lorg/asdtm/goodweather/WeatherRequest;->getItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 54
    invoke-static {v0}, Lorg/asdtm/goodweather/WeatherJSONParser;->getWeather(Ljava/lang/String;)Lorg/asdtm/goodweather/model/Weather;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 55
    invoke-static {p0, v0}, Lorg/asdtm/goodweather/utils/AppPreference;->saveWeather(Landroid/content/Context;Lorg/asdtm/goodweather/model/Weather;)V

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 56
    invoke-direct {p0, v0}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->updateWidget(Lorg/asdtm/goodweather/model/Weather;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/16 v0, 0xb

    aput-boolean v7, v1, v0

    .line 61
    :goto_1
    const/16 v0, 0xf

    aput-boolean v7, v1, v0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    :goto_2
    const/16 v2, 0xc

    aput-boolean v7, v1, v2

    .line 58
    const-string v2, "UpdateMoreWidgetService"

    const-string v3, "Error get weather"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xd

    aput-boolean v7, v1, v0

    .line 59
    invoke-virtual {p0}, Lorg/asdtm/goodweather/widget/MoreWidgetService;->stopSelf()V

    const/16 v0, 0xe

    aput-boolean v7, v1, v0

    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    goto :goto_2
.end method

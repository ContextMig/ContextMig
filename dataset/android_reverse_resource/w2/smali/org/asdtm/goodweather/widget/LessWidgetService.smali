.class public Lorg/asdtm/goodweather/widget/LessWidgetService;
.super Landroid/app/IntentService;
.source "LessWidgetService.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "UpdateLessWidgetService"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/widget/LessWidgetService;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x716ba90e37fd3b8fL    # 2.2514620090927085E238

    const-string v2, "org/asdtm/goodweather/widget/LessWidgetService"

    const/16 v3, 0x28

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/widget/LessWidgetService;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/widget/LessWidgetService;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    const-string v1, "UpdateLessWidgetService"

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private updateWidget(Lorg/asdtm/goodweather/model/Weather;)V
    .locals 19

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/widget/LessWidgetService;->$jacocoInit()[Z

    move-result-object v5

    .line 59
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    const/16 v4, 0x10

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    .line 60
    new-instance v4, Landroid/content/ComponentName;

    const-class v7, Lorg/asdtm/goodweather/widget/LessWidgetProvider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v7, 0x11

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 63
    invoke-virtual {v6, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 64
    .local v3, "widgetIds":[I
    array-length v7, v3

    const/4 v4, 0x0

    const/16 v8, 0x12

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    :goto_0
    if-ge v4, v7, :cond_1

    aget v8, v3, v4

    const/16 v9, 0x13

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 65
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/widget/LessWidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f040048

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/16 v10, 0x14

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 68
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    invoke-virtual {v10}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->getIdIcon()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x15

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 69
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lorg/asdtm/goodweather/utils/Utils;->getStrIcon(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "weatherIcon":Ljava/lang/String;
    const/16 v10, 0x16

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 71
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/AppPreference;->saveLastUpdateTimeMillis(Landroid/content/Context;)J

    move-result-wide v10

    const/16 v12, 0x17

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 70
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lorg/asdtm/goodweather/utils/Utils;->setLastUpdateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x18

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 73
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/Utils;->getTemperatureScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x19

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const-string v13, "%.0f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/asdtm/goodweather/model/Weather;->temperature:Lorg/asdtm/goodweather/model/Weather$Temperature;

    move-object/from16 v16, v0

    const/16 v17, 0x1a

    const/16 v18, 0x1

    aput-boolean v18, v5, v17

    .line 75
    invoke-virtual/range {v16 .. v16}, Lorg/asdtm/goodweather/model/Weather$Temperature;->getTemp()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x1b

    const/16 v16, 0x1

    aput-boolean v16, v5, v15

    .line 74
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1c

    const/4 v14, 0x1

    aput-boolean v14, v5, v13

    .line 77
    const v13, 0x7f0f00f8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v13, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v11, 0x1d

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 79
    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/AppPreference;->hideDescription(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 80
    const v11, 0x7f0f00f9

    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    const/16 v13, 0x1e

    const/4 v14, 0x1

    aput-boolean v14, v5, v13

    .line 81
    invoke-virtual {v12}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->getDescription()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1f

    const/4 v14, 0x1

    aput-boolean v14, v5, v13

    .line 80
    invoke-virtual {v9, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v11, 0x20

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 83
    :goto_1
    const v11, 0x7f0f00f4

    invoke-static/range {p0 .. p0}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v11, 0x22

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 84
    const v11, 0x7f0f00f5

    invoke-virtual {v9, v11, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 85
    const v10, 0x7f0f00fa

    const/16 v11, 0x23

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 86
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/asdtm/goodweather/utils/Utils;->createWeatherIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/16 v12, 0x24

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 85
    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/16 v10, 0x25

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 88
    invoke-virtual {v6, v8, v9}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 64
    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x26

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    goto/16 :goto_0

    .line 82
    :cond_0
    const v11, 0x7f0f00f9

    const-string v12, " "

    invoke-virtual {v9, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v11, 0x21

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    goto :goto_1

    .line 90
    .end local v2    # "weatherIcon":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x27

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/widget/LessWidgetService;->$jacocoInit()[Z

    move-result-object v1

    .line 36
    new-instance v0, Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/ConnectionDetector;-><init>(Landroid/content/Context;)V

    aput-boolean v7, v1, v7

    .line 37
    invoke-virtual {v0}, Lorg/asdtm/goodweather/ConnectionDetector;->isNetworkAvailableAndConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x2

    aput-boolean v7, v1, v0

    .line 56
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v0, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/asdtm/goodweather/widget/LessWidgetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v7, v1, v2

    .line 41
    const-string v2, "latitude"

    const-string v3, "51.51"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-boolean v7, v1, v3

    .line 42
    const-string v3, "longitude"

    const-string v4, "-0.13"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    aput-boolean v7, v1, v3

    .line 43
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/asdtm/goodweather/utils/LanguageUtil;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-boolean v7, v1, v4

    .line 44
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v1, v5

    .line 46
    new-instance v5, Lorg/asdtm/goodweather/WeatherRequest;

    invoke-direct {v5}, Lorg/asdtm/goodweather/WeatherRequest;-><init>()V

    invoke-virtual {v5, v2, v0, v4, v3}, Lorg/asdtm/goodweather/WeatherRequest;->getItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 49
    invoke-static {v0}, Lorg/asdtm/goodweather/WeatherJSONParser;->getWeather(Ljava/lang/String;)Lorg/asdtm/goodweather/model/Weather;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 50
    invoke-static {p0, v0}, Lorg/asdtm/goodweather/utils/AppPreference;->saveWeather(Landroid/content/Context;Lorg/asdtm/goodweather/model/Weather;)V

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 51
    invoke-direct {p0, v0}, Lorg/asdtm/goodweather/widget/LessWidgetService;->updateWidget(Lorg/asdtm/goodweather/model/Weather;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/16 v0, 0xb

    aput-boolean v7, v1, v0

    .line 56
    :goto_1
    const/16 v0, 0xf

    aput-boolean v7, v1, v0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    :goto_2
    const/16 v2, 0xc

    aput-boolean v7, v1, v2

    .line 53
    const-string v2, "UpdateLessWidgetService"

    const-string v3, "Error get weather"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xd

    aput-boolean v7, v1, v0

    .line 54
    invoke-virtual {p0}, Lorg/asdtm/goodweather/widget/LessWidgetService;->stopSelf()V

    const/16 v0, 0xe

    aput-boolean v7, v1, v0

    goto :goto_1

    .line 52
    :catch_1
    move-exception v0

    goto :goto_2
.end method

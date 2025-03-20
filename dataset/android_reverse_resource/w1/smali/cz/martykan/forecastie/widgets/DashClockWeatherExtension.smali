.class public Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;
.super Lcom/google/android/apps/dashclock/api/DashClockExtension;
.source "DashClockWeatherExtension.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final UPDATE_URI_PATH_SEGMENT:Ljava/lang/String; = "dashclock/update"

.field private static final URI_BASE:Landroid/net/Uri;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1d773da4c6e47809L    # -4.562515003743198E166

    const-string v2, "cz/martykan/forecastie/widgets/DashClockWeatherExtension"

    const/16 v3, 0x25

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    const-string v1, "content://cz.martykan.forecastie.authority"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->URI_BASE:Landroid/net/Uri;

    const/16 v1, 0x24

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/dashclock/api/DashClockExtension;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static getUpdateUri()Landroid/net/Uri;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    sget-object v1, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->URI_BASE:Landroid/net/Uri;

    const-string v2, "dashclock/update"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x23

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private localize(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    invoke-static {p1, p0, p2, p3}, Lcz/martykan/forecastie/activities/MainActivity;->localize(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static updateDashClock(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x21

    aput-boolean v4, v0, v2

    .line 83
    invoke-static {}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->getUpdateUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 84
    const/16 v1, 0x22

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method protected onInitialize(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-super {p0, p1}, Lcom/google/android/apps/dashclock/api/DashClockExtension;->onInitialize(Z)V

    aput-boolean v4, v0, v4

    .line 30
    invoke-virtual {p0}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->removeAllWatchContentUris()V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 31
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->getUpdateUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->addWatchContentUris([Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method

.method protected onUpdateData(I)V
    .locals 19

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->$jacocoInit()[Z

    move-result-object v6

    .line 36
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const/4 v3, 0x4

    const/4 v8, 0x1

    aput-boolean v8, v6, v3

    .line 37
    const-string v3, "lastToday"

    const-string v8, "{}"

    invoke-interface {v7, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x5

    const/4 v9, 0x1

    :try_start_0
    aput-boolean v9, v6, v8

    .line 39
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    const/4 v9, 0x1

    aput-boolean v9, v6, v3

    .line 42
    const-string v3, "main"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "temp"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3, v7}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertTemperature(FLandroid/content/SharedPreferences;)F

    move-result v2

    const/4 v3, 0x7

    const/4 v9, 0x1

    aput-boolean v9, v6, v3

    .line 43
    const-string v3, "temperatureInteger"

    const/4 v9, 0x0

    invoke-interface {v7, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    const/4 v9, 0x1

    aput-boolean v9, v6, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    .local v2, "temperature":F
    :goto_0
    :try_start_1
    const-string v3, "wind"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "speed"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 54
    .local v4, "wind":D
    const/16 v3, 0xb

    const/4 v9, 0x1

    :try_start_2
    aput-boolean v9, v6, v3

    .line 55
    .end local v4    # "wind":D
    :goto_1
    invoke-static {v4, v5, v7}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertWind(DLandroid/content/SharedPreferences;)D

    move-result-wide v4

    .restart local v4    # "wind":D
    const/16 v3, 0xe

    const/4 v9, 0x1

    aput-boolean v9, v6, v3

    .line 58
    const-string v3, "main"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "pressure"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v3, v10

    invoke-static {v3, v7}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertPressure(FLandroid/content/SharedPreferences;)F

    move-result v3

    float-to-double v10, v3

    const/16 v3, 0xf

    const/4 v9, 0x1

    aput-boolean v9, v6, v3

    .line 60
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->initMappings()V

    const/16 v3, 0x10

    const/4 v9, 0x1

    aput-boolean v9, v6, v3

    .line 61
    new-instance v3, Lcom/google/android/apps/dashclock/api/ExtensionData;

    invoke-direct {v3}, Lcom/google/android/apps/dashclock/api/ExtensionData;-><init>()V

    const/4 v9, 0x1

    const/16 v12, 0x11

    const/4 v13, 0x1

    aput-boolean v13, v6, v12

    .line 62
    invoke-virtual {v3, v9}, Lcom/google/android/apps/dashclock/api/ExtensionData;->visible(Z)Lcom/google/android/apps/dashclock/api/ExtensionData;

    move-result-object v3

    const v9, 0x7f020057

    const/16 v12, 0x12

    const/4 v13, 0x1

    aput-boolean v13, v6, v12

    .line 63
    invoke-virtual {v3, v9}, Lcom/google/android/apps/dashclock/api/ExtensionData;->icon(I)Lcom/google/android/apps/dashclock/api/ExtensionData;

    move-result-object v3

    const v9, 0x7f07001b

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/text/DecimalFormat;

    const-string v15, "#.#"

    invoke-direct {v14, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v0, v2

    move-wide/from16 v16, v0

    const/16 v15, 0x13

    const/16 v18, 0x1

    aput-boolean v18, v6, v15

    .line 64
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "unit"

    const-string v15, "\u00b0C"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->localize(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/google/android/apps/dashclock/api/ExtensionData;->status(Ljava/lang/String;)Lcom/google/android/apps/dashclock/api/ExtensionData;

    move-result-object v3

    const v9, 0x7f07001a

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/text/DecimalFormat;

    const-string v15, "#.#"

    invoke-direct {v14, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v0, v2

    move-wide/from16 v16, v0

    const/16 v15, 0x14

    const/16 v18, 0x1

    aput-boolean v18, v6, v15

    .line 65
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "unit"

    const-string v15, "\u00b0C"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->localize(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "weather"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "description"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/google/android/apps/dashclock/api/ExtensionData;->expandedTitle(Ljava/lang/String;)Lcom/google/android/apps/dashclock/api/ExtensionData;

    move-result-object v3

    const v9, 0x7f070019

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "name"

    const/16 v15, 0x15

    const/16 v16, 0x1

    aput-boolean v16, v6, v15

    .line 66
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "sys"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "country"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/text/DecimalFormat;

    const-string v15, "#.0"

    invoke-direct {v14, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x16

    const/16 v16, 0x1

    aput-boolean v16, v6, v15

    .line 67
    invoke-virtual {v14, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "speedUnit"

    const-string v15, "m/s"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->localize(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    new-instance v14, Ljava/text/DecimalFormat;

    const-string v15, "#.0"

    invoke-direct {v14, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x17

    const/16 v16, 0x1

    aput-boolean v16, v6, v15

    .line 68
    invoke-virtual {v14, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v13

    const/4 v10, 0x5

    const-string v11, "pressureUnit"

    const-string v13, "hPa"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11, v13}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->localize(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v10

    const/4 v7, 0x6

    const-string v10, "main"

    const/16 v11, 0x18

    const/4 v13, 0x1

    aput-boolean v13, v6, v11

    .line 69
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, "humidity"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v7

    const/16 v7, 0x19

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 66
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/apps/dashclock/api/ExtensionData;->expandedBody(Ljava/lang/String;)Lcom/google/android/apps/dashclock/api/ExtensionData;

    move-result-object v3

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcz/martykan/forecastie/activities/MainActivity;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x1a

    const/4 v9, 0x1

    aput-boolean v9, v6, v8

    .line 70
    invoke-virtual {v3, v7}, Lcom/google/android/apps/dashclock/api/ExtensionData;->clickIntent(Landroid/content/Intent;)Lcom/google/android/apps/dashclock/api/ExtensionData;

    move-result-object v3

    const/16 v7, 0x1b

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 61
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcz/martykan/forecastie/widgets/DashClockWeatherExtension;->publishUpdate(Lcom/google/android/apps/dashclock/api/ExtensionData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    const/16 v3, 0x1c

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    .line 75
    .end local v4    # "wind":D
    :goto_2
    const/16 v3, 0x1f

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    return-void

    .line 43
    .end local v2    # "temperature":F
    :cond_0
    const/16 v3, 0x9

    const/4 v9, 0x1

    :try_start_3
    aput-boolean v9, v6, v3

    .line 44
    invoke-static {v2}, Ljava/lang/Math;->round(F)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    int-to-float v2, v3

    .restart local v2    # "temperature":F
    const/16 v3, 0xa

    const/4 v9, 0x1

    :try_start_4
    aput-boolean v9, v6, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 51
    :catch_0
    move-exception v3

    const/16 v9, 0xc

    const/4 v10, 0x1

    :try_start_5
    aput-boolean v10, v6, v9

    .line 52
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const-wide/16 v4, 0x0

    const/16 v3, 0xd

    const/4 v9, 0x1

    aput-boolean v9, v6, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 72
    :catch_1
    move-exception v3

    const/16 v7, 0x1d

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 73
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v3, 0x1e

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    goto :goto_2
.end method

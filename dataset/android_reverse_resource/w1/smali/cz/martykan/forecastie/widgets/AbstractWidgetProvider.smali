.class public abstract Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "AbstractWidgetProvider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x62939211fb62b00eL    # -6.026432680910841E-167

    const-string v2, "cz/martykan/forecastie/widgets/AbstractWidgetProvider"

    const/16 v3, 0x48

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setWeatherIcon(IILandroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 47
    div-int/lit8 v1, p1, 0x64

    .line 48
    .local v1, "id":I
    const-string v0, ""

    .line 49
    .local v0, "icon":Ljava/lang/String;
    const/16 v3, 0x320

    if-ne p1, v3, :cond_2

    .line 50
    const/4 v3, 0x7

    if-ge p2, v3, :cond_0

    const/16 v3, 0xd

    aput-boolean v4, v2, v3

    .line 53
    :goto_0
    const v3, 0x7f07007e

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x11

    aput-boolean v4, v2, v3

    .line 77
    :goto_1
    const/16 v3, 0x19

    aput-boolean v4, v2, v3

    return-object v0

    .line 50
    :cond_0
    if-lt p2, v5, :cond_1

    const/16 v3, 0xe

    aput-boolean v4, v2, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0xf

    aput-boolean v4, v2, v3

    .line 51
    const v3, 0x7f070084

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 56
    :cond_2
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 v3, 0x12

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 58
    :pswitch_1
    const v3, 0x7f070085

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    const/16 v3, 0x13

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 61
    :pswitch_2
    const v3, 0x7f070080

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    aput-boolean v4, v2, v5

    goto :goto_1

    .line 64
    :pswitch_3
    const v3, 0x7f070081

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    const/16 v3, 0x15

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 67
    :pswitch_4
    const v3, 0x7f07007f

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    const/16 v3, 0x16

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 70
    :pswitch_5
    const v3, 0x7f070083

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    const/16 v3, 0x17

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 73
    :pswitch_6
    const v3, 0x7f070082

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x18

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static updateWidgets(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 146
    const-class v1, Lcz/martykan/forecastie/widgets/ExtensiveWidgetProvider;

    invoke-static {p0, v1}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->updateWidgets(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f

    aput-boolean v2, v0, v1

    .line 147
    const-class v1, Lcz/martykan/forecastie/widgets/TimeWidgetProvider;

    invoke-static {p0, v1}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->updateWidgets(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x40

    aput-boolean v2, v0, v1

    .line 148
    const-class v1, Lcz/martykan/forecastie/widgets/SimpleWidgetProvider;

    invoke-static {p0, v1}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->updateWidgets(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const/16 v1, 0x41

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static updateWidgets(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 152
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    const/16 v3, 0x42

    aput-boolean v5, v0, v3

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x43

    aput-boolean v5, v0, v2

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const/16 v4, 0x44

    aput-boolean v5, v0, v4

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    const/16 v3, 0x45

    aput-boolean v5, v0, v3

    .line 156
    const-string v3, "appWidgetIds"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const/16 v2, 0x46

    aput-boolean v5, v0, v2

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    const/16 v1, 0x47

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method protected getWeatherIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/16 v2, 0x100

    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-boolean v6, v0, v6

    .line 32
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x2

    aput-boolean v6, v0, v3

    .line 33
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x3

    aput-boolean v6, v0, v4

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/weather.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    const/4 v5, 0x4

    aput-boolean v6, v0, v5

    .line 35
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v5, 0x5

    aput-boolean v6, v0, v5

    .line 36
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    const/4 v5, 0x6

    aput-boolean v6, v0, v5

    .line 37
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v4, 0x7

    aput-boolean v6, v0, v4

    .line 38
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v4, 0x8

    aput-boolean v6, v0, v4

    .line 39
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0x9

    aput-boolean v6, v0, v4

    .line 40
    const/high16 v4, 0x43160000    # 150.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v4, 0xa

    aput-boolean v6, v0, v4

    .line 41
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/16 v4, 0xb

    aput-boolean v6, v0, v4

    .line 42
    const/high16 v4, 0x43000000    # 128.0f

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v2, p1, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 43
    const/16 v2, 0xc

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method protected localize(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    invoke-static {p1, p2, p3, p4}, Lcz/martykan/forecastie/activities/MainActivity;->localize(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected parseWidgetJson(Ljava/lang/String;Landroid/content/Context;)Lcz/martykan/forecastie/models/Weather;
    .locals 21

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->$jacocoInit()[Z

    move-result-object v13

    .line 82
    :try_start_0
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity;->initMappings()V

    const/16 v9, 0x1a

    const/4 v12, 0x1

    aput-boolean v12, v13, v9

    .line 84
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x1b

    const/4 v12, 0x1

    aput-boolean v12, v13, v9

    .line 85
    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    const/16 v9, 0x1c

    const/4 v12, 0x1

    aput-boolean v12, v13, v9

    .line 88
    const-string v9, "main"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v12, "temp"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9, v15}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertTemperature(FLandroid/content/SharedPreferences;)F

    move-result v8

    const/16 v9, 0x1d

    const/4 v12, 0x1

    aput-boolean v12, v13, v9

    .line 89
    const-string v9, "temperatureInteger"

    const/4 v12, 0x0

    invoke-interface {v15, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    const/16 v9, 0x1e

    const/4 v12, 0x1

    aput-boolean v12, v13, v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    .local v8, "temperature":F
    :goto_0
    :try_start_1
    const-string v9, "wind"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v12, "speed"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    .line 100
    .local v10, "wind":D
    const/16 v9, 0x21

    const/4 v12, 0x1

    :try_start_2
    aput-boolean v12, v13, v9

    .line 101
    .end local v10    # "wind":D
    :goto_1
    invoke-static {v10, v11, v15}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertWind(DLandroid/content/SharedPreferences;)D

    move-result-wide v10

    .restart local v10    # "wind":D
    const/16 v9, 0x24

    const/4 v12, 0x1

    aput-boolean v12, v13, v9

    .line 104
    const-string v9, "main"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v12, "pressure"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v9, v0

    invoke-static {v9, v15}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertPressure(FLandroid/content/SharedPreferences;)F

    move-result v9

    float-to-double v0, v9

    move-wide/from16 v16, v0

    const/16 v9, 0x25

    const/4 v12, 0x1

    aput-boolean v12, v13, v9

    .line 106
    const-string v9, "lastUpdate"

    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    invoke-interface {v15, v9, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 108
    .local v6, "lastUpdateTimeInMillis":J
    const-wide/16 v18, 0x0

    cmp-long v9, v6, v18

    if-gez v9, :cond_1

    .line 110
    const-string v5, ""

    .local v5, "lastUpdate":Ljava/lang/String;
    const/16 v9, 0x26

    const/4 v12, 0x1

    aput-boolean v12, v13, v9

    .line 115
    .end local v5    # "lastUpdate":Ljava/lang/String;
    :goto_2
    const-string v9, "weather"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v12, "description"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x28

    const/16 v18, 0x1

    aput-boolean v18, v13, v12

    .line 116
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "description":Ljava/lang/String;
    const/16 v9, 0x29

    const/4 v12, 0x1

    aput-boolean v12, v13, v9

    .line 118
    new-instance v9, Lcz/martykan/forecastie/models/Weather;

    invoke-direct {v9}, Lcz/martykan/forecastie/models/Weather;-><init>()V

    const/16 v12, 0x2a

    const/16 v18, 0x1

    aput-boolean v18, v13, v12

    .line 119
    const-string v12, "name"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcz/martykan/forecastie/models/Weather;->setCity(Ljava/lang/String;)V

    const/16 v12, 0x2b

    const/16 v18, 0x1

    aput-boolean v18, v13, v12

    .line 120
    const-string v12, "sys"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v18, "country"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcz/martykan/forecastie/models/Weather;->setCountry(Ljava/lang/String;)V

    const/16 v12, 0x2c

    const/16 v18, 0x1

    aput-boolean v18, v13, v12

    .line 121
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, "unit"

    const-string v19, "C"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->localize(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcz/martykan/forecastie/models/Weather;->setTemperature(Ljava/lang/String;)V

    const/16 v12, 0x2d

    const/16 v18, 0x1

    aput-boolean v18, v13, v12

    .line 122
    invoke-virtual {v9, v4}, Lcz/martykan/forecastie/models/Weather;->setDescription(Ljava/lang/String;)V

    const/16 v12, 0x2e

    const/16 v18, 0x1

    aput-boolean v18, v13, v12

    .line 123
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f07005c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, ": "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v18, Ljava/text/DecimalFormat;

    const-string v19, "#.0"

    invoke-direct/range {v18 .. v19}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, "speedUnit"

    const-string v19, "m/s"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->localize(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v12, 0x2f

    const/16 v19, 0x1

    aput-boolean v19, v13, v12

    .line 124
    invoke-virtual {v9}, Lcz/martykan/forecastie/models/Weather;->isWindDirectionAvailable()Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v15, v0, v9}, Lcz/martykan/forecastie/activities/MainActivity;->getWindDirectionString(Landroid/content/SharedPreferences;Landroid/content/Context;Lcz/martykan/forecastie/models/Weather;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v19, 0x30

    const/16 v20, 0x1

    aput-boolean v20, v13, v19

    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x32

    const/16 v19, 0x1

    aput-boolean v19, v13, v18

    .line 123
    invoke-virtual {v9, v12}, Lcz/martykan/forecastie/models/Weather;->setWind(Ljava/lang/String;)V

    const/16 v12, 0x33

    const/16 v18, 0x1

    aput-boolean v18, v13, v12

    .line 125
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f07002d

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, ": "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v18, Ljava/text/DecimalFormat;

    const-string v19, "#.0"

    invoke-direct/range {v18 .. v19}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v16, "pressureUnit"

    const-string v17, "hPa"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v15, v1, v2, v3}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->localize(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcz/martykan/forecastie/models/Weather;->setPressure(Ljava/lang/String;)V

    const/16 v12, 0x34

    const/4 v15, 0x1

    aput-boolean v15, v13, v12

    .line 126
    const-string v12, "main"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v15, "humidity"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcz/martykan/forecastie/models/Weather;->setHumidity(Ljava/lang/String;)V

    const/16 v12, 0x35

    const/4 v15, 0x1

    aput-boolean v15, v13, v12

    .line 127
    const-string v12, "sys"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v15, "sunrise"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcz/martykan/forecastie/models/Weather;->setSunrise(Ljava/lang/String;)V

    const/16 v12, 0x36

    const/4 v15, 0x1

    aput-boolean v15, v13, v12

    .line 128
    const-string v12, "sys"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v15, "sunset"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcz/martykan/forecastie/models/Weather;->setSunset(Ljava/lang/String;)V

    const/16 v12, 0x37

    const/4 v15, 0x1

    aput-boolean v15, v13, v12

    .line 129
    const-string v12, "weather"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v14, "id"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    const/16 v15, 0xb

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v14, v1}, Lcz/martykan/forecastie/widgets/AbstractWidgetProvider;->setWeatherIcon(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcz/martykan/forecastie/models/Weather;->setIcon(Ljava/lang/String;)V

    const/16 v12, 0x38

    const/4 v14, 0x1

    aput-boolean v14, v13, v12

    .line 130
    invoke-virtual {v9, v5}, Lcz/martykan/forecastie/models/Weather;->setLastUpdated(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    const/16 v12, 0x39

    const/4 v14, 0x1

    aput-boolean v14, v13, v12

    .line 136
    .end local v4    # "description":Ljava/lang/String;
    .end local v6    # "lastUpdateTimeInMillis":J
    .end local v10    # "wind":D
    :goto_4
    return-object v9

    .line 89
    .end local v8    # "temperature":F
    :cond_0
    const/16 v9, 0x1f

    const/4 v12, 0x1

    :try_start_3
    aput-boolean v12, v13, v9

    .line 90
    invoke-static {v8}, Ljava/lang/Math;->round(F)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v9

    int-to-float v8, v9

    .restart local v8    # "temperature":F
    const/16 v9, 0x20

    const/4 v12, 0x1

    :try_start_4
    aput-boolean v12, v13, v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 97
    :catch_0
    move-exception v9

    const/16 v12, 0x22

    const/16 v16, 0x1

    :try_start_5
    aput-boolean v16, v13, v12

    .line 98
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const-wide/16 v10, 0x0

    const/16 v9, 0x23

    const/4 v12, 0x1

    aput-boolean v12, v13, v9
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 133
    :catch_1
    move-exception v9

    const/16 v12, 0x3a

    const/4 v14, 0x1

    aput-boolean v14, v13, v12

    .line 134
    const-string v12, "JSONException Data"

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x3b

    const/4 v14, 0x1

    aput-boolean v14, v13, v12

    .line 135
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v9, 0x3c

    const/4 v12, 0x1

    aput-boolean v12, v13, v9

    .line 136
    new-instance v9, Lcz/martykan/forecastie/models/Weather;

    invoke-direct {v9}, Lcz/martykan/forecastie/models/Weather;-><init>()V

    const/16 v12, 0x3d

    const/4 v14, 0x1

    aput-boolean v14, v13, v12

    goto :goto_4

    .line 112
    .restart local v6    # "lastUpdateTimeInMillis":J
    .restart local v10    # "wind":D
    :cond_1
    const v9, 0x7f070023

    const/4 v12, 0x1

    :try_start_6
    new-array v12, v12, [Ljava/lang/Object;

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcz/martykan/forecastie/activities/MainActivity;->formatTimeWithDayIfNotToday(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v12, v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x27

    const/4 v12, 0x1

    aput-boolean v12, v13, v9

    goto/16 :goto_2

    .line 124
    .restart local v4    # "description":Ljava/lang/String;
    :cond_2
    const-string v12, ""

    const/16 v19, 0x31

    const/16 v20, 0x1

    aput-boolean v20, v13, v19
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3
.end method

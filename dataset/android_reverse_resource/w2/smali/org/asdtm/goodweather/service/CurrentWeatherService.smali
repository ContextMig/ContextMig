.class public Lorg/asdtm/goodweather/service/CurrentWeatherService;
.super Landroid/app/IntentService;
.source "CurrentWeatherService.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ACTION_WEATHER_UPDATE_FAIL:Ljava/lang/String; = "org.asdtm.goodweather.action.WEATHER_UPDATE_FAIL"

.field public static final ACTION_WEATHER_UPDATE_OK:Ljava/lang/String; = "org.asdtm.goodweather.action.WEATHER_UPDATE_OK"

.field public static final ACTION_WEATHER_UPDATE_RESULT:Ljava/lang/String; = "org.asdtm.goodweather.action.WEATHER_UPDATE_RESULT"

.field private static final TAG:Ljava/lang/String; = "WeatherService"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/service/CurrentWeatherService;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x285f23cb389e6bb3L

    const-string v2, "org/asdtm/goodweather/service/CurrentWeatherService"

    const/16 v3, 0x53

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/service/CurrentWeatherService;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/CurrentWeatherService;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    const-string v1, "WeatherService"

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/CurrentWeatherService;->$jacocoInit()[Z

    move-result-object v7

    .line 42
    new-instance v5, Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-direct {v5, p0}, Lorg/asdtm/goodweather/ConnectionDetector;-><init>(Landroid/content/Context;)V

    aput-boolean v12, v7, v12

    .line 43
    invoke-virtual {v5}, Lorg/asdtm/goodweather/ConnectionDetector;->isNetworkAvailableAndConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 44
    const/4 v5, 0x2

    aput-boolean v12, v7, v5

    .line 82
    .local v3, "requestResult":Ljava/lang/String;
    .local v4, "units":Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    .end local v3    # "requestResult":Ljava/lang/String;
    .end local v4    # "units":Ljava/lang/String;
    :cond_0
    const-string v5, "config"

    invoke-virtual {p0, v5, v6}, Lorg/asdtm/goodweather/service/CurrentWeatherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const/4 v6, 0x3

    aput-boolean v12, v7, v6

    .line 48
    const-string v6, "latitude"

    const-string v8, "51.51"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    aput-boolean v12, v7, v8

    .line 49
    const-string v8, "longitude"

    const-string v9, "-0.13"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x5

    aput-boolean v12, v7, v5

    .line 50
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/asdtm/goodweather/utils/LanguageUtil;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x6

    aput-boolean v12, v7, v5

    .line 51
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .restart local v4    # "units":Ljava/lang/String;
    const-string v3, ""

    .line 54
    .restart local v3    # "requestResult":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x1

    :try_start_0
    aput-boolean v11, v7, v10

    .line 56
    const-string v10, "http://api.openweathermap.org/data/2.5/weather"

    invoke-static {v10, v6, v8, v4, v9}, Lorg/asdtm/goodweather/utils/Utils;->getWeatherForecastUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 57
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/16 v5, 0x9

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v7, v5

    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    const/16 v5, 0xa

    const/4 v6, 0x1

    aput-boolean v6, v7, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_1
    if-nez v1, :cond_3

    const/16 v5, 0x13

    aput-boolean v12, v7, v5

    .line 81
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    :goto_2
    invoke-virtual {p0, v3}, Lorg/asdtm/goodweather/service/CurrentWeatherService;->parseWeather(Ljava/lang/String;)V

    .line 82
    const/16 v5, 0x1e

    aput-boolean v12, v7, v5

    goto :goto_0

    .line 59
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_1
    const/16 v5, 0xb

    const/4 v6, 0x1

    :try_start_2
    aput-boolean v6, v7, v5

    .line 60
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0xc

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 61
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 64
    .local v2, "inputStream":Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    const/16 v8, 0xd

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 65
    :goto_3
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    if-lez v0, :cond_2

    const/16 v8, 0xe

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 66
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 v8, 0xf

    const/4 v9, 0x1

    aput-boolean v9, v7, v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 73
    .end local v0    # "bytesRead":I
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    :goto_4
    const/16 v5, 0x16

    const/4 v6, 0x1

    :try_start_3
    aput-boolean v6, v7, v5

    .line 74
    const-string v5, "WeatherService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    if-nez v1, :cond_4

    const/16 v5, 0x17

    aput-boolean v12, v7, v5

    goto :goto_2

    .line 68
    .restart local v0    # "bytesRead":I
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    const/16 v6, 0x10

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 69
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x11

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 70
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->saveLastUpdateTimeMillis(Landroid/content/Context;)J

    const/16 v5, 0x12

    const/4 v6, 0x1

    aput-boolean v6, v7, v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 77
    .end local v0    # "bytesRead":I
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    :goto_5
    if-nez v1, :cond_5

    const/16 v6, 0x1a

    aput-boolean v12, v7, v6

    .line 80
    :goto_6
    const/16 v6, 0x1d

    aput-boolean v12, v7, v6

    throw v5

    .line 77
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_3
    const/16 v5, 0x14

    aput-boolean v12, v7, v5

    .line 78
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v5, 0x15

    aput-boolean v12, v7, v5

    goto/16 :goto_2

    .line 77
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_4
    const/16 v5, 0x18

    aput-boolean v12, v7, v5

    .line 78
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v5, 0x19

    aput-boolean v12, v7, v5

    goto/16 :goto_2

    .line 77
    :cond_5
    const/16 v6, 0x1b

    aput-boolean v12, v7, v6

    .line 78
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v6, 0x1c

    aput-boolean v12, v7, v6

    goto :goto_6

    .line 77
    :catchall_1
    move-exception v6

    move-object v1, v5

    move-object v5, v6

    goto :goto_5

    .line 73
    :catch_1
    move-exception v6

    move-object v1, v5

    goto :goto_4
.end method

.method public parseWeather(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/CurrentWeatherService;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 88
    const-string v2, "weather"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 89
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 90
    const-string v3, "description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x22

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 93
    :goto_0
    const-string v3, "icon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v2, 0x25

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 97
    :goto_1
    const-string v2, "main"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v3, 0x28

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 98
    const-string v3, "temp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x29

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 101
    :goto_2
    const-string v3, "pressure"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x2c

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 105
    :goto_3
    const-string v3, "humidity"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v2, 0x30

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 109
    :goto_4
    const-string v2, "wind"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v3, 0x33

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 110
    const-string v3, "speed"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x34

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 113
    :goto_5
    const-string v3, "deg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v2, 0x37

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 117
    :goto_6
    const-string v2, "clouds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v3, 0x3a

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 118
    const-string v3, "all"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v2, 0x3b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 122
    :goto_7
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x3e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 126
    :goto_8
    const-string v2, "sys"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v2, 0x41

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 127
    const-string v2, "country"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x42

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 130
    :goto_9
    sget-object v2, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v2, v2, Lorg/asdtm/goodweather/model/Weather;->sys:Lorg/asdtm/goodweather/model/Weather$Sys;

    const-string v3, "sunrise"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/asdtm/goodweather/model/Weather$Sys;->setSunrise(J)V

    const/16 v2, 0x45

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 131
    sget-object v2, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v2, v2, Lorg/asdtm/goodweather/model/Weather;->sys:Lorg/asdtm/goodweather/model/Weather$Sys;

    const-string v3, "sunset"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/asdtm/goodweather/model/Weather$Sys;->setSunset(J)V

    .line 133
    sget-object v1, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    sget-object v2, Lorg/asdtm/goodweather/MainActivity;->mCitySearch:Lorg/asdtm/goodweather/model/CitySearch;

    iput-object v2, v1, Lorg/asdtm/goodweather/model/Weather;->location:Lorg/asdtm/goodweather/model/CitySearch;

    const/16 v1, 0x46

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 134
    const-string v1, "org.asdtm.goodweather.action.WEATHER_UPDATE_OK"

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/service/CurrentWeatherService;->sendResult(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const/16 v1, 0x47

    aput-boolean v7, v0, v1

    .line 139
    :goto_a
    const/16 v1, 0x4b

    aput-boolean v7, v0, v1

    return-void

    .line 90
    :cond_0
    const/16 v3, 0x23

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v0, v3

    .line 91
    sget-object v3, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v3, v3, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    const-string v4, "description"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->setDescription(Ljava/lang/String;)V

    const/16 v3, 0x24

    const/4 v4, 0x1

    aput-boolean v4, v0, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 135
    :catch_0
    move-exception v1

    const/16 v1, 0x48

    aput-boolean v7, v0, v1

    .line 136
    const-string v1, "WeatherService"

    const-string v2, "Error parsing JSON"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x49

    aput-boolean v7, v0, v1

    .line 137
    const-string v1, "org.asdtm.goodweather.action.WEATHER_UPDATE_FAIL"

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/service/CurrentWeatherService;->sendResult(Ljava/lang/String;)V

    const/16 v1, 0x4a

    aput-boolean v7, v0, v1

    goto :goto_a

    .line 93
    :cond_1
    const/16 v3, 0x26

    const/4 v4, 0x1

    :try_start_2
    aput-boolean v4, v0, v3

    .line 94
    sget-object v3, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v3, v3, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    const-string v4, "icon"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->setIdIcon(Ljava/lang/String;)V

    const/16 v2, 0x27

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    goto/16 :goto_1

    .line 98
    :cond_2
    const/16 v3, 0x2a

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 99
    sget-object v3, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v3, v3, Lorg/asdtm/goodweather/model/Weather;->temperature:Lorg/asdtm/goodweather/model/Weather$Temperature;

    const-string v4, "temp"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/asdtm/goodweather/model/Weather$Temperature;->setTemp(F)V

    const/16 v3, 0x2b

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    goto/16 :goto_2

    .line 102
    :cond_3
    sget-object v3, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v3, v3, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    const-string v4, "pressure"

    const/16 v5, 0x2d

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    .line 103
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/16 v5, 0x2e

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    .line 102
    invoke-virtual {v3, v4}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->setPressure(F)V

    const/16 v3, 0x2f

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    goto/16 :goto_3

    .line 105
    :cond_4
    const/16 v3, 0x31

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 106
    sget-object v3, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v3, v3, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    const-string v4, "humidity"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->setHumidity(I)V

    const/16 v2, 0x32

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    goto/16 :goto_4

    .line 110
    :cond_5
    const/16 v3, 0x35

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 111
    sget-object v3, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v3, v3, Lorg/asdtm/goodweather/model/Weather;->wind:Lorg/asdtm/goodweather/model/Weather$Wind;

    const-string v4, "speed"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/asdtm/goodweather/model/Weather$Wind;->setSpeed(F)V

    const/16 v3, 0x36

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    goto/16 :goto_5

    .line 113
    :cond_6
    const/16 v3, 0x38

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 114
    sget-object v3, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v3, v3, Lorg/asdtm/goodweather/model/Weather;->wind:Lorg/asdtm/goodweather/model/Weather$Wind;

    const-string v4, "deg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v3, v2}, Lorg/asdtm/goodweather/model/Weather$Wind;->setDirection(F)V

    const/16 v2, 0x39

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    goto/16 :goto_6

    .line 118
    :cond_7
    const/16 v3, 0x3c

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 119
    sget-object v3, Lorg/asdtm/goodweather/MainActivity;->mWeather:Lorg/asdtm/goodweather/model/Weather;

    iget-object v3, v3, Lorg/asdtm/goodweather/model/Weather;->cloud:Lorg/asdtm/goodweather/model/Weather$Cloud;

    const-string v4, "all"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/asdtm/goodweather/model/Weather$Cloud;->setClouds(I)V

    const/16 v2, 0x3d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    goto/16 :goto_7

    .line 122
    :cond_8
    const/16 v2, 0x3f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 123
    sget-object v2, Lorg/asdtm/goodweather/MainActivity;->mCitySearch:Lorg/asdtm/goodweather/model/CitySearch;

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/asdtm/goodweather/model/CitySearch;->setCityName(Ljava/lang/String;)V

    const/16 v2, 0x40

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    goto/16 :goto_8

    .line 127
    :cond_9
    const/16 v2, 0x43

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 128
    sget-object v2, Lorg/asdtm/goodweather/MainActivity;->mCitySearch:Lorg/asdtm/goodweather/model/CitySearch;

    const-string v3, "country"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/asdtm/goodweather/model/CitySearch;->setCountryCode(Ljava/lang/String;)V

    const/16 v2, 0x44

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_9
.end method

.method public sendResult(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/CurrentWeatherService;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.asdtm.goodweather.action.WEATHER_UPDATE_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x4c

    aput-boolean v4, v0, v2

    .line 143
    const-string v2, "org.asdtm.goodweather.action.WEATHER_UPDATE_OK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x4d

    aput-boolean v4, v0, v2

    .line 144
    const-string v2, "org.asdtm.goodweather.action.WEATHER_UPDATE_RESULT"

    const-string v3, "org.asdtm.goodweather.action.WEATHER_UPDATE_OK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x4e

    aput-boolean v4, v0, v2

    .line 148
    :goto_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 149
    const/16 v1, 0x52

    aput-boolean v4, v0, v1

    return-void

    .line 145
    :cond_0
    const-string v2, "org.asdtm.goodweather.action.WEATHER_UPDATE_FAIL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x4f

    aput-boolean v4, v0, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x50

    aput-boolean v4, v0, v2

    .line 146
    const-string v2, "org.asdtm.goodweather.action.WEATHER_UPDATE_RESULT"

    const-string v3, "org.asdtm.goodweather.action.WEATHER_UPDATE_FAIL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x51

    aput-boolean v4, v0, v2

    goto :goto_0
.end method

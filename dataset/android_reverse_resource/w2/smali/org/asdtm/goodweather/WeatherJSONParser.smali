.class public Lorg/asdtm/goodweather/WeatherJSONParser;
.super Ljava/lang/Object;
.source "WeatherJSONParser.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "WeatherJSONParser"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/WeatherJSONParser;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x47923d33d7144814L    # -6.996760484847974E-37

    const-string v2, "org/asdtm/goodweather/WeatherJSONParser"

    const/16 v3, 0x2a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/WeatherJSONParser;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherJSONParser;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getWeather(Ljava/lang/String;)Lorg/asdtm/goodweather/model/Weather;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherJSONParser;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    new-instance v1, Lorg/asdtm/goodweather/model/Weather;

    invoke-direct {v1}, Lorg/asdtm/goodweather/model/Weather;-><init>()V

    aput-boolean v8, v0, v8

    .line 15
    new-instance v2, Lorg/asdtm/goodweather/model/CitySearch;

    invoke-direct {v2}, Lorg/asdtm/goodweather/model/CitySearch;-><init>()V

    const/4 v3, 0x2

    aput-boolean v8, v0, v3

    .line 17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    aput-boolean v8, v0, v4

    .line 19
    const-string v4, "weather"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x4

    aput-boolean v8, v0, v5

    .line 21
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x5

    aput-boolean v8, v0, v5

    .line 22
    const-string v5, "description"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x6

    aput-boolean v8, v0, v5

    .line 25
    :goto_0
    const-string v5, "icon"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v4, 0x9

    aput-boolean v8, v0, v4

    .line 29
    :goto_1
    const-string v4, "main"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/16 v5, 0xc

    aput-boolean v8, v0, v5

    .line 30
    const-string v5, "temp"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0xd

    aput-boolean v8, v0, v5

    .line 33
    :goto_2
    const-string v5, "pressure"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x10

    aput-boolean v8, v0, v5

    .line 36
    :goto_3
    const-string v5, "humidity"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v4, 0x13

    aput-boolean v8, v0, v4

    .line 40
    :goto_4
    const-string v4, "wind"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/16 v5, 0x16

    aput-boolean v8, v0, v5

    .line 41
    const-string v5, "speed"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x17

    aput-boolean v8, v0, v5

    .line 44
    :goto_5
    const-string v5, "deg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v4, 0x1a

    aput-boolean v8, v0, v4

    .line 48
    :goto_6
    const-string v4, "clouds"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/16 v5, 0x1d

    aput-boolean v8, v0, v5

    .line 49
    const-string v5, "all"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v4, 0x1e

    aput-boolean v8, v0, v4

    .line 53
    :goto_7
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x21

    aput-boolean v8, v0, v4

    .line 57
    :goto_8
    const-string v4, "sys"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v4, 0x24

    aput-boolean v8, v0, v4

    .line 58
    const-string v4, "country"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x25

    aput-boolean v8, v0, v4

    .line 61
    :goto_9
    iget-object v4, v1, Lorg/asdtm/goodweather/model/Weather;->sys:Lorg/asdtm/goodweather/model/Weather$Sys;

    const-string v5, "sunrise"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/asdtm/goodweather/model/Weather$Sys;->setSunrise(J)V

    const/16 v4, 0x28

    aput-boolean v8, v0, v4

    .line 62
    iget-object v4, v1, Lorg/asdtm/goodweather/model/Weather;->sys:Lorg/asdtm/goodweather/model/Weather$Sys;

    const-string v5, "sunset"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/asdtm/goodweather/model/Weather$Sys;->setSunset(J)V

    .line 64
    iput-object v2, v1, Lorg/asdtm/goodweather/model/Weather;->location:Lorg/asdtm/goodweather/model/CitySearch;

    .line 66
    const/16 v2, 0x29

    aput-boolean v8, v0, v2

    return-object v1

    .line 22
    :cond_0
    const/4 v5, 0x7

    aput-boolean v8, v0, v5

    .line 23
    iget-object v5, v1, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    const-string v6, "description"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->setDescription(Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-boolean v8, v0, v5

    goto/16 :goto_0

    .line 25
    :cond_1
    const/16 v5, 0xa

    aput-boolean v8, v0, v5

    .line 26
    iget-object v5, v1, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    const-string v6, "icon"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->setIdIcon(Ljava/lang/String;)V

    const/16 v4, 0xb

    aput-boolean v8, v0, v4

    goto/16 :goto_1

    .line 30
    :cond_2
    const/16 v5, 0xe

    aput-boolean v8, v0, v5

    .line 31
    iget-object v5, v1, Lorg/asdtm/goodweather/model/Weather;->temperature:Lorg/asdtm/goodweather/model/Weather$Temperature;

    const-string v6, "temp"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v5, v6}, Lorg/asdtm/goodweather/model/Weather$Temperature;->setTemp(F)V

    const/16 v5, 0xf

    aput-boolean v8, v0, v5

    goto/16 :goto_2

    .line 33
    :cond_3
    const/16 v5, 0x11

    aput-boolean v8, v0, v5

    .line 34
    iget-object v5, v1, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    const-string v6, "pressure"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v5, v6}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->setPressure(F)V

    const/16 v5, 0x12

    aput-boolean v8, v0, v5

    goto/16 :goto_3

    .line 36
    :cond_4
    const/16 v5, 0x14

    aput-boolean v8, v0, v5

    .line 37
    iget-object v5, v1, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    const-string v6, "humidity"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;->setHumidity(I)V

    const/16 v4, 0x15

    aput-boolean v8, v0, v4

    goto/16 :goto_4

    .line 41
    :cond_5
    const/16 v5, 0x18

    aput-boolean v8, v0, v5

    .line 42
    iget-object v5, v1, Lorg/asdtm/goodweather/model/Weather;->wind:Lorg/asdtm/goodweather/model/Weather$Wind;

    const-string v6, "speed"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v5, v6}, Lorg/asdtm/goodweather/model/Weather$Wind;->setSpeed(F)V

    const/16 v5, 0x19

    aput-boolean v8, v0, v5

    goto/16 :goto_5

    .line 44
    :cond_6
    const/16 v5, 0x1b

    aput-boolean v8, v0, v5

    .line 45
    iget-object v5, v1, Lorg/asdtm/goodweather/model/Weather;->wind:Lorg/asdtm/goodweather/model/Weather$Wind;

    const-string v6, "deg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v5, v4}, Lorg/asdtm/goodweather/model/Weather$Wind;->setDirection(F)V

    const/16 v4, 0x1c

    aput-boolean v8, v0, v4

    goto/16 :goto_6

    .line 49
    :cond_7
    const/16 v5, 0x1f

    aput-boolean v8, v0, v5

    .line 50
    iget-object v5, v1, Lorg/asdtm/goodweather/model/Weather;->cloud:Lorg/asdtm/goodweather/model/Weather$Cloud;

    const-string v6, "all"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lorg/asdtm/goodweather/model/Weather$Cloud;->setClouds(I)V

    const/16 v4, 0x20

    aput-boolean v8, v0, v4

    goto/16 :goto_7

    .line 53
    :cond_8
    const/16 v4, 0x22

    aput-boolean v8, v0, v4

    .line 54
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/asdtm/goodweather/model/CitySearch;->setCityName(Ljava/lang/String;)V

    const/16 v4, 0x23

    aput-boolean v8, v0, v4

    goto/16 :goto_8

    .line 58
    :cond_9
    const/16 v4, 0x26

    aput-boolean v8, v0, v4

    .line 59
    const-string v4, "country"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/asdtm/goodweather/model/CitySearch;->setCountryCode(Ljava/lang/String;)V

    const/16 v4, 0x27

    aput-boolean v8, v0, v4

    goto/16 :goto_9
.end method

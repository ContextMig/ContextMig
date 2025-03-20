.class public Lorg/asdtm/goodweather/WeatherForecastActivity;
.super Lorg/asdtm/goodweather/BaseActivity;
.source "WeatherForecastActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

.field private mGetWeatherProgress:Landroid/app/ProgressDialog;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mWeatherForecastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/asdtm/goodweather/model/WeatherForecast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x16babf613a4af82bL    # -1.2709123381772909E199

    const-string v2, "org/asdtm/goodweather/WeatherForecastActivity"

    const/16 v3, 0x5b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0}, Lorg/asdtm/goodweather/BaseActivity;-><init>()V

    .line 40
    const-string v1, "WeatherForecastActivity"

    iput-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lorg/asdtm/goodweather/WeatherForecastActivity;Z)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/WeatherForecastActivity;->setVisibleUpdating(Z)V

    const/16 v1, 0x56

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lorg/asdtm/goodweather/WeatherForecastActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->updateUI()V

    const/16 v1, 0x57

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lorg/asdtm/goodweather/WeatherForecastActivity;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mWeatherForecastList:Ljava/util/List;

    const/16 v2, 0x58

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    sget-object v1, Lorg/asdtm/goodweather/WeatherForecastActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x59

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lorg/asdtm/goodweather/WeatherForecastActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/WeatherForecastActivity;->parseWeatherForecast(Ljava/lang/String;)V

    const/16 v1, 0x5a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getWeather()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/asdtm/goodweather/WeatherForecastActivity$2;

    invoke-direct {v2, p0}, Lorg/asdtm/goodweather/WeatherForecastActivity$2;-><init>(Lorg/asdtm/goodweather/WeatherForecastActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v2, 0x27

    aput-boolean v3, v0, v2

    .line 189
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 190
    const/16 v1, 0x28

    aput-boolean v3, v0, v1

    return-void
.end method

.method private parseWeatherForecast(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 194
    :try_start_0
    iget-object v3, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mWeatherForecastList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x29

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 198
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2c

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 199
    const-string v5, "list"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/16 v5, 0x2d

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 201
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 202
    .local v1, "listArrayCount":I
    const/16 v5, 0x2e

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    :goto_1
    if-ge v0, v1, :cond_3

    const/16 v5, 0x2f

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 203
    new-instance v5, Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-direct {v5}, Lorg/asdtm/goodweather/model/WeatherForecast;-><init>()V

    const/16 v6, 0x30

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 204
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v7, 0x31

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 205
    const-string v7, "dt"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lorg/asdtm/goodweather/model/WeatherForecast;->setDateTime(J)V

    const/16 v7, 0x32

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 206
    const-string v7, "pressure"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setPressure(Ljava/lang/String;)V

    const/16 v7, 0x33

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 207
    const-string v7, "humidity"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setHumidity(Ljava/lang/String;)V

    const/16 v7, 0x34

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 208
    const-string v7, "speed"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setWindSpeed(Ljava/lang/String;)V

    const/16 v7, 0x35

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 209
    const-string v7, "deg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setWindDegree(Ljava/lang/String;)V

    const/16 v7, 0x36

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 210
    const-string v7, "clouds"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setCloudiness(Ljava/lang/String;)V

    const/16 v7, 0x37

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 211
    const-string v7, "rain"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x38

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 212
    const-string v7, "rain"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setRain(Ljava/lang/String;)V

    const/16 v7, 0x39

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 216
    :goto_2
    const-string v7, "snow"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x3b

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 217
    const-string v7, "snow"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setSnow(Ljava/lang/String;)V

    const/16 v7, 0x3c

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 221
    :goto_3
    const-string v7, "temp"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 222
    .local v2, "temperatureObject":Lorg/json/JSONObject;
    const-string v7, "min"

    const/16 v8, 0x3e

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 223
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x3f

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 222
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureMin(F)V

    .line 224
    const-string v7, "max"

    const/16 v8, 0x40

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 225
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x41

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 224
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureMax(F)V

    .line 226
    const-string v7, "morn"

    const/16 v8, 0x42

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 227
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x43

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 226
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureMorning(F)V

    .line 228
    const-string v7, "day"

    const/16 v8, 0x44

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 229
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x45

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 228
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureDay(F)V

    .line 230
    const-string v7, "eve"

    const/16 v8, 0x46

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 231
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x47

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 230
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureEvening(F)V

    .line 232
    const-string v7, "night"

    const/16 v8, 0x48

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 233
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x49

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 232
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureNight(F)V

    const/16 v7, 0x4a

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 234
    const-string v7, "weather"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/16 v7, 0x4b

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 235
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v7, 0x4c

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 236
    const-string v7, "description"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setDescription(Ljava/lang/String;)V

    const/16 v7, 0x4d

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 237
    const-string v7, "icon"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/asdtm/goodweather/model/WeatherForecast;->setIcon(Ljava/lang/String;)V

    const/16 v6, 0x4e

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 239
    iget-object v6, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mWeatherForecastList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x4f

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 240
    sget-object v5, Lorg/asdtm/goodweather/WeatherForecastActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v5, 0x50

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 242
    .end local v0    # "i":I
    .end local v2    # "temperatureObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    const/16 v5, 0x52

    aput-boolean v10, v4, v5

    .line 243
    sget-object v5, Lorg/asdtm/goodweather/WeatherForecastActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/16 v5, 0x53

    aput-boolean v10, v4, v5

    .line 244
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v3, 0x54

    aput-boolean v10, v4, v3

    .line 246
    :goto_4
    const/16 v3, 0x55

    aput-boolean v10, v4, v3

    return-void

    .line 194
    .end local v1    # "listArrayCount":I
    :cond_0
    const/16 v3, 0x2a

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v4, v3

    .line 195
    iget-object v3, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mWeatherForecastList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/16 v3, 0x2b

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    goto/16 :goto_0

    .line 214
    .restart local v1    # "listArrayCount":I
    :cond_1
    const-string v7, "0"

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setRain(Ljava/lang/String;)V

    const/16 v7, 0x3a

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    goto/16 :goto_2

    .line 219
    :cond_2
    const-string v7, "0"

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setSnow(Ljava/lang/String;)V

    const/16 v7, 0x3d

    const/4 v8, 0x1

    aput-boolean v8, v4, v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 245
    :cond_3
    const/16 v3, 0x51

    aput-boolean v10, v4, v3

    goto :goto_4
.end method

.method private setVisibleUpdating(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    if-eqz p1, :cond_0

    const/16 v1, 0x23

    aput-boolean v2, v0, v1

    .line 143
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mGetWeatherProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    .line 147
    :goto_0
    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mGetWeatherProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method private updateUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    .line 92
    iget-object v2, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mWeatherForecastList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    .line 93
    iget-object v2, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    .line 94
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    .line 99
    :goto_0
    new-instance v0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;

    iget-object v2, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mWeatherForecastList:Ljava/util/List;

    const/16 v3, 0x11

    aput-boolean v4, v1, v3

    .line 101
    invoke-virtual {p0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/support/v4/app/FragmentManager;)V

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 102
    iget-object v2, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 103
    const/16 v0, 0x13

    aput-boolean v4, v1, v0

    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    .line 97
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x10

    aput-boolean v4, v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/asdtm/goodweather/GoodWeatherApp;

    invoke-virtual {v0, p0}, Lorg/asdtm/goodweather/GoodWeatherApp;->applyTheme(Landroid/app/Activity;)V

    aput-boolean v3, v1, v3

    .line 51
    invoke-super {p0, p1}, Lorg/asdtm/goodweather/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 52
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->setContentView(I)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 54
    new-instance v0, Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mConnectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mWeatherForecastList:Ljava/util/List;

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 56
    invoke-virtual {p0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mGetWeatherProgress:Landroid/app/ProgressDialog;

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 58
    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 59
    iget-object v0, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    .line 60
    invoke-direct {p0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->updateUI()V

    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    .line 62
    new-instance v0, Lorg/asdtm/goodweather/WeatherForecastActivity$1;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/WeatherForecastActivity$1;-><init>(Lorg/asdtm/goodweather/WeatherForecastActivity;)V

    sput-object v0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mHandler:Landroid/os/Handler;

    .line 88
    const/16 v0, 0xa

    aput-boolean v3, v1, v0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/16 v2, 0x19

    aput-boolean v3, v0, v2

    .line 117
    const v2, 0x7f100004

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lorg/asdtm/goodweather/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x22

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 125
    :sswitch_0
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mConnectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/ConnectionDetector;->isNetworkAvailableAndConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    aput-boolean v0, v2, v1

    .line 126
    invoke-direct {p0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->getWeather()V

    const/16 v1, 0x1c

    aput-boolean v0, v2, v1

    .line 127
    invoke-direct {p0, v0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->setVisibleUpdating(Z)V

    const/16 v1, 0x1d

    aput-boolean v0, v2, v1

    .line 133
    :goto_1
    const/16 v1, 0x20

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 129
    :cond_0
    const v1, 0x7f08001c

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v3, 0x1e

    aput-boolean v0, v2, v3

    .line 131
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x1f

    aput-boolean v0, v2, v1

    goto :goto_1

    .line 135
    :sswitch_1
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 136
    const/16 v1, 0x21

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0f010f -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    invoke-super {p0}, Lorg/asdtm/goodweather/BaseActivity;->onResume()V

    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    .line 108
    iget-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mWeatherForecastList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    .line 111
    :goto_0
    invoke-direct {p0}, Lorg/asdtm/goodweather/WeatherForecastActivity;->updateUI()V

    .line 112
    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    return-void

    .line 108
    :cond_0
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    .line 109
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->loadWeatherForecast(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity;->mWeatherForecastList:Ljava/util/List;

    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

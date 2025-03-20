.class public Lorg/asdtm/goodweather/GraphsActivity;
.super Lorg/asdtm/goodweather/BaseActivity;
.source "GraphsActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mConnectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

.field private mDatesArray:[Ljava/lang/String;

.field public mForecastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/asdtm/goodweather/model/WeatherForecast;",
            ">;"
        }
    .end annotation
.end field

.field private mGetWeatherProgress:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mValueFormatter:Lorg/asdtm/goodweather/utils/CustomValueFormatter;

.field private mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mYAxisFormatter:Lorg/asdtm/goodweather/utils/YAxisValueFormatter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x281887d7d55444baL    # -2.889812444412291E115

    const-string v2, "org/asdtm/goodweather/GraphsActivity"

    const/16 v3, 0x176

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lorg/asdtm/goodweather/BaseActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lorg/asdtm/goodweather/GraphsActivity;Z)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/GraphsActivity;->setVisibleUpdating(Z)V

    const/16 v1, 0x172

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lorg/asdtm/goodweather/GraphsActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->updateUI()V

    const/16 v1, 0x173

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lorg/asdtm/goodweather/GraphsActivity;)Landroid/os/Handler;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x174

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lorg/asdtm/goodweather/GraphsActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/GraphsActivity;->parseWeatherForecast(Ljava/lang/String;)V

    const/16 v1, 0x175

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private formatDate()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 395
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 396
    .local v1, "format":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    if-nez v4, :cond_0

    const/16 v4, 0xfc

    aput-boolean v7, v5, v4

    .line 406
    :goto_0
    const/16 v4, 0x103

    aput-boolean v7, v5, v4

    return-void

    .line 396
    :cond_0
    const/16 v4, 0xfd

    aput-boolean v7, v5, v4

    .line 397
    iget-object v4, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 398
    .local v3, "mSize":I
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lorg/asdtm/goodweather/GraphsActivity;->mDatesArray:[Ljava/lang/String;

    .line 400
    const/4 v2, 0x0

    const/16 v4, 0xfe

    aput-boolean v7, v5, v4

    :goto_1
    if-lt v2, v3, :cond_1

    const/16 v4, 0xff

    aput-boolean v7, v5, v4

    goto :goto_0

    :cond_1
    const/16 v4, 0x100

    aput-boolean v7, v5, v4

    .line 401
    new-instance v6, Ljava/util/Date;

    iget-object v4, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v4}, Lorg/asdtm/goodweather/model/WeatherForecast;->getDateTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    const/16 v4, 0x101

    aput-boolean v7, v5, v4

    .line 402
    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "day":Ljava/lang/String;
    iget-object v4, p0, Lorg/asdtm/goodweather/GraphsActivity;->mDatesArray:[Ljava/lang/String;

    aput-object v0, v4, v2

    .line 400
    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    const/16 v4, 0x102

    aput-boolean v7, v5, v4

    goto :goto_1
.end method

.method private getWeather()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 487
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/asdtm/goodweather/GraphsActivity$2;

    invoke-direct {v2, p0}, Lorg/asdtm/goodweather/GraphsActivity$2;-><init>(Lorg/asdtm/goodweather/GraphsActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v2, 0x13f

    aput-boolean v3, v0, v2

    .line 525
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 526
    const/16 v1, 0x140

    aput-boolean v3, v0, v1

    return-void
.end method

.method private parseWeatherForecast(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 530
    :try_start_0
    iget-object v3, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x141

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 534
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x144

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 535
    const-string v5, "list"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/16 v5, 0x145

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 537
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 538
    .local v1, "listArrayCount":I
    const/16 v5, 0x146

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    :goto_1
    if-ge v0, v1, :cond_3

    const/16 v5, 0x147

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 539
    new-instance v5, Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-direct {v5}, Lorg/asdtm/goodweather/model/WeatherForecast;-><init>()V

    const/16 v6, 0x148

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 540
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v7, 0x149

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 541
    const-string v7, "dt"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lorg/asdtm/goodweather/model/WeatherForecast;->setDateTime(J)V

    const/16 v7, 0x14a

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 542
    const-string v7, "pressure"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setPressure(Ljava/lang/String;)V

    const/16 v7, 0x14b

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 543
    const-string v7, "humidity"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setHumidity(Ljava/lang/String;)V

    const/16 v7, 0x14c

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 544
    const-string v7, "speed"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setWindSpeed(Ljava/lang/String;)V

    const/16 v7, 0x14d

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 545
    const-string v7, "deg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setWindDegree(Ljava/lang/String;)V

    const/16 v7, 0x14e

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 546
    const-string v7, "clouds"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setCloudiness(Ljava/lang/String;)V

    const/16 v7, 0x14f

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 547
    const-string v7, "rain"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x150

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 548
    const-string v7, "rain"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setRain(Ljava/lang/String;)V

    const/16 v7, 0x151

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 552
    :goto_2
    const-string v7, "snow"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x153

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 553
    const-string v7, "snow"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setSnow(Ljava/lang/String;)V

    const/16 v7, 0x154

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 557
    :goto_3
    const-string v7, "temp"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 558
    .local v2, "temperatureObject":Lorg/json/JSONObject;
    const-string v7, "min"

    const/16 v8, 0x156

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 559
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x157

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 558
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureMin(F)V

    .line 560
    const-string v7, "max"

    const/16 v8, 0x158

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 561
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x159

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 560
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureMax(F)V

    .line 562
    const-string v7, "morn"

    const/16 v8, 0x15a

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 563
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x15b

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 562
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureMorning(F)V

    .line 564
    const-string v7, "day"

    const/16 v8, 0x15c

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 565
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x15d

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 564
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureDay(F)V

    .line 566
    const-string v7, "eve"

    const/16 v8, 0x15e

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 567
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x15f

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 566
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureEvening(F)V

    .line 568
    const-string v7, "night"

    const/16 v8, 0x160

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 569
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/16 v8, 0x161

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 568
    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setTemperatureNight(F)V

    const/16 v7, 0x162

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 570
    const-string v7, "weather"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/16 v7, 0x163

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 571
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v7, 0x164

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 572
    const-string v7, "description"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setDescription(Ljava/lang/String;)V

    const/16 v7, 0x165

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 573
    const-string v7, "icon"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/asdtm/goodweather/model/WeatherForecast;->setIcon(Ljava/lang/String;)V

    const/16 v6, 0x166

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 575
    iget-object v6, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x167

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 576
    iget-object v5, p0, Lorg/asdtm/goodweather/GraphsActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v5, 0x168

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 578
    .end local v0    # "i":I
    .end local v2    # "temperatureObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    const/16 v5, 0x16a

    aput-boolean v10, v4, v5

    .line 579
    iget-object v5, p0, Lorg/asdtm/goodweather/GraphsActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/16 v5, 0x16b

    aput-boolean v10, v4, v5

    .line 580
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v3, 0x16c

    aput-boolean v10, v4, v3

    .line 582
    :goto_4
    const/16 v3, 0x16d

    aput-boolean v10, v4, v3

    return-void

    .line 530
    .end local v1    # "listArrayCount":I
    :cond_0
    const/16 v3, 0x142

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v4, v3

    .line 531
    iget-object v3, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/16 v3, 0x143

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    goto/16 :goto_0

    .line 550
    .restart local v1    # "listArrayCount":I
    :cond_1
    const-string v7, "0"

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setRain(Ljava/lang/String;)V

    const/16 v7, 0x152

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    goto/16 :goto_2

    .line 555
    :cond_2
    const-string v7, "0"

    invoke-virtual {v5, v7}, Lorg/asdtm/goodweather/model/WeatherForecast;->setSnow(Ljava/lang/String;)V

    const/16 v7, 0x155

    const/4 v8, 0x1

    aput-boolean v8, v4, v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 581
    :cond_3
    const/16 v3, 0x169

    aput-boolean v10, v4, v3

    goto :goto_4
.end method

.method private setRainChart()V
    .locals 12

    .prologue
    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v10, 0x40000000    # 2.0f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 257
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    const/16 v1, 0x8a

    aput-boolean v8, v5, v1

    .line 258
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    const/16 v1, 0x8b

    aput-boolean v8, v5, v1

    .line 259
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    const/16 v1, 0x8c

    aput-boolean v8, v5, v1

    .line 260
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    const/16 v1, 0x8d

    aput-boolean v8, v5, v1

    .line 261
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setMaxHighlightDistance(F)V

    const/16 v1, 0x8e

    aput-boolean v8, v5, v1

    .line 262
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    const/16 v1, 0x8f

    aput-boolean v8, v5, v1

    .line 263
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    const/16 v1, 0x90

    aput-boolean v8, v5, v1

    .line 265
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->formatDate()V

    const/16 v1, 0x91

    aput-boolean v8, v5, v1

    .line 266
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    const/16 v2, 0x92

    aput-boolean v8, v5, v2

    .line 267
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/16 v2, 0x93

    aput-boolean v8, v5, v2

    .line 268
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/16 v2, 0x94

    aput-boolean v8, v5, v2

    .line 269
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    const/16 v2, 0x95

    aput-boolean v8, v5, v2

    .line 270
    new-instance v2, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;

    iget-object v3, p0, Lorg/asdtm/goodweather/GraphsActivity;->mDatesArray:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/AxisValueFormatter;)V

    const/16 v1, 0x96

    aput-boolean v8, v5, v1

    .line 272
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    const/16 v2, 0x97

    aput-boolean v8, v5, v2

    .line 273
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v2, 0x98

    aput-boolean v8, v5, v2

    .line 274
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V

    const/16 v2, 0x99

    aput-boolean v8, v5, v2

    .line 275
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    const/16 v2, 0x9a

    aput-boolean v8, v5, v2

    .line 276
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    const/16 v2, 0x9b

    aput-boolean v8, v5, v2

    .line 277
    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    const/16 v2, 0x9c

    aput-boolean v8, v5, v2

    .line 278
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    const/16 v2, 0x9d

    aput-boolean v8, v5, v2

    .line 279
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    const/16 v2, 0x9e

    aput-boolean v8, v5, v2

    .line 280
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mYAxisFormatter:Lorg/asdtm/goodweather/utils/YAxisValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/AxisValueFormatter;)V

    const/16 v1, 0x9f

    aput-boolean v8, v5, v1

    .line 282
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v1, 0xa0

    aput-boolean v8, v5, v1

    .line 284
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa1

    aput-boolean v8, v5, v1

    .line 285
    const/16 v1, 0xa2

    aput-boolean v8, v5, v1

    move v0, v4

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa3

    aput-boolean v8, v5, v1

    .line 286
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/model/WeatherForecast;->getRain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/16 v2, 0xa4

    aput-boolean v8, v5, v2

    .line 287
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v3, v0

    invoke-direct {v2, v3, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa5

    aput-boolean v8, v5, v1

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa6

    aput-boolean v8, v5, v1

    .line 292
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/LineData;

    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineData;

    iget-object v3, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v7, 0xa7

    aput-boolean v8, v5, v7

    .line 293
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v7, 0xa8

    aput-boolean v8, v5, v7

    .line 292
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineData;->removeDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    const/16 v1, 0xa9

    aput-boolean v8, v5, v1

    .line 294
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v2, "Rain"

    invoke-direct {v1, v6, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v2, 0xaa

    aput-boolean v8, v5, v2

    .line 295
    sget-object v2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const/16 v2, 0xab

    aput-boolean v8, v5, v2

    .line 296
    invoke-virtual {v1, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    const/16 v2, 0xac

    aput-boolean v8, v5, v2

    .line 297
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    const/16 v2, 0xad

    aput-boolean v8, v5, v2

    .line 298
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v2, 0xae

    aput-boolean v8, v5, v2

    .line 299
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    const/16 v2, 0xaf

    aput-boolean v8, v5, v2

    .line 300
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/16 v2, 0xb0

    aput-boolean v8, v5, v2

    .line 301
    const-string v2, "#5677FC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/16 v2, 0xb1

    aput-boolean v8, v5, v2

    .line 302
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    const/16 v2, 0xb2

    aput-boolean v8, v5, v2

    .line 303
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mValueFormatter:Lorg/asdtm/goodweather/utils/CustomValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/16 v2, 0xb3

    aput-boolean v8, v5, v2

    .line 305
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v8, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/16 v1, 0xb4

    aput-boolean v8, v5, v1

    .line 306
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 307
    const/16 v1, 0xb5

    aput-boolean v8, v5, v1

    .line 322
    :goto_1
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 323
    const/16 v1, 0xc2

    aput-boolean v8, v5, v1

    return-void

    .line 308
    :cond_1
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v2, "Rain"

    invoke-direct {v1, v6, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v2, 0xb6

    aput-boolean v8, v5, v2

    .line 309
    sget-object v2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const/16 v2, 0xb7

    aput-boolean v8, v5, v2

    .line 310
    invoke-virtual {v1, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    const/16 v2, 0xb8

    aput-boolean v8, v5, v2

    .line 311
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    const/16 v2, 0xb9

    aput-boolean v8, v5, v2

    .line 312
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v2, 0xba

    aput-boolean v8, v5, v2

    .line 313
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    const/16 v2, 0xbb

    aput-boolean v8, v5, v2

    .line 314
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/16 v2, 0xbc

    aput-boolean v8, v5, v2

    .line 315
    const-string v2, "#5677FC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/16 v2, 0xbd

    aput-boolean v8, v5, v2

    .line 316
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    const/16 v2, 0xbe

    aput-boolean v8, v5, v2

    .line 317
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mValueFormatter:Lorg/asdtm/goodweather/utils/CustomValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/16 v2, 0xbf

    aput-boolean v8, v5, v2

    .line 319
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v8, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/16 v1, 0xc0

    aput-boolean v8, v5, v1

    .line 320
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    const/16 v1, 0xc1

    aput-boolean v8, v5, v1

    goto :goto_1
.end method

.method private setSnowChart()V
    .locals 12

    .prologue
    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v10, 0x40000000    # 2.0f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 326
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    const/16 v1, 0xc3

    aput-boolean v8, v5, v1

    .line 327
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    const/16 v1, 0xc4

    aput-boolean v8, v5, v1

    .line 328
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    const/16 v1, 0xc5

    aput-boolean v8, v5, v1

    .line 329
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    const/16 v1, 0xc6

    aput-boolean v8, v5, v1

    .line 330
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setMaxHighlightDistance(F)V

    const/16 v1, 0xc7

    aput-boolean v8, v5, v1

    .line 331
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    const/16 v1, 0xc8

    aput-boolean v8, v5, v1

    .line 332
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    const/16 v1, 0xc9

    aput-boolean v8, v5, v1

    .line 334
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->formatDate()V

    const/16 v1, 0xca

    aput-boolean v8, v5, v1

    .line 335
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    const/16 v2, 0xcb

    aput-boolean v8, v5, v2

    .line 336
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/16 v2, 0xcc

    aput-boolean v8, v5, v2

    .line 337
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/16 v2, 0xcd

    aput-boolean v8, v5, v2

    .line 338
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    const/16 v2, 0xce

    aput-boolean v8, v5, v2

    .line 339
    new-instance v2, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;

    iget-object v3, p0, Lorg/asdtm/goodweather/GraphsActivity;->mDatesArray:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/AxisValueFormatter;)V

    const/16 v1, 0xcf

    aput-boolean v8, v5, v1

    .line 341
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    const/16 v2, 0xd0

    aput-boolean v8, v5, v2

    .line 342
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v2, 0xd1

    aput-boolean v8, v5, v2

    .line 343
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V

    const/16 v2, 0xd2

    aput-boolean v8, v5, v2

    .line 344
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    const/16 v2, 0xd3

    aput-boolean v8, v5, v2

    .line 345
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    const/16 v2, 0xd4

    aput-boolean v8, v5, v2

    .line 346
    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    const/16 v2, 0xd5

    aput-boolean v8, v5, v2

    .line 347
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    const/16 v2, 0xd6

    aput-boolean v8, v5, v2

    .line 348
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    const/16 v2, 0xd7

    aput-boolean v8, v5, v2

    .line 349
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mYAxisFormatter:Lorg/asdtm/goodweather/utils/YAxisValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/AxisValueFormatter;)V

    const/16 v1, 0xd8

    aput-boolean v8, v5, v1

    .line 351
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v1, 0xd9

    aput-boolean v8, v5, v1

    .line 353
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xda

    aput-boolean v8, v5, v1

    .line 354
    const/16 v1, 0xdb

    aput-boolean v8, v5, v1

    move v0, v4

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0xdc

    aput-boolean v8, v5, v1

    .line 355
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/model/WeatherForecast;->getSnow()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/16 v2, 0xdd

    aput-boolean v8, v5, v2

    .line 356
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v3, v0

    invoke-direct {v2, v3, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xde

    aput-boolean v8, v5, v1

    goto :goto_0

    .line 360
    :cond_0
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0xdf

    aput-boolean v8, v5, v1

    .line 361
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/LineData;

    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineData;

    iget-object v3, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v7, 0xe0

    aput-boolean v8, v5, v7

    .line 362
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v7, 0xe1

    aput-boolean v8, v5, v7

    .line 361
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineData;->removeDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    const/16 v1, 0xe2

    aput-boolean v8, v5, v1

    .line 363
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v2, "Snow"

    invoke-direct {v1, v6, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v2, 0xe3

    aput-boolean v8, v5, v2

    .line 364
    sget-object v2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const/16 v2, 0xe4

    aput-boolean v8, v5, v2

    .line 365
    invoke-virtual {v1, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    const/16 v2, 0xe5

    aput-boolean v8, v5, v2

    .line 366
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    const/16 v2, 0xe6

    aput-boolean v8, v5, v2

    .line 367
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v2, 0xe7

    aput-boolean v8, v5, v2

    .line 368
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    const/16 v2, 0xe8

    aput-boolean v8, v5, v2

    .line 369
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/16 v2, 0xe9

    aput-boolean v8, v5, v2

    .line 370
    const-string v2, "#009688"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/16 v2, 0xea

    aput-boolean v8, v5, v2

    .line 371
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    const/16 v2, 0xeb

    aput-boolean v8, v5, v2

    .line 372
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mValueFormatter:Lorg/asdtm/goodweather/utils/CustomValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/16 v2, 0xec

    aput-boolean v8, v5, v2

    .line 374
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v8, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/16 v1, 0xed

    aput-boolean v8, v5, v1

    .line 375
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 376
    const/16 v1, 0xee

    aput-boolean v8, v5, v1

    .line 391
    :goto_1
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 392
    const/16 v1, 0xfb

    aput-boolean v8, v5, v1

    return-void

    .line 377
    :cond_1
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v2, "Snow"

    invoke-direct {v1, v6, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v2, 0xef

    aput-boolean v8, v5, v2

    .line 378
    sget-object v2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const/16 v2, 0xf0

    aput-boolean v8, v5, v2

    .line 379
    invoke-virtual {v1, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    const/16 v2, 0xf1

    aput-boolean v8, v5, v2

    .line 380
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    const/16 v2, 0xf2

    aput-boolean v8, v5, v2

    .line 381
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v2, 0xf3

    aput-boolean v8, v5, v2

    .line 382
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    const/16 v2, 0xf4

    aput-boolean v8, v5, v2

    .line 383
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/16 v2, 0xf5

    aput-boolean v8, v5, v2

    .line 384
    const-string v2, "#009688"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/16 v2, 0xf6

    aput-boolean v8, v5, v2

    .line 385
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    const/16 v2, 0xf7

    aput-boolean v8, v5, v2

    .line 386
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mValueFormatter:Lorg/asdtm/goodweather/utils/CustomValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/16 v2, 0xf8

    aput-boolean v8, v5, v2

    .line 388
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v8, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/16 v1, 0xf9

    aput-boolean v8, v5, v1

    .line 389
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    const/16 v1, 0xfa

    aput-boolean v8, v5, v1

    goto :goto_1
.end method

.method private setTemperatureChart()V
    .locals 12

    .prologue
    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v10, 0x40000000    # 2.0f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 119
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    const/16 v1, 0x18

    aput-boolean v8, v5, v1

    .line 120
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    const/16 v1, 0x19

    aput-boolean v8, v5, v1

    .line 121
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    const/16 v1, 0x1a

    aput-boolean v8, v5, v1

    .line 122
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    const/16 v1, 0x1b

    aput-boolean v8, v5, v1

    .line 123
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setMaxHighlightDistance(F)V

    const/16 v1, 0x1c

    aput-boolean v8, v5, v1

    .line 124
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    const/16 v1, 0x1d

    aput-boolean v8, v5, v1

    .line 125
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    const/16 v1, 0x1e

    aput-boolean v8, v5, v1

    .line 127
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->formatDate()V

    const/16 v1, 0x1f

    aput-boolean v8, v5, v1

    .line 128
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    const/16 v2, 0x20

    aput-boolean v8, v5, v2

    .line 129
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/16 v2, 0x21

    aput-boolean v8, v5, v2

    .line 130
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/16 v2, 0x22

    aput-boolean v8, v5, v2

    .line 131
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    const/16 v2, 0x23

    aput-boolean v8, v5, v2

    .line 132
    new-instance v2, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;

    iget-object v3, p0, Lorg/asdtm/goodweather/GraphsActivity;->mDatesArray:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/AxisValueFormatter;)V

    const/16 v1, 0x24

    aput-boolean v8, v5, v1

    .line 134
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    const/16 v2, 0x25

    aput-boolean v8, v5, v2

    .line 135
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v2, 0x26

    aput-boolean v8, v5, v2

    .line 136
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V

    const/16 v2, 0x27

    aput-boolean v8, v5, v2

    .line 137
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    const/16 v2, 0x28

    aput-boolean v8, v5, v2

    .line 138
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    const/16 v2, 0x29

    aput-boolean v8, v5, v2

    .line 139
    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    const/16 v2, 0x2a

    aput-boolean v8, v5, v2

    .line 140
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    const/16 v2, 0x2b

    aput-boolean v8, v5, v2

    .line 141
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    const/16 v2, 0x2c

    aput-boolean v8, v5, v2

    .line 142
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mYAxisFormatter:Lorg/asdtm/goodweather/utils/YAxisValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/AxisValueFormatter;)V

    const/16 v1, 0x2d

    aput-boolean v8, v5, v1

    .line 144
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v1, 0x2e

    aput-boolean v8, v5, v1

    .line 146
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2f

    aput-boolean v8, v5, v1

    .line 147
    const/16 v1, 0x30

    aput-boolean v8, v5, v1

    move v0, v4

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x31

    aput-boolean v8, v5, v1

    .line 148
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/model/WeatherForecast;->getTemperatureDay()F

    move-result v1

    const/16 v2, 0x32

    aput-boolean v8, v5, v2

    .line 149
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v3, v0

    invoke-direct {v2, v3, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x33

    aput-boolean v8, v5, v1

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x34

    aput-boolean v8, v5, v1

    .line 154
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/LineData;

    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineData;

    iget-object v3, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v7, 0x35

    aput-boolean v8, v5, v7

    .line 155
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v7, 0x36

    aput-boolean v8, v5, v7

    .line 154
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineData;->removeDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    const/16 v1, 0x37

    aput-boolean v8, v5, v1

    .line 156
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v2, "Day"

    invoke-direct {v1, v6, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v2, 0x38

    aput-boolean v8, v5, v2

    .line 157
    sget-object v2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const/16 v2, 0x39

    aput-boolean v8, v5, v2

    .line 158
    invoke-virtual {v1, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    const/16 v2, 0x3a

    aput-boolean v8, v5, v2

    .line 159
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    const/16 v2, 0x3b

    aput-boolean v8, v5, v2

    .line 160
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v2, 0x3c

    aput-boolean v8, v5, v2

    .line 161
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/16 v2, 0x3d

    aput-boolean v8, v5, v2

    .line 162
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    const/16 v2, 0x3e

    aput-boolean v8, v5, v2

    .line 163
    const-string v2, "#E84E40"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/16 v2, 0x3f

    aput-boolean v8, v5, v2

    .line 164
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    const/16 v2, 0x40

    aput-boolean v8, v5, v2

    .line 165
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mValueFormatter:Lorg/asdtm/goodweather/utils/CustomValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/16 v2, 0x41

    aput-boolean v8, v5, v2

    .line 167
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v8, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/16 v1, 0x42

    aput-boolean v8, v5, v1

    .line 168
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 169
    const/16 v1, 0x43

    aput-boolean v8, v5, v1

    .line 184
    :goto_1
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 185
    const/16 v1, 0x50

    aput-boolean v8, v5, v1

    return-void

    .line 170
    :cond_1
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v2, "Day"

    invoke-direct {v1, v6, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v2, 0x44

    aput-boolean v8, v5, v2

    .line 171
    sget-object v2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const/16 v2, 0x45

    aput-boolean v8, v5, v2

    .line 172
    invoke-virtual {v1, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    const/16 v2, 0x46

    aput-boolean v8, v5, v2

    .line 173
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    const/16 v2, 0x47

    aput-boolean v8, v5, v2

    .line 174
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v2, 0x48

    aput-boolean v8, v5, v2

    .line 175
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    const/16 v2, 0x49

    aput-boolean v8, v5, v2

    .line 176
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/16 v2, 0x4a

    aput-boolean v8, v5, v2

    .line 177
    const-string v2, "#E84E40"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/16 v2, 0x4b

    aput-boolean v8, v5, v2

    .line 178
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    const/16 v2, 0x4c

    aput-boolean v8, v5, v2

    .line 179
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mValueFormatter:Lorg/asdtm/goodweather/utils/CustomValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/16 v2, 0x4d

    aput-boolean v8, v5, v2

    .line 181
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v8, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/16 v1, 0x4e

    aput-boolean v8, v5, v1

    .line 182
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    const/16 v1, 0x4f

    aput-boolean v8, v5, v1

    goto :goto_1
.end method

.method private setVisibleUpdating(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 479
    if-eqz p1, :cond_0

    const/16 v1, 0x13b

    aput-boolean v2, v0, v1

    .line 480
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mGetWeatherProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    const/16 v1, 0x13c

    aput-boolean v2, v0, v1

    .line 484
    :goto_0
    const/16 v1, 0x13e

    aput-boolean v2, v0, v1

    return-void

    .line 482
    :cond_0
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mGetWeatherProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    const/16 v1, 0x13d

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method private setWindChart()V
    .locals 12

    .prologue
    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v10, 0x40000000    # 2.0f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 188
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    const/16 v1, 0x51

    aput-boolean v8, v5, v1

    .line 189
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    const/16 v1, 0x52

    aput-boolean v8, v5, v1

    .line 190
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    const/16 v1, 0x53

    aput-boolean v8, v5, v1

    .line 191
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    const/16 v1, 0x54

    aput-boolean v8, v5, v1

    .line 192
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setMaxHighlightDistance(F)V

    const/16 v1, 0x55

    aput-boolean v8, v5, v1

    .line 193
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    const/16 v1, 0x56

    aput-boolean v8, v5, v1

    .line 194
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    const/16 v1, 0x57

    aput-boolean v8, v5, v1

    .line 196
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->formatDate()V

    const/16 v1, 0x58

    aput-boolean v8, v5, v1

    .line 197
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    const/16 v2, 0x59

    aput-boolean v8, v5, v2

    .line 198
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/16 v2, 0x5a

    aput-boolean v8, v5, v2

    .line 199
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/16 v2, 0x5b

    aput-boolean v8, v5, v2

    .line 200
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    const/16 v2, 0x5c

    aput-boolean v8, v5, v2

    .line 201
    new-instance v2, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;

    iget-object v3, p0, Lorg/asdtm/goodweather/GraphsActivity;->mDatesArray:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/AxisValueFormatter;)V

    const/16 v1, 0x5d

    aput-boolean v8, v5, v1

    .line 203
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    const/16 v2, 0x5e

    aput-boolean v8, v5, v2

    .line 204
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v2, 0x5f

    aput-boolean v8, v5, v2

    .line 205
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V

    const/16 v2, 0x60

    aput-boolean v8, v5, v2

    .line 206
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    const/16 v2, 0x61

    aput-boolean v8, v5, v2

    .line 207
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    const/16 v2, 0x62

    aput-boolean v8, v5, v2

    .line 208
    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    const/16 v2, 0x63

    aput-boolean v8, v5, v2

    .line 209
    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    const/16 v2, 0x64

    aput-boolean v8, v5, v2

    .line 210
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    const/16 v2, 0x65

    aput-boolean v8, v5, v2

    .line 211
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mYAxisFormatter:Lorg/asdtm/goodweather/utils/YAxisValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/AxisValueFormatter;)V

    const/16 v1, 0x66

    aput-boolean v8, v5, v1

    .line 213
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v1, 0x67

    aput-boolean v8, v5, v1

    .line 215
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x68

    aput-boolean v8, v5, v1

    .line 216
    const/16 v1, 0x69

    aput-boolean v8, v5, v1

    move v0, v4

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x6a

    aput-boolean v8, v5, v1

    .line 217
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/model/WeatherForecast;->getWindSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/16 v2, 0x6b

    aput-boolean v8, v5, v2

    .line 218
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v3, v0

    invoke-direct {v2, v3, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x6c

    aput-boolean v8, v5, v1

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6d

    aput-boolean v8, v5, v1

    .line 223
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/LineData;

    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineData;

    iget-object v3, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v7, 0x6e

    aput-boolean v8, v5, v7

    .line 224
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v7, 0x6f

    aput-boolean v8, v5, v7

    .line 223
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineData;->removeDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    const/16 v1, 0x70

    aput-boolean v8, v5, v1

    .line 225
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v2, "Wind"

    invoke-direct {v1, v6, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v2, 0x71

    aput-boolean v8, v5, v2

    .line 226
    sget-object v2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const/16 v2, 0x72

    aput-boolean v8, v5, v2

    .line 227
    invoke-virtual {v1, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    const/16 v2, 0x73

    aput-boolean v8, v5, v2

    .line 228
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    const/16 v2, 0x74

    aput-boolean v8, v5, v2

    .line 229
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v2, 0x75

    aput-boolean v8, v5, v2

    .line 230
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    const/16 v2, 0x76

    aput-boolean v8, v5, v2

    .line 231
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/16 v2, 0x77

    aput-boolean v8, v5, v2

    .line 232
    const-string v2, "#00BCD4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/16 v2, 0x78

    aput-boolean v8, v5, v2

    .line 233
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    const/16 v2, 0x79

    aput-boolean v8, v5, v2

    .line 234
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mValueFormatter:Lorg/asdtm/goodweather/utils/CustomValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/16 v2, 0x7a

    aput-boolean v8, v5, v2

    .line 236
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v8, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/16 v1, 0x7b

    aput-boolean v8, v5, v1

    .line 237
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 238
    const/16 v1, 0x7c

    aput-boolean v8, v5, v1

    .line 253
    :goto_1
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 254
    const/16 v1, 0x89

    aput-boolean v8, v5, v1

    return-void

    .line 239
    :cond_1
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v2, "Wind"

    invoke-direct {v1, v6, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v2, 0x7d

    aput-boolean v8, v5, v2

    .line 240
    sget-object v2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const/16 v2, 0x7e

    aput-boolean v8, v5, v2

    .line 241
    invoke-virtual {v1, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCubicIntensity(F)V

    const/16 v2, 0x7f

    aput-boolean v8, v5, v2

    .line 242
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    const/16 v2, 0x80

    aput-boolean v8, v5, v2

    .line 243
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v2, 0x81

    aput-boolean v8, v5, v2

    .line 244
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    const/16 v2, 0x82

    aput-boolean v8, v5, v2

    .line 245
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/16 v2, 0x83

    aput-boolean v8, v5, v2

    .line 246
    const-string v2, "#00BCD4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/16 v2, 0x84

    aput-boolean v8, v5, v2

    .line 247
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    const/16 v2, 0x85

    aput-boolean v8, v5, v2

    .line 248
    iget-object v2, p0, Lorg/asdtm/goodweather/GraphsActivity;->mValueFormatter:Lorg/asdtm/goodweather/utils/CustomValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/16 v2, 0x86

    aput-boolean v8, v5, v2

    .line 250
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v8, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/16 v1, 0x87

    aput-boolean v8, v5, v1

    .line 251
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    const/16 v1, 0x88

    aput-boolean v8, v5, v1

    goto :goto_1
.end method

.method private toggleValues()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 442
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v0, 0x110

    aput-boolean v2, v4, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    const/16 v1, 0x111

    aput-boolean v2, v4, v1

    .line 443
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x112

    aput-boolean v2, v4, v1

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setDrawValues(Z)V

    .line 444
    const/16 v0, 0x114

    aput-boolean v2, v4, v0

    goto :goto_0

    .line 443
    :cond_0
    const/16 v1, 0x113

    aput-boolean v2, v4, v1

    move v1, v3

    goto :goto_1

    .line 445
    :cond_1
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v0, 0x115

    aput-boolean v2, v4, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    const/16 v1, 0x116

    aput-boolean v2, v4, v1

    .line 446
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x117

    aput-boolean v2, v4, v1

    move v1, v2

    :goto_3
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setDrawValues(Z)V

    .line 447
    const/16 v0, 0x119

    aput-boolean v2, v4, v0

    goto :goto_2

    .line 446
    :cond_2
    const/16 v1, 0x118

    aput-boolean v2, v4, v1

    move v1, v3

    goto :goto_3

    .line 448
    :cond_3
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v0, 0x11a

    aput-boolean v2, v4, v0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    const/16 v1, 0x11b

    aput-boolean v2, v4, v1

    .line 449
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x11c

    aput-boolean v2, v4, v1

    move v1, v2

    :goto_5
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setDrawValues(Z)V

    .line 450
    const/16 v0, 0x11e

    aput-boolean v2, v4, v0

    goto :goto_4

    .line 449
    :cond_4
    const/16 v1, 0x11d

    aput-boolean v2, v4, v1

    move v1, v3

    goto :goto_5

    .line 451
    :cond_5
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v0, 0x11f

    aput-boolean v2, v4, v0

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    const/16 v1, 0x120

    aput-boolean v2, v4, v1

    .line 452
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isDrawValuesEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x121

    aput-boolean v2, v4, v1

    move v1, v2

    :goto_7
    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setDrawValues(Z)V

    .line 453
    const/16 v0, 0x123

    aput-boolean v2, v4, v0

    goto :goto_6

    .line 452
    :cond_6
    const/16 v1, 0x122

    aput-boolean v2, v4, v1

    move v1, v3

    goto :goto_7

    .line 454
    :cond_7
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    const/16 v0, 0x124

    aput-boolean v2, v4, v0

    .line 455
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    const/16 v0, 0x125

    aput-boolean v2, v4, v0

    .line 456
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    const/16 v0, 0x126

    aput-boolean v2, v4, v0

    .line 457
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 458
    const/16 v0, 0x127

    aput-boolean v2, v4, v0

    return-void
.end method

.method private toggleYAxis()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 461
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x128

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v0, 0x12a

    aput-boolean v1, v3, v0

    .line 462
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12b

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v0, 0x12d

    aput-boolean v1, v3, v0

    .line 463
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x12e

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v0, 0x130

    aput-boolean v1, v3, v0

    .line 464
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    iget-object v4, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v2, 0x131

    aput-boolean v1, v3, v2

    move v2, v1

    :goto_3
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/16 v0, 0x133

    aput-boolean v1, v3, v0

    .line 465
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    const/16 v0, 0x134

    aput-boolean v1, v3, v0

    .line 466
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    const/16 v0, 0x135

    aput-boolean v1, v3, v0

    .line 467
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    const/16 v0, 0x136

    aput-boolean v1, v3, v0

    .line 468
    iget-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 469
    const/16 v0, 0x137

    aput-boolean v1, v3, v0

    return-void

    .line 461
    :cond_0
    const/16 v0, 0x129

    aput-boolean v1, v3, v0

    move v0, v2

    goto/16 :goto_0

    .line 462
    :cond_1
    const/16 v0, 0x12c

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_1

    .line 463
    :cond_2
    const/16 v0, 0x12f

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_2

    .line 464
    :cond_3
    const/16 v4, 0x132

    aput-boolean v1, v3, v4

    goto :goto_3
.end method

.method private updateUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 585
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->setTemperatureChart()V

    const/16 v1, 0x16e

    aput-boolean v2, v0, v1

    .line 586
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->setWindChart()V

    const/16 v1, 0x16f

    aput-boolean v2, v0, v1

    .line 587
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->setRainChart()V

    const/16 v1, 0x170

    aput-boolean v2, v0, v1

    .line 588
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->setSnowChart()V

    .line 589
    const/16 v1, 0x171

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v5, 0x7f08002a

    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 67
    invoke-super {p0, p1}, Lorg/asdtm/goodweather/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v4, v1, v4

    .line 68
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/GraphsActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 69
    new-instance v0, Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mConnectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 71
    invoke-virtual {p0}, Lorg/asdtm/goodweather/GraphsActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mGetWeatherProgress:Landroid/app/ProgressDialog;

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 72
    new-instance v0, Lorg/asdtm/goodweather/utils/CustomValueFormatter;

    invoke-direct {v0}, Lorg/asdtm/goodweather/utils/CustomValueFormatter;-><init>()V

    iput-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mValueFormatter:Lorg/asdtm/goodweather/utils/CustomValueFormatter;

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 73
    new-instance v0, Lorg/asdtm/goodweather/utils/YAxisValueFormatter;

    invoke-direct {v0}, Lorg/asdtm/goodweather/utils/YAxisValueFormatter;-><init>()V

    iput-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mYAxisFormatter:Lorg/asdtm/goodweather/utils/YAxisValueFormatter;

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 74
    const v0, 0x7f0f007e

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/GraphsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mTemperatureChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 75
    const v0, 0x7f0f0080

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/GraphsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mWindChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 76
    const v0, 0x7f0f0082

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/GraphsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mRainChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 77
    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/GraphsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mSnowChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 78
    const v0, 0x7f0f007d

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/GraphsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080026

    invoke-virtual {p0, v3}, Lorg/asdtm/goodweather/GraphsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    aput-boolean v4, v1, v3

    .line 81
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/Utils;->getTemperatureScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-boolean v4, v1, v3

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    .line 82
    const v0, 0x7f0f007f

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/GraphsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080027

    invoke-virtual {p0, v3}, Lorg/asdtm/goodweather/GraphsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lorg/asdtm/goodweather/utils/Utils;->getSpeedScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    .line 84
    const v0, 0x7f0f0081

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/GraphsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080024

    invoke-virtual {p0, v3}, Lorg/asdtm/goodweather/GraphsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lorg/asdtm/goodweather/GraphsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x13

    aput-boolean v4, v1, v0

    .line 86
    const v0, 0x7f0f0083

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/GraphsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080025

    invoke-virtual {p0, v3}, Lorg/asdtm/goodweather/GraphsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lorg/asdtm/goodweather/GraphsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x15

    aput-boolean v4, v1, v0

    .line 89
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->updateUI()V

    const/16 v0, 0x16

    aput-boolean v4, v1, v0

    .line 90
    new-instance v0, Lorg/asdtm/goodweather/GraphsActivity$1;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/GraphsActivity$1;-><init>(Lorg/asdtm/goodweather/GraphsActivity;)V

    iput-object v0, p0, Lorg/asdtm/goodweather/GraphsActivity;->mHandler:Landroid/os/Handler;

    .line 116
    const/16 v0, 0x17

    aput-boolean v4, v1, v0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Lorg/asdtm/goodweather/GraphsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/16 v2, 0x104

    aput-boolean v3, v0, v2

    .line 411
    const v2, 0x7f100002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 412
    const/16 v1, 0x105

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 417
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 438
    invoke-super {p0, p1}, Lorg/asdtm/goodweather/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x10f

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 419
    :sswitch_0
    iget-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mConnectionDetector:Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/ConnectionDetector;->isNetworkAvailableAndConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x106

    aput-boolean v0, v2, v1

    .line 420
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->getWeather()V

    const/16 v1, 0x107

    aput-boolean v0, v2, v1

    .line 421
    invoke-direct {p0, v0}, Lorg/asdtm/goodweather/GraphsActivity;->setVisibleUpdating(Z)V

    const/16 v1, 0x108

    aput-boolean v0, v2, v1

    .line 427
    :goto_1
    const/16 v1, 0x10b

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 423
    :cond_0
    const v1, 0x7f08001c

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v3, 0x109

    aput-boolean v0, v2, v3

    .line 425
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x10a

    aput-boolean v0, v2, v1

    goto :goto_1

    .line 429
    :sswitch_1
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->toggleValues()V

    .line 430
    const/16 v1, 0x10c

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 432
    :sswitch_2
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->toggleYAxis()V

    .line 433
    const/16 v1, 0x10d

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 435
    :sswitch_3
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 436
    const/16 v1, 0x10e

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f0f010b -> :sswitch_0
        0x7f0f010c -> :sswitch_1
        0x7f0f010d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GraphsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 473
    invoke-super {p0}, Lorg/asdtm/goodweather/BaseActivity;->onResume()V

    const/16 v1, 0x138

    aput-boolean v2, v0, v1

    .line 474
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/AppPreference;->loadWeatherForecast(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/GraphsActivity;->mForecastList:Ljava/util/List;

    const/16 v1, 0x139

    aput-boolean v2, v0, v1

    .line 475
    invoke-direct {p0}, Lorg/asdtm/goodweather/GraphsActivity;->updateUI()V

    .line 476
    const/16 v1, 0x13a

    aput-boolean v2, v0, v1

    return-void
.end method

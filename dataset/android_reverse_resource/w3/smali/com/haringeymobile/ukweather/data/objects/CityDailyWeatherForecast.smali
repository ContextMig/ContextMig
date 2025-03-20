.class public Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;
.super Ljava/lang/Object;
.source "CityDailyWeatherForecast.java"

# interfaces
.implements Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cloudinessPercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clouds"
    .end annotation
.end field

.field private date:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dt"
    .end annotation
.end field

.field private humidity:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "humidity"
    .end annotation
.end field

.field private pressure:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pressure"
    .end annotation
.end field

.field private temperature:Lcom/haringeymobile/ukweather/data/objects/Temperature;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "temp"
    .end annotation
.end field

.field private weather:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/haringeymobile/ukweather/data/objects/Weather;",
            ">;"
        }
    .end annotation
.end field

.field private windDirectionInDegrees:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deg"
    .end annotation
.end field

.field private windSpeed:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speed"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x16aff5ea611df20eL    # 2.087699130990723E-199

    const-string v2, "com/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->date:J

    const/16 v1, 0xf

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getDayTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->temperature:Lcom/haringeymobile/ukweather/data/objects/Temperature;

    invoke-virtual {v1, p1}, Lcom/haringeymobile/ukweather/data/objects/Temperature;->getDayTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D

    move-result-wide v2

    const/4 v1, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getHumidity()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->humidity:D

    const/4 v1, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getIconName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v1

    .line 48
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->weather:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/Weather;

    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/Weather;->getIcon()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public getPressure()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->pressure:D

    const/4 v1, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTemperature()Lcom/haringeymobile/ukweather/data/objects/Temperature;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->temperature:Lcom/haringeymobile/ukweather/data/objects/Temperature;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v1

    .line 43
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->weather:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/Weather;

    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/Weather;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public getWeatherConditionsId()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v1

    .line 38
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->weather:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/Weather;

    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/Weather;->getId()I

    move-result v0

    aput-boolean v3, v1, v3

    return v0
.end method

.method public getWind()Lcom/haringeymobile/ukweather/data/objects/Wind;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    new-instance v1, Lcom/haringeymobile/ukweather/data/objects/Wind;

    invoke-direct {v1}, Lcom/haringeymobile/ukweather/data/objects/Wind;-><init>()V

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    .line 69
    iget v2, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->windDirectionInDegrees:I

    invoke-virtual {v1, v2}, Lcom/haringeymobile/ukweather/data/objects/Wind;->setDirectionInDegrees(I)V

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    .line 70
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->windSpeed:D

    invoke-virtual {v1, v2, v3}, Lcom/haringeymobile/ukweather/data/objects/Wind;->setSpeed(D)V

    .line 71
    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public isDayTemperatureProvided()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v2

    .line 76
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->temperature:Lcom/haringeymobile/ukweather/data/objects/Temperature;

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xc

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xb

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public isHumidityProvided()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    return v2
.end method

.method public isPressureProvided()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    return v2
.end method

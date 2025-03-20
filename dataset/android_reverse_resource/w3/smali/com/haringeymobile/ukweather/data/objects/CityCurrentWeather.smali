.class public Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;
.super Ljava/lang/Object;
.source "CityCurrentWeather.java"

# interfaces
.implements Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cityId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private cityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private clouds:Lcom/haringeymobile/ukweather/data/objects/Clouds;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clouds"
    .end annotation
.end field

.field private coordinates:Lcom/haringeymobile/ukweather/data/objects/Coordinates;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coord"
    .end annotation
.end field

.field private date:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dt"
    .end annotation
.end field

.field private numericParameters:Lcom/haringeymobile/ukweather/data/objects/NumericParameters;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "main"
    .end annotation
.end field

.field private rain:Lcom/haringeymobile/ukweather/data/objects/Rain;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rain"
    .end annotation
.end field

.field private systemParameters:Lcom/haringeymobile/ukweather/data/objects/SystemParameters;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sys"
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

.field private wind:Lcom/haringeymobile/ukweather/data/objects/Wind;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5f9f629a84f470feL    # -9.913524900459373E-153

    const-string v2, "com/haringeymobile/ukweather/data/objects/CityCurrentWeather"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCityId()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    iget v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->cityId:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getCityName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->cityName:Ljava/lang/String;

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCoordinates()Lcom/haringeymobile/ukweather/data/objects/Coordinates;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->coordinates:Lcom/haringeymobile/ukweather/data/objects/Coordinates;

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDayTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->numericParameters:Lcom/haringeymobile/ukweather/data/objects/NumericParameters;

    invoke-virtual {v1, p1}, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->getTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D

    move-result-wide v2

    const/4 v1, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getHumidity()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->numericParameters:Lcom/haringeymobile/ukweather/data/objects/NumericParameters;

    invoke-virtual {v1}, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->getHumidity()D

    move-result-wide v2

    const/4 v1, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getIconName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v1

    .line 54
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->weather:Ljava/util/List;

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
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->numericParameters:Lcom/haringeymobile/ukweather/data/objects/NumericParameters;

    invoke-virtual {v1}, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->getPressure()D

    move-result-wide v2

    const/4 v1, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getSystemParameters()Lcom/haringeymobile/ukweather/data/objects/SystemParameters;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->systemParameters:Lcom/haringeymobile/ukweather/data/objects/SystemParameters;

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v1

    .line 49
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->weather:Ljava/util/List;

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

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v1

    .line 44
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->weather:Ljava/util/List;

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
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->wind:Lcom/haringeymobile/ukweather/data/objects/Wind;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isDayTemperatureProvided()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v2

    .line 79
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->numericParameters:Lcom/haringeymobile/ukweather/data/objects/NumericParameters;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xa

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public isHumidityProvided()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v2

    .line 89
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->numericParameters:Lcom/haringeymobile/ukweather/data/objects/NumericParameters;

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x10

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xf

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public isPressureProvided()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->$jacocoInit()[Z

    move-result-object v2

    .line 84
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->numericParameters:Lcom/haringeymobile/ukweather/data/objects/NumericParameters;

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xd

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xc

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

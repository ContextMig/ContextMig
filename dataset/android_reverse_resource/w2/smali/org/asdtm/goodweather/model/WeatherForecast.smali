.class public Lorg/asdtm/goodweather/model/WeatherForecast;
.super Ljava/lang/Object;
.source "WeatherForecast.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cloudiness:Ljava/lang/String;

.field private dateTime:J

.field private description:Ljava/lang/String;

.field private humidity:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private pressure:Ljava/lang/String;

.field private rain:Ljava/lang/String;

.field private snow:Ljava/lang/String;

.field private temperatureDay:F

.field private temperatureEvening:F

.field private temperatureMax:F

.field private temperatureMin:F

.field private temperatureMorning:F

.field private temperatureNight:F

.field private windDegree:Ljava/lang/String;

.field private windSpeed:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1dfcdffe2a78423cL    # -1.3766696356490233E164

    const-string v2, "org/asdtm/goodweather/model/WeatherForecast"

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCloudiness()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    iget-object v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->cloudiness:Ljava/lang/String;

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDateTime()J
    .locals 5

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iget-wide v2, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->dateTime:J

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->description:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getHumidity()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->humidity:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getIcon()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iget-object v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->icon:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPressure()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->pressure:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getRain()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iget-object v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->rain:Ljava/lang/String;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSnow()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iget-object v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->snow:Ljava/lang/String;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTemperatureDay()F
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    iget v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureDay:F

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getTemperatureEvening()F
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    iget v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureEvening:F

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getTemperatureMax()F
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    iget v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureMax:F

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getTemperatureMin()F
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 129
    iget v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureMin:F

    const/16 v2, 0x1b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getTemperatureMorning()F
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    iget v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureMorning:F

    const/16 v2, 0x1d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getTemperatureNight()F
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 145
    iget v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureNight:F

    const/16 v2, 0x1f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getWindDegree()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    iget-object v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->windDegree:Ljava/lang/String;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getWindSpeed()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    iget-object v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->windSpeed:Ljava/lang/String;

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setCloudiness(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    iput-object p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->cloudiness:Ljava/lang/String;

    .line 102
    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDateTime(J)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iput-wide p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->dateTime:J

    .line 38
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->description:Ljava/lang/String;

    .line 30
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setHumidity(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iput-object p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->humidity:Ljava/lang/String;

    .line 46
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iput-object p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->icon:Ljava/lang/String;

    .line 54
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setPressure(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    iput-object p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->pressure:Ljava/lang/String;

    .line 62
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setRain(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iput-object p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->rain:Ljava/lang/String;

    .line 70
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSnow(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    iput-object p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->snow:Ljava/lang/String;

    .line 78
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTemperatureDay(F)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    iput p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureDay:F

    .line 110
    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTemperatureEvening(F)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    iput p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureEvening:F

    .line 118
    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTemperatureMax(F)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 125
    iput p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureMax:F

    .line 126
    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTemperatureMin(F)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 133
    iput p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureMin:F

    .line 134
    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTemperatureMorning(F)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    iput p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureMorning:F

    .line 142
    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTemperatureNight(F)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 149
    iput p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->temperatureNight:F

    .line 150
    const/16 v1, 0x20

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setWindDegree(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    iput-object p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->windDegree:Ljava/lang/String;

    .line 86
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setWindSpeed(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/WeatherForecast;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    iput-object p1, p0, Lorg/asdtm/goodweather/model/WeatherForecast;->windSpeed:Ljava/lang/String;

    .line 94
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

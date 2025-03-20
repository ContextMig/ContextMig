.class public Lcz/martykan/forecastie/models/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/martykan/forecastie/models/Weather$WindDirection;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private humidity:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private lastUpdated:Ljava/lang/String;

.field private pressure:Ljava/lang/String;

.field private rain:Ljava/lang/String;

.field private sunrise:Ljava/util/Date;

.field private sunset:Ljava/util/Date;

.field private temperature:Ljava/lang/String;

.field private wind:Ljava/lang/String;

.field private windDirectionDegree:Ljava/lang/Double;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/models/Weather;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x74315d307358f329L    # 4.972865160873775E251

    const-string v2, "cz/martykan/forecastie/models/Weather"

    const/16 v3, 0x4d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/models/Weather;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static windDirectionDegreeToIndex(DI)I
    .locals 10

    .prologue
    const-wide v8, 0x4076800000000000L    # 360.0

    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v3

    .line 50
    rem-double v0, p0, v8

    .line 51
    .local v0, "degree":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_0

    aput-boolean v6, v3, v6

    .line 53
    :goto_0
    const/16 v4, 0xb4

    div-int/2addr v4, p2

    int-to-double v4, v4

    add-double/2addr v0, v4

    const/4 v4, 0x3

    aput-boolean v6, v3, v4

    .line 55
    int-to-double v4, p2

    mul-double/2addr v4, v0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 57
    .local v2, "direction":I
    rem-int v4, v2, p2

    const/4 v5, 0x4

    aput-boolean v6, v3, v5

    return v4

    .line 51
    .end local v2    # "direction":I
    :cond_0
    add-double/2addr v0, v8

    const/4 v4, 0x2

    aput-boolean v6, v3, v4

    goto :goto_0
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->city:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCountry()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->country:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->date:Ljava/util/Date;

    const/16 v2, 0x30

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->description:Ljava/lang/String;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getHumidity()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->humidity:Ljava/lang/String;

    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getIcon()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->icon:Ljava/lang/String;

    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->id:Ljava/lang/String;

    const/16 v2, 0x47

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLastUpdated()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->lastUpdated:Ljava/lang/String;

    const/16 v2, 0x4c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getNumDaysFrom(Ljava/util/Date;)J
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x3a

    aput-boolean v6, v0, v2

    .line 236
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0x3b

    aput-boolean v6, v0, v2

    .line 237
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x3c

    aput-boolean v6, v0, v2

    .line 238
    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x3d

    aput-boolean v6, v0, v2

    .line 239
    invoke-virtual {v1, v7, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x3e

    aput-boolean v6, v0, v2

    .line 240
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x3f

    aput-boolean v6, v0, v2

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x40

    aput-boolean v6, v0, v3

    .line 243
    iget-object v3, p0, Lcz/martykan/forecastie/models/Weather;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v3, 0x41

    aput-boolean v6, v0, v3

    .line 244
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0x42

    aput-boolean v6, v0, v3

    .line 245
    invoke-virtual {v2, v8, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0x43

    aput-boolean v6, v0, v3

    .line 246
    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0x44

    aput-boolean v6, v0, v3

    .line 247
    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0x45

    aput-boolean v6, v0, v3

    .line 249
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x4194997000000000L    # 8.64E7

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const/16 v1, 0x46

    aput-boolean v6, v0, v1

    return-wide v2
.end method

.method public getPressure()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->pressure:Ljava/lang/String;

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getRain()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->rain:Ljava/lang/String;

    const/16 v2, 0x49

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSunrise()Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->sunrise:Ljava/util/Date;

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSunset()Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->sunset:Ljava/util/Date;

    const/16 v2, 0x24

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTemperature()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->temperature:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getWind()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->wind:Ljava/lang/String;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getWindDirection()Lcz/martykan/forecastie/models/Weather$WindDirection;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->windDirectionDegree:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;->byDegree(D)Lcz/martykan/forecastie/models/Weather$WindDirection;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getWindDirection(I)Lcz/martykan/forecastie/models/Weather$WindDirection;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->windDirectionDegree:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcz/martykan/forecastie/models/Weather$WindDirection;->byDegree(DI)Lcz/martykan/forecastie/models/Weather$WindDirection;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getWindDirectionDegree()Ljava/lang/Double;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcz/martykan/forecastie/models/Weather;->windDirectionDegree:Ljava/lang/Double;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isWindDirectionAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v2

    .line 135
    iget-object v0, p0, Lcz/martykan/forecastie/models/Weather;->windDirectionDegree:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x15

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x14

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->city:Ljava/lang/String;

    .line 82
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->country:Ljava/lang/String;

    .line 90
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v1

    .line 216
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/models/Weather;->setDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    const/16 v0, 0x31

    aput-boolean v6, v1, v0

    .line 228
    :goto_0
    const/16 v0, 0x38

    aput-boolean v6, v1, v0

    return-void

    .line 218
    :catch_0
    move-exception v0

    const/16 v0, 0x32

    aput-boolean v6, v1, v0

    .line 219
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v2, 0x33

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v1, v2

    .line 221
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/models/Weather;->setDate(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    const/16 v0, 0x34

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    const/16 v2, 0x35

    aput-boolean v6, v1, v2

    .line 224
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v2}, Lcz/martykan/forecastie/models/Weather;->setDate(Ljava/util/Date;)V

    const/16 v2, 0x36

    aput-boolean v6, v1, v2

    .line 225
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/16 v0, 0x37

    aput-boolean v6, v1, v0

    goto :goto_0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->date:Ljava/util/Date;

    .line 232
    const/16 v1, 0x39

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->description:Ljava/lang/String;

    .line 107
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setHumidity(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 151
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->humidity:Ljava/lang/String;

    .line 152
    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 207
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->icon:Ljava/lang/String;

    .line 208
    const/16 v1, 0x2f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 257
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->id:Ljava/lang/String;

    .line 258
    const/16 v1, 0x48

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 269
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->lastUpdated:Ljava/lang/String;

    .line 270
    const/16 v1, 0x4b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setPressure(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->pressure:Ljava/lang/String;

    .line 144
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setRain(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 265
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->rain:Ljava/lang/String;

    .line 266
    const/16 v1, 0x4a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSunrise(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v1

    .line 160
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/models/Weather;->setSunrise(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    const/16 v0, 0x1b

    aput-boolean v6, v1, v0

    .line 172
    :goto_0
    const/16 v0, 0x22

    aput-boolean v6, v1, v0

    return-void

    .line 162
    :catch_0
    move-exception v0

    const/16 v0, 0x1c

    aput-boolean v6, v1, v0

    .line 163
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v2, 0x1d

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v1, v2

    .line 165
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/models/Weather;->setSunrise(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    const/16 v0, 0x1e

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    const/16 v2, 0x1f

    aput-boolean v6, v1, v2

    .line 168
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v2}, Lcz/martykan/forecastie/models/Weather;->setSunrise(Ljava/util/Date;)V

    const/16 v2, 0x20

    aput-boolean v6, v1, v2

    .line 169
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/16 v0, 0x21

    aput-boolean v6, v1, v0

    goto :goto_0
.end method

.method public setSunrise(Ljava/util/Date;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 175
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->sunrise:Ljava/util/Date;

    .line 176
    const/16 v1, 0x23

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSunset(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v1

    .line 184
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/models/Weather;->setSunset(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    const/16 v0, 0x25

    aput-boolean v6, v1, v0

    .line 196
    :goto_0
    const/16 v0, 0x2c

    aput-boolean v6, v1, v0

    return-void

    .line 186
    :catch_0
    move-exception v0

    const/16 v0, 0x26

    aput-boolean v6, v1, v0

    .line 187
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v2, 0x27

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v1, v2

    .line 189
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/models/Weather;->setSunrise(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    const/16 v0, 0x28

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 191
    :catch_1
    move-exception v0

    const/16 v2, 0x29

    aput-boolean v6, v1, v2

    .line 192
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v2}, Lcz/martykan/forecastie/models/Weather;->setSunset(Ljava/util/Date;)V

    const/16 v2, 0x2a

    aput-boolean v6, v1, v2

    .line 193
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/16 v0, 0x2b

    aput-boolean v6, v1, v0

    goto :goto_0
.end method

.method public setSunset(Ljava/util/Date;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 199
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->sunset:Ljava/util/Date;

    .line 200
    const/16 v1, 0x2d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTemperature(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->temperature:Ljava/lang/String;

    .line 98
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setWind(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 115
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->wind:Ljava/lang/String;

    .line 116
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setWindDirectionDegree(Ljava/lang/Double;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    iput-object p1, p0, Lcz/martykan/forecastie/models/Weather;->windDirectionDegree:Ljava/lang/Double;

    .line 124
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

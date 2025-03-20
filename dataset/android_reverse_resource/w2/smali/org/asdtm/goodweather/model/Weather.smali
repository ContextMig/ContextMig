.class public Lorg/asdtm/goodweather/model/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/asdtm/goodweather/model/Weather$Sys;,
        Lorg/asdtm/goodweather/model/Weather$Cloud;,
        Lorg/asdtm/goodweather/model/Weather$CurrentCondition;,
        Lorg/asdtm/goodweather/model/Weather$CurrentWeather;,
        Lorg/asdtm/goodweather/model/Weather$Wind;,
        Lorg/asdtm/goodweather/model/Weather$Temperature;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field public cloud:Lorg/asdtm/goodweather/model/Weather$Cloud;

.field public currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

.field public currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

.field public location:Lorg/asdtm/goodweather/model/CitySearch;

.field public sys:Lorg/asdtm/goodweather/model/Weather$Sys;

.field public temperature:Lorg/asdtm/goodweather/model/Weather$Temperature;

.field public wind:Lorg/asdtm/goodweather/model/Weather$Wind;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/model/Weather;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5f7974e3485b6bc6L    # 8.332937262488582E151

    const-string v2, "org/asdtm/goodweather/model/Weather"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/model/Weather;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/model/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 6
    new-instance v1, Lorg/asdtm/goodweather/model/Weather$Temperature;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/model/Weather$Temperature;-><init>(Lorg/asdtm/goodweather/model/Weather;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/model/Weather;->temperature:Lorg/asdtm/goodweather/model/Weather$Temperature;

    aput-boolean v2, v0, v2

    .line 7
    new-instance v1, Lorg/asdtm/goodweather/model/Weather$Wind;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/model/Weather$Wind;-><init>(Lorg/asdtm/goodweather/model/Weather;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/model/Weather;->wind:Lorg/asdtm/goodweather/model/Weather$Wind;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 8
    new-instance v1, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;-><init>(Lorg/asdtm/goodweather/model/Weather;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/model/Weather;->currentWeather:Lorg/asdtm/goodweather/model/Weather$CurrentWeather;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 9
    new-instance v1, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/model/Weather$CurrentCondition;-><init>(Lorg/asdtm/goodweather/model/Weather;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/model/Weather;->currentCondition:Lorg/asdtm/goodweather/model/Weather$CurrentCondition;

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 10
    new-instance v1, Lorg/asdtm/goodweather/model/Weather$Cloud;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/model/Weather$Cloud;-><init>(Lorg/asdtm/goodweather/model/Weather;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/model/Weather;->cloud:Lorg/asdtm/goodweather/model/Weather$Cloud;

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 11
    new-instance v1, Lorg/asdtm/goodweather/model/Weather$Sys;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/model/Weather$Sys;-><init>(Lorg/asdtm/goodweather/model/Weather;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/model/Weather;->sys:Lorg/asdtm/goodweather/model/Weather$Sys;

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method

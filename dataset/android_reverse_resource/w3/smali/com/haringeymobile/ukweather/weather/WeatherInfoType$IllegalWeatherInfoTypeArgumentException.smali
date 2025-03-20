.class public Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "WeatherInfoType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalWeatherInfoTypeArgumentException"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final serialVersionUID:J = -0x32e0c285a391fff7L


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3651c4ec65149604L    # -8.629358747063229E46

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;->$jacocoInit()[Z

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported weatherInfoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

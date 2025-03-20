.class public Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;
.super Ljava/lang/Object;
.source "SearchResponseForThreeHourlyForecastQuery.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cityInfo:Lcom/haringeymobile/ukweather/data/objects/CityInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field private code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cod"
    .end annotation
.end field

.field private forecastCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cnt"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private threeHourlyWeatherForecasts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xcc65fa62d3a9ec6L    # 3.999908057895077E-247

    const-string v2, "com/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCityInfo()Lcom/haringeymobile/ukweather/data/objects/CityInfo;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;->cityInfo:Lcom/haringeymobile/ukweather/data/objects/CityInfo;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getThreeHourlyWeatherForecasts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;->threeHourlyWeatherForecasts:Ljava/util/List;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

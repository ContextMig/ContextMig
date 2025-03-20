.class public Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;
.super Landroid/support/v4/app/Fragment;
.source "WeatherForecastParentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final CITY_NAME_NOT_KNOWN:Ljava/lang/String; = "??"

.field private static final EARLIEST_MORNING_HOUR:I = 0x5

.field private static final WEATHER_INFORMATION_TYPE:Ljava/lang/String; = "weather info type"

.field private static final WEATHER_INFO_JSON_STRING:Ljava/lang/String; = "forecast json"


# instance fields
.field private cityName:Ljava/lang/String;

.field private jsonStringListsForChildListFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private jsonStringsForChildFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parentActivity:Landroid/support/v4/app/FragmentActivity;

.field private weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7d283f09ddf3fe48L    # -5.81134345559239E-295

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherForecastParentFragment"

    const/16 v3, 0x5b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v2, 0x57

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringsForChildFragments:Ljava/util/List;

    const/16 v2, 0x58

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringListsForChildListFragments:Ljava/util/List;

    const/16 v2, 0x59

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->cityName:Ljava/lang/String;

    const/16 v2, 0x5a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private extractDailyForecastJsonData(Ljava/lang/String;Lcom/google/gson/Gson;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 130
    const-class v0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForDailyForecastQuery;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForDailyForecastQuery;

    const/16 v2, 0x16

    aput-boolean v4, v1, v2

    .line 132
    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForDailyForecastQuery;->getCityInfo()Lcom/haringeymobile/ukweather/data/objects/CityInfo;

    move-result-object v2

    const/16 v3, 0x17

    aput-boolean v4, v1, v3

    .line 133
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->getCityName(Lcom/haringeymobile/ukweather/data/objects/CityInfo;)V

    .line 135
    const/16 v2, 0x18

    aput-boolean v4, v1, v2

    .line 136
    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForDailyForecastQuery;->getDailyWeatherForecasts()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x19

    aput-boolean v4, v1, v2

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v0, 0x1a

    aput-boolean v4, v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;

    const/16 v3, 0x1b

    aput-boolean v4, v1, v3

    .line 138
    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringsForChildFragments:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const/16 v0, 0x1c

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 140
    :cond_0
    const/16 v0, 0x1d

    aput-boolean v4, v1, v0

    return-void
.end method

.method private extractJsonDataForChildFragments()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "forecast json"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v5, v1, v3

    .line 104
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 106
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    sget-object v4, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->DAILY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    if-ne v3, v4, :cond_0

    const/16 v3, 0xc

    aput-boolean v5, v1, v3

    .line 107
    invoke-direct {p0, v2, v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->extractDailyForecastJsonData(Ljava/lang/String;Lcom/google/gson/Gson;)V

    const/16 v2, 0xd

    aput-boolean v5, v1, v2

    .line 120
    :goto_0
    const/16 v2, 0x15

    aput-boolean v5, v1, v2

    :goto_1
    return-void

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    sget-object v4, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->THREE_HOURLY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    if-ne v3, v4, :cond_3

    const/16 v3, 0xe

    aput-boolean v5, v1, v3

    .line 109
    invoke-direct {p0, v2, v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->extractThreeHourlyForecastJsonData(Ljava/lang/String;Lcom/google/gson/Gson;)V

    const/16 v2, 0xf

    aput-boolean v5, v1, v2

    .line 110
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringsForChildFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 111
    const/16 v2, 0x10

    aput-boolean v5, v1, v2

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getForecastDisplayMode(Landroid/content/Context;)Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    move-result-object v2

    sget-object v3, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->LIST:Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    if-eq v2, v3, :cond_2

    const/16 v2, 0x11

    aput-boolean v5, v1, v2

    goto :goto_0

    :cond_2
    const/16 v2, 0x12

    aput-boolean v5, v1, v2

    .line 115
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->splitThreeHourlyForecastsIntoDailyLists()V

    const/16 v2, 0x13

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 118
    :cond_3
    new-instance v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    invoke-direct {v2, v3}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/16 v3, 0x14

    aput-boolean v5, v1, v3

    throw v2
.end method

.method private extractThreeHourlyForecastJsonData(Ljava/lang/String;Lcom/google/gson/Gson;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 162
    const-class v0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;

    const/16 v2, 0x21

    aput-boolean v4, v1, v2

    .line 163
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;

    const/16 v2, 0x22

    aput-boolean v4, v1, v2

    .line 164
    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;->getCityInfo()Lcom/haringeymobile/ukweather/data/objects/CityInfo;

    move-result-object v2

    const/16 v3, 0x23

    aput-boolean v4, v1, v3

    .line 167
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->getCityName(Lcom/haringeymobile/ukweather/data/objects/CityInfo;)V

    .line 168
    const/16 v2, 0x24

    aput-boolean v4, v1, v2

    .line 169
    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForThreeHourlyForecastQuery;->getThreeHourlyWeatherForecasts()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x25

    aput-boolean v4, v1, v2

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v0, 0x26

    aput-boolean v4, v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    const/16 v3, 0x27

    aput-boolean v4, v1, v3

    .line 171
    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringsForChildFragments:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const/16 v0, 0x28

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 173
    :cond_0
    const/16 v0, 0x29

    aput-boolean v4, v1, v0

    return-void
.end method

.method private findMorningStartHour(I)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 229
    add-int/lit8 v1, p1, -0x5

    rem-int/lit8 v0, v1, 0x3

    .line 230
    .local v0, "remainder":I
    if-ltz v0, :cond_0

    const/16 v1, 0x3b

    aput-boolean v5, v2, v1

    .line 233
    :goto_0
    if-nez v0, :cond_1

    .line 234
    const/4 v1, 0x5

    const/16 v3, 0x3d

    aput-boolean v5, v2, v3

    .line 238
    :goto_1
    return v1

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x3

    const/16 v1, 0x3c

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 235
    :cond_1
    if-ne v0, v5, :cond_2

    .line 236
    const/4 v1, 0x6

    const/16 v3, 0x3e

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 237
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 238
    const/4 v1, 0x7

    const/16 v3, 0x3f

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 240
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected remainder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x40

    aput-boolean v5, v2, v3

    throw v1
.end method

.method private getCityName(Lcom/haringeymobile/ukweather/data/objects/CityInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 151
    if-nez p1, :cond_0

    const-string v0, "??"

    const/16 v2, 0x1e

    aput-boolean v3, v1, v2

    :goto_0
    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->cityName:Ljava/lang/String;

    .line 152
    const/16 v0, 0x20

    aput-boolean v3, v1, v0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/CityInfo;->getCityName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private getFirstThreeHourlyForecastHour()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 213
    const-wide/16 v2, 0x3e8

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringsForChildFragments:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v5, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    const/16 v4, 0x35

    aput-boolean v6, v1, v4

    .line 214
    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;->getDate()J

    move-result-wide v4

    mul-long/2addr v2, v4

    const/16 v0, 0x36

    aput-boolean v6, v1, v0

    .line 215
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/16 v2, 0x37

    aput-boolean v6, v1, v2

    .line 216
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v3, 0x38

    aput-boolean v6, v1, v3

    .line 217
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0x39

    aput-boolean v6, v1, v0

    .line 219
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x3a

    aput-boolean v6, v1, v2

    return v0
.end method

.method private getLatestDailyThreeHourlyForecastList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 272
    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringListsForChildListFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x47

    aput-boolean v3, v1, v2

    .line 273
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringListsForChildListFragments:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/16 v2, 0x48

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public static newInstance(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Ljava/lang/String;)Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    new-instance v1, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    invoke-direct {v1}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;-><init>()V

    aput-boolean v4, v0, v4

    .line 77
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 78
    const-string v3, "weather info type"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 79
    const-string v3, "forecast json"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-boolean v4, v0, v3

    .line 80
    invoke-virtual {v1, v2}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private shouldStartNewDailyList(II)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 260
    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringListsForChildListFragments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 261
    const/16 v1, 0x41

    aput-boolean v2, v3, v1

    move v1, v2

    .line 268
    .local v0, "threeHourlyForecastCountInCurrentDailyList":I
    :goto_0
    return v1

    .line 263
    .end local v0    # "threeHourlyForecastCountInCurrentDailyList":I
    :cond_0
    if-ne p2, p1, :cond_2

    .line 264
    const/16 v4, 0x42

    aput-boolean v2, v3, v4

    .line 265
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->getLatestDailyThreeHourlyForecastList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 266
    .restart local v0    # "threeHourlyForecastCountInCurrentDailyList":I
    mul-int/lit8 v4, v0, 0x3

    sub-int v4, p2, v4

    if-gez v4, :cond_1

    const/16 v1, 0x43

    aput-boolean v2, v3, v1

    move v1, v2

    :goto_1
    const/16 v4, 0x45

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    const/16 v4, 0x44

    aput-boolean v2, v3, v4

    goto :goto_1

    .line 268
    .end local v0    # "threeHourlyForecastCountInCurrentDailyList":I
    :cond_2
    const/16 v4, 0x46

    aput-boolean v2, v3, v4

    goto :goto_0
.end method

.method private splitThreeHourlyForecastsIntoDailyLists()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 185
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->getFirstThreeHourlyForecastHour()I

    move-result v0

    const/16 v4, 0x2a

    aput-boolean v8, v3, v4

    .line 186
    invoke-direct {p0, v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->findMorningStartHour(I)I

    move-result v4

    const/16 v5, 0x2b

    aput-boolean v8, v3, v5

    .line 187
    iget-object v5, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringsForChildFragments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x2c

    aput-boolean v8, v3, v6

    .line 189
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringListsForChildListFragments:Ljava/util/List;

    .line 191
    .local v0, "forecastHour":I
    const/4 v1, 0x0

    const/16 v6, 0x2d

    aput-boolean v8, v3, v6

    :goto_0
    if-ge v1, v5, :cond_1

    const/16 v6, 0x2e

    aput-boolean v8, v3, v6

    .line 192
    invoke-direct {p0, v4, v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->shouldStartNewDailyList(II)Z

    move-result v2

    .line 194
    .local v2, "shouldStartNewDailyList":Z
    if-nez v2, :cond_0

    const/16 v6, 0x2f

    aput-boolean v8, v3, v6

    .line 200
    :goto_1
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->getLatestDailyThreeHourlyForecastList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringsForChildFragments:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v0, v0, 0x3

    .line 203
    rem-int/lit8 v0, v0, 0x18

    .line 191
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/16 v6, 0x33

    aput-boolean v8, v3, v6

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    const/16 v6, 0x30

    aput-boolean v8, v3, v6

    .line 196
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x31

    aput-boolean v8, v3, v7

    .line 197
    iget-object v7, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringListsForChildListFragments:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x32

    aput-boolean v8, v3, v6

    goto :goto_1

    .line 205
    .end local v2    # "shouldStartNewDailyList":Z
    :cond_1
    const/16 v4, 0x34

    aput-boolean v8, v3, v4

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 87
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->parentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 88
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 93
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "weather info type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringsForChildFragments:Ljava/util/List;

    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    .line 95
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->extractJsonDataForChildFragments()V

    .line 96
    const/16 v0, 0xa

    aput-boolean v3, v1, v0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 279
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->jsonStringsForChildFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x49

    aput-boolean v7, v3, v1

    .line 280
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->parentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x4a

    aput-boolean v7, v3, v2

    .line 281
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x4b

    aput-boolean v7, v3, v4

    .line 283
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x4c

    aput-boolean v7, v3, v2

    .line 284
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0x4d

    aput-boolean v7, v3, v2

    .line 285
    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v2, 0x4e

    aput-boolean v7, v3, v2

    .line 286
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070023

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 287
    const/16 v2, 0x4f

    aput-boolean v7, v3, v2

    .line 298
    .local v0, "viewPager":Landroid/support/v4/view/ViewPager;
    :goto_0
    return-object v1

    .line 289
    .end local v0    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_0
    const v1, 0x7f030044

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/16 v1, 0x50

    aput-boolean v7, v3, v1

    .line 290
    const v1, 0x7f0c0093

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v4, 0x51

    aput-boolean v7, v3, v4

    .line 292
    const v4, 0x7f0c0094

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 293
    .restart local v0    # "viewPager":Landroid/support/v4/view/ViewPager;
    new-instance v4, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;

    iget-object v5, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->parentActivity:Landroid/support/v4/app/FragmentActivity;

    const/16 v6, 0x52

    aput-boolean v7, v3, v6

    .line 294
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;Landroid/support/v4/app/FragmentManager;)V

    const/16 v5, 0x53

    aput-boolean v7, v3, v5

    .line 295
    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/16 v4, 0x54

    aput-boolean v7, v3, v4

    .line 296
    invoke-virtual {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 298
    const/16 v1, 0x55

    aput-boolean v7, v3, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 303
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->parentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 305
    const/16 v1, 0x56

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

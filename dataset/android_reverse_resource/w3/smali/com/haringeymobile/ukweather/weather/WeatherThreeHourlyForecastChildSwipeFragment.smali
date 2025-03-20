.class public Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;
.super Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;
.source "WeatherThreeHourlyForecastChildSwipeFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x613b775d2b36eb78L

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected displayExtraInfo(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    check-cast p1, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    const/4 v1, 0x7

    aput-boolean v8, v0, v1

    .line 36
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x8

    aput-boolean v8, v0, v2

    .line 37
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;->getDate()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    const/16 v3, 0x9

    aput-boolean v8, v0, v3

    .line 39
    invoke-static {v2}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->getAbbreviatedWeekdayName(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-boolean v8, v0, v4

    .line 40
    invoke-virtual {p0, v1, v2}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->getDateString(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    aput-boolean v8, v0, v5

    .line 41
    invoke-virtual {p0, v1, v2}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->getTimeString(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v8, v0, v2

    .line 43
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->extraInfoTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xd

    aput-boolean v8, v0, v3

    .line 44
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "city name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-boolean v8, v0, v3

    .line 43
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const/16 v1, 0xf

    aput-boolean v8, v0, v1

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 22
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->onActivityCreated(Landroid/os/Bundle;)V

    aput-boolean v4, v1, v4

    .line 23
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 24
    const-string v2, "json string"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 25
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const/4 v3, 0x4

    aput-boolean v4, v1, v3

    .line 26
    const-class v3, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    .line 28
    invoke-virtual {p0, v0}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;->displayWeather(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V

    .line 29
    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    return-void
.end method

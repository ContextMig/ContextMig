.class public Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;
.super Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;
.source "WeatherDailyWeatherForecastChildFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private extraTemperaturesTextView:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7245c598c78bdd88L

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment"

    const/16 v3, 0x2c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getExtraInfoText(Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x17

    aput-boolean v8, v0, v2

    .line 85
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->getDate()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    const/16 v3, 0x18

    aput-boolean v8, v0, v3

    .line 87
    invoke-static {v2}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->getAbbreviatedWeekdayName(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x19

    aput-boolean v8, v0, v4

    .line 88
    invoke-virtual {p0, v1, v2}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getDateString(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    aput-boolean v8, v0, v5

    .line 89
    invoke-virtual {p0, v1, v2}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getTimeString(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-boolean v8, v0, v2

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1c

    aput-boolean v8, v0, v2

    .line 92
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "city name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    const/16 v2, 0x1d

    aput-boolean v8, v0, v2

    return-object v1
.end method

.method private getExtraTemperatureText(Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->getTemperature()Lcom/haringeymobile/ukweather/data/objects/Temperature;

    move-result-object v2

    const/16 v3, 0x1e

    aput-boolean v9, v1, v3

    .line 104
    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    invoke-virtual {v3}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->getTemperatureScale()Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    move-result-object v3

    const/16 v4, 0x1f

    aput-boolean v9, v1, v4

    .line 105
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0x20

    aput-boolean v9, v1, v5

    .line 106
    invoke-virtual {v3}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->getDisplayResourceId()I

    move-result v5

    const/16 v6, 0x21

    aput-boolean v9, v1, v6

    .line 105
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x22

    aput-boolean v9, v1, v5

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x23

    aput-boolean v9, v1, v6

    .line 108
    invoke-virtual {v2, v3}, Lcom/haringeymobile/ukweather/data/objects/Temperature;->getNightTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D

    move-result-wide v6

    const/16 v8, 0x24

    aput-boolean v9, v1, v8

    .line 107
    invoke-static {v6, v7, v9}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->formatDoubleValue(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x25

    aput-boolean v9, v1, v6

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x26

    aput-boolean v9, v1, v6

    .line 110
    invoke-virtual {v2, v3}, Lcom/haringeymobile/ukweather/data/objects/Temperature;->getMorningTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D

    move-result-wide v6

    const/16 v8, 0x27

    aput-boolean v9, v1, v8

    .line 109
    invoke-static {v6, v7, v9}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->formatDoubleValue(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "temperatureInfo":Ljava/lang/String;
    const/16 v5, 0x28

    aput-boolean v9, v1, v5

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    aput-boolean v9, v1, v6

    .line 112
    invoke-virtual {v2, v3}, Lcom/haringeymobile/ukweather/data/objects/Temperature;->getEveningTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D

    move-result-wide v2

    const/16 v6, 0x2a

    aput-boolean v9, v1, v6

    .line 111
    invoke-static {v2, v3, v9}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->formatDoubleValue(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    const/16 v2, 0x2b

    aput-boolean v9, v1, v2

    return-object v0
.end method

.method private getNightMorningEveningTitle()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v5, v1, v3

    .line 44
    const v3, 0x7f06007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-boolean v5, v1, v4

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "title":Ljava/lang/String;
    const/16 v3, 0x8

    aput-boolean v5, v1, v3

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f06007d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    aput-boolean v5, v1, v3

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    aput-boolean v5, v1, v3

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f060059

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const/16 v2, 0xb

    aput-boolean v5, v1, v2

    return-object v0
.end method


# virtual methods
.method protected displayExtraInfo(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    check-cast p1, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;

    const/16 v1, 0x12

    aput-boolean v3, v0, v1

    .line 69
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getExtraInfoText(Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-boolean v3, v0, v2

    .line 70
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->extraInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x14

    aput-boolean v3, v0, v1

    .line 72
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getExtraTemperatureText(Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-boolean v3, v0, v2

    .line 73
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->extraTemperaturesTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 55
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    .line 56
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    .line 57
    const-string v2, "json string"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    .line 58
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const/16 v3, 0xf

    aput-boolean v4, v1, v3

    .line 59
    const-class v3, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    .line 61
    invoke-virtual {p0, v0}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->displayWeather(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V

    .line 62
    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 31
    const v0, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    aput-boolean v4, v1, v4

    .line 32
    invoke-virtual {p0, v2}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getCommonViews(Landroid/view/View;)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 33
    const v0, 0x7f0c0066

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x3

    aput-boolean v4, v1, v3

    .line 35
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->getNightMorningEveningTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 36
    const v0, 0x7f0c0067

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;->extraTemperaturesTextView:Landroid/widget/TextView;

    .line 38
    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    return-object v2
.end method

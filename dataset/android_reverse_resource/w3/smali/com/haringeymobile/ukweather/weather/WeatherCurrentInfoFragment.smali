.class public Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;
.super Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;
.source "WeatherCurrentInfoFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x539dfc274c167909L    # 6.254640339622793E94

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->$jacocoInit()[Z

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
    .locals 14

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 32
    check-cast p1, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    .line 33
    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->getCityName()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x8

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    .line 35
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x9

    const/4 v8, 0x1

    aput-boolean v8, v1, v7

    .line 36
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/16 v8, 0xa

    const/4 v9, 0x1

    aput-boolean v9, v1, v8

    .line 37
    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->getSystemParameters()Lcom/haringeymobile/ukweather/data/objects/SystemParameters;

    move-result-object v8

    const/16 v9, 0xb

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 38
    invoke-virtual {v8}, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->getSunriseTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v2, v10, v12

    .line 39
    .local v2, "sunriseTime":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_0

    const/16 v9, 0xc

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 44
    :goto_0
    invoke-virtual {v8}, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->getSunsetTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v4, v8, v10

    .line 45
    .local v4, "sunsetTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    const/16 v6, 0x10

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    .line 50
    :goto_1
    iget-object v6, p0, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->extraInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/16 v6, 0x14

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    return-void

    .line 39
    .end local v4    # "sunsetTime":J
    :cond_0
    const/16 v9, 0xd

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0600ad

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/16 v11, 0xe

    const/4 v12, 0x1

    aput-boolean v12, v1, v11

    .line 41
    invoke-virtual {p0, v6, v10}, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->getTimeString(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "extraInfo":Ljava/lang/String;
    const/16 v9, 0xf

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    goto :goto_0

    .line 45
    .end local v0    # "extraInfo":Ljava/lang/String;
    .restart local v4    # "sunsetTime":J
    :cond_1
    const/16 v8, 0x11

    const/4 v9, 0x1

    aput-boolean v9, v1, v8

    .line 46
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0600ae

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v4, v5}, Ljava/util/Date;-><init>(J)V

    const/16 v9, 0x12

    const/4 v10, 0x1

    aput-boolean v10, v1, v9

    .line 47
    invoke-virtual {p0, v6, v8}, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->getTimeString(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "extraInfo":Ljava/lang/String;
    const/16 v6, 0x13

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 22
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->onActivityCreated(Landroid/os/Bundle;)V

    aput-boolean v4, v1, v4

    .line 23
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->getArguments()Landroid/os/Bundle;

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
    const-class v3, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    .line 27
    invoke-virtual {p0, v0}, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;->displayWeather(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V

    .line 28
    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    return-void
.end method

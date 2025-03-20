.class Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "WeatherForecastParentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherForecastPagerAdapter"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final DAY_TEMPLATE:Ljava/lang/String; = "E  MMM dd"

.field private static final TIME_TEMPLATE:Ljava/lang/String; = "E  HH:mm"


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2f9ff1ef4fb21527L    # -1.4872282352306133E79

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter"

    const/16 v3, 0x29

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 315
    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 316
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 317
    aput-boolean v2, v0, v2

    return-void
.end method

.method private getPageTitleForDailyWeatherForecast(I)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 337
    const-wide/16 v2, 0x3e8

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$100(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v5, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;

    const/4 v4, 0x7

    aput-boolean v6, v1, v4

    .line 338
    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;->getDate()J

    move-result-wide v4

    mul-long/2addr v2, v4

    const/16 v0, 0x8

    aput-boolean v6, v1, v0

    .line 339
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    const/16 v4, 0x9

    aput-boolean v6, v1, v4

    .line 340
    const-string v4, "E  MMM dd"

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    const/16 v4, 0xa

    aput-boolean v6, v1, v4

    .line 341
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    aput-boolean v6, v1, v2

    return-object v0
.end method

.method private getPageTitleForThreeHourlyWeatherForecast(I)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 351
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->isRequestedThreeHourlyForecastInListForm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "E  MMM dd"

    const/16 v1, 0xc

    aput-boolean v8, v2, v1

    move-object v1, v0

    :goto_0
    const/16 v0, 0xe

    aput-boolean v8, v2, v0

    .line 353
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->isRequestedThreeHourlyForecastInListForm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    const/16 v3, 0xf

    aput-boolean v8, v2, v3

    .line 354
    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$200(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x10

    aput-boolean v8, v2, v3

    .line 355
    :goto_1
    const/16 v3, 0x13

    aput-boolean v8, v2, v3

    .line 357
    const-wide/16 v4, 0x3e8

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    invoke-virtual {v3, v0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    const/16 v3, 0x14

    aput-boolean v8, v2, v3

    .line 358
    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;->getDate()J

    move-result-wide v6

    mul-long/2addr v4, v6

    const/16 v0, 0x15

    aput-boolean v8, v2, v0

    .line 359
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    const/16 v3, 0x16

    aput-boolean v8, v2, v3

    .line 361
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    const/16 v1, 0x17

    aput-boolean v8, v2, v1

    .line 362
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    aput-boolean v8, v2, v1

    return-object v0

    .line 351
    :cond_0
    const-string v0, "E  HH:mm"

    const/16 v1, 0xd

    aput-boolean v8, v2, v1

    move-object v1, v0

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    const/16 v3, 0x11

    aput-boolean v8, v2, v3

    .line 355
    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$100(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x12

    aput-boolean v8, v2, v3

    goto :goto_1
.end method

.method private isRequestedThreeHourlyForecastInListForm()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 377
    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$200(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x20

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x1f

    aput-boolean v1, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 367
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->isRequestedThreeHourlyForecastInListForm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    const/16 v2, 0x19

    aput-boolean v3, v1, v2

    .line 368
    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$200(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x1a

    aput-boolean v3, v1, v2

    .line 367
    :goto_0
    const/16 v2, 0x1d

    aput-boolean v3, v1, v2

    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    const/16 v2, 0x1b

    aput-boolean v3, v1, v2

    .line 369
    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$100(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x1c

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 382
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->isRequestedThreeHourlyForecastInListForm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    const/16 v2, 0x21

    aput-boolean v5, v1, v2

    .line 384
    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$200(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/16 v2, 0x22

    aput-boolean v5, v1, v2

    .line 383
    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->newInstance(Ljava/util/ArrayList;)Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;

    move-result-object v0

    const/16 v2, 0x23

    aput-boolean v5, v1, v2

    .line 382
    :goto_0
    const/16 v2, 0x28

    aput-boolean v5, v1, v2

    return-object v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    const/16 v2, 0x24

    aput-boolean v5, v1, v2

    .line 385
    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$000(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v2

    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$300(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    const/16 v4, 0x25

    aput-boolean v5, v1, v4

    .line 386
    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$100(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x26

    aput-boolean v5, v1, v4

    .line 385
    invoke-static {v2, v3, v0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->newInstance(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Ljava/lang/String;Ljava/lang/String;)Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;

    move-result-object v0

    const/16 v2, 0x27

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 321
    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$000(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v0

    sget-object v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->DAILY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 322
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->getPageTitleForDailyWeatherForecast(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 324
    :goto_0
    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    invoke-static {v0}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$000(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v0

    sget-object v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->THREE_HOURLY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 324
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->getPageTitleForThreeHourlyWeatherForecast(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 326
    :cond_1
    new-instance v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;

    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment$WeatherForecastPagerAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    invoke-static {v2}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->access$000(Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    throw v0
.end method

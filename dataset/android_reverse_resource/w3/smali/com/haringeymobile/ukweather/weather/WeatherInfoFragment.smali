.class public abstract Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;
.super Landroid/support/v4/app/Fragment;
.source "WeatherInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$IconCacheRequestListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field protected static final CITY_NAME:Ljava/lang/String; = "city name"

.field public static final JSON_STRING:Ljava/lang/String; = "json string"


# instance fields
.field protected conditionsImageView:Landroid/widget/ImageView;

.field protected conditionsTextView:Landroid/widget/TextView;

.field protected extraInfoTextView:Landroid/widget/TextView;

.field protected humidityTextView:Landroid/widget/TextView;

.field private iconCacheRequestListener:Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$IconCacheRequestListener;

.field protected pressureTextView:Landroid/widget/TextView;

.field protected temperatureTextView:Landroid/widget/TextView;

.field protected weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

.field protected windTextView:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6b994acad6f0832cL

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherInfoFragment"

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static createWeatherInfoFragment(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 73
    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$1;->$SwitchMap$com$haringeymobile$ukweather$weather$WeatherInfoType:[I

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;

    invoke-direct {v0, p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    throw v0

    .line 75
    :pswitch_0
    new-instance v0, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;

    invoke-direct {v0}, Lcom/haringeymobile/ukweather/weather/WeatherCurrentInfoFragment;-><init>()V

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 79
    :goto_0
    return-object v0

    .line 77
    :pswitch_1
    new-instance v0, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;

    invoke-direct {v0}, Lcom/haringeymobile/ukweather/weather/WeatherDailyWeatherForecastChildFragment;-><init>()V

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 79
    :pswitch_2
    new-instance v0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;

    invoke-direct {v0}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildSwipeFragment;-><init>()V

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private displayConditions(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->conditionsTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->conditionsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v2, v3}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->displayConditions(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 166
    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private displayWeatherNumericParametersText(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->temperatureTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->pressureTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->humidityTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->displayWeatherNumericParametersText(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 176
    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private displayWindInfo(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->windTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v2}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->displayWindInfo(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;)V

    .line 185
    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static getArgumentBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    .line 96
    const-string v2, "city name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-boolean v3, v0, v2

    .line 97
    const-string v2, "json string"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/16 v2, 0xa

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static newInstance(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Ljava/lang/String;Ljava/lang/String;)Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    invoke-static {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->createWeatherInfoFragment(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 61
    invoke-static {p1, p2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->getArgumentBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 62
    invoke-virtual {v1, v2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    return-object v1
.end method


# virtual methods
.method protected abstract displayExtraInfo(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V
.end method

.method public displayWeather(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 144
    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->displayExtraInfo(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    .line 145
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->displayConditions(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V

    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    .line 146
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->displayWeatherNumericParametersText(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    .line 147
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->displayWindInfo(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;)V

    .line 148
    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected getCommonViews(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 129
    const v0, 0x7f0c006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->extraInfoTextView:Landroid/widget/TextView;

    const/16 v0, 0x11

    aput-boolean v2, v1, v0

    .line 130
    const v0, 0x7f0c0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->conditionsTextView:Landroid/widget/TextView;

    const/16 v0, 0x12

    aput-boolean v2, v1, v0

    .line 131
    const v0, 0x7f0c0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->conditionsImageView:Landroid/widget/ImageView;

    const/16 v0, 0x13

    aput-boolean v2, v1, v0

    .line 132
    const v0, 0x7f0c006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->temperatureTextView:Landroid/widget/TextView;

    const/16 v0, 0x14

    aput-boolean v2, v1, v0

    .line 133
    const v0, 0x7f0c006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->pressureTextView:Landroid/widget/TextView;

    const/16 v0, 0x15

    aput-boolean v2, v1, v0

    .line 134
    const v0, 0x7f0c006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->humidityTextView:Landroid/widget/TextView;

    const/16 v0, 0x16

    aput-boolean v2, v1, v0

    .line 135
    const v0, 0x7f0c006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->windTextView:Landroid/widget/TextView;

    .line 136
    const/16 v0, 0x17

    aput-boolean v2, v1, v0

    return-void
.end method

.method protected getDateString(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 188
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected getTimeString(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 192
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 104
    check-cast p1, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$IconCacheRequestListener;

    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->iconCacheRequestListener:Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$IconCacheRequestListener;

    .line 105
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    .line 110
    new-instance v1, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->iconCacheRequestListener:Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$IconCacheRequestListener;

    const/16 v4, 0xd

    aput-boolean v5, v0, v4

    .line 111
    invoke-interface {v3}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$IconCacheRequestListener;->getIconMemoryCache()Landroid/support/v4/util/LruCache;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;-><init>(Landroid/content/Context;Landroid/support/v4/util/LruCache;)V

    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    .line 112
    const/16 v1, 0xe

    aput-boolean v5, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xf

    aput-boolean v3, v0, v2

    .line 118
    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->getCommonViews(Landroid/view/View;)V

    .line 119
    const/16 v2, 0x10

    aput-boolean v3, v0, v2

    return-object v1
.end method

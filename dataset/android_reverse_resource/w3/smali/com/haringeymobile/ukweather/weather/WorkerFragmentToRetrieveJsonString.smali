.class public Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;
.super Landroid/support/v4/app/Fragment;
.source "WorkerFragmentToRetrieveJsonString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;,
        Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final OPEN_WEATHER_MAP_API_HTTP_CODE_KEY:Ljava/lang/String; = "cod"


# instance fields
.field private cityId:I

.field private listener:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;

.field private parentActivity:Landroid/app/Activity;

.field private retrieveWeatherInformationJsonStringTask:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;

.field private weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x653c053593387383L    # -9.629871693452293E-180

    const-string v2, "com/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Landroid/app/Activity;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->parentActivity:Landroid/app/Activity;

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->cityId:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$400(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->listener:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->parentActivity:Landroid/app/Activity;

    .line 72
    check-cast p1, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;

    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->listener:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;

    .line 73
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 78
    invoke-virtual {p0, v2}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->setRetainInstance(Z)V

    .line 79
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 115
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->retrieveWeatherInformationJsonStringTask:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;

    if-nez v1, :cond_0

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 118
    :goto_0
    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    return-void

    .line 115
    :cond_0
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    .line 116
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->retrieveWeatherInformationJsonStringTask:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;

    invoke-virtual {v1, v2}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->cancel(Z)Z

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 123
    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->parentActivity:Landroid/app/Activity;

    .line 124
    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->listener:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;

    .line 125
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public retrieveLastRequestedWeatherInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->parentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getCityIdFromSharedPrefs(Landroid/content/Context;)I

    move-result v0

    .line 88
    .local v0, "lastCityId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 93
    :goto_0
    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->parentActivity:Landroid/app/Activity;

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    .line 90
    invoke-static {v2}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getLastWeatherInfoTypeFromSharedPrefs(Landroid/content/Context;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v4, v1, v3

    .line 91
    invoke-virtual {p0, v0, v2}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->retrieveWeatherInfoJsonString(ILcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method public retrieveWeatherInfoJsonString(ILcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    iput p1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->cityId:I

    .line 103
    iput-object p2, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->weatherInfoType:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    .line 105
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p2, v1, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->getOpenWeatherMapUrl(Landroid/content/Context;I)Ljava/net/URL;

    move-result-object v1

    const/16 v2, 0xa

    aput-boolean v5, v0, v2

    .line 106
    new-instance v2, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;-><init>(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$1;)V

    iput-object v2, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->retrieveWeatherInformationJsonStringTask:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;

    const/16 v2, 0xb

    aput-boolean v5, v0, v2

    .line 108
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->retrieveWeatherInformationJsonStringTask:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->setContext(Landroid/content/Context;)Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;

    const/16 v2, 0xc

    aput-boolean v5, v0, v2

    .line 109
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->retrieveWeatherInformationJsonStringTask:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;

    new-array v3, v5, [Ljava/net/URL;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    const/16 v1, 0xd

    aput-boolean v5, v0, v1

    return-void
.end method

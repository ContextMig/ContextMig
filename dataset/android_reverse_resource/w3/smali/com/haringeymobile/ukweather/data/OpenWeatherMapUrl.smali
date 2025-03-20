.class public Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;
.super Ljava/lang/Object;
.source "OpenWeatherMapUrl.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final COUNT:Ljava/lang/String; = "&cnt="

.field private static final DEVELOPER_API_KEY:Ljava/lang/String; = "13d6f372052b76fdc44bd6057ffb9dfc"

.field private static final FIND:Ljava/lang/String; = "find?"

.field private static final FIND_QUERY:Ljava/lang/String; = "find?q="

.field private static final FORECAST:Ljava/lang/String; = "forecast"

.field private static final FORECAST_DAILY:Ljava/lang/String; = "forecast/daily"

.field private static final ID:Ljava/lang/String; = "?id="

.field private static final LATITUDE:Ljava/lang/String; = "lat="

.field private static final LIKE:Ljava/lang/String; = "&type=like"

.field private static final LONGITUDE:Ljava/lang/String; = "&lon="

.field private static final OPEN_WEATHER_MAP_API_KEY_PREFIX:Ljava/lang/String; = "&APPID="

.field private static final OPEN_WEATHER_MAP_URL_PREFIX:Ljava/lang/String; = "https://api.openweathermap.org/data/2.5/"

.field private static final RESULT_COUNT:I = 0xa

.field private static final WEATHER:Ljava/lang/String; = "weather"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xf65b486c8912402L

    const-string v2, "com/haringeymobile/ukweather/data/OpenWeatherMapUrl"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->context:Landroid/content/Context;

    .line 44
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getApiKey()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->$jacocoInit()[Z

    move-result-object v1

    .line 63
    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 64
    const-string v2, "personal_api_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 65
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getPersonalApiKeyFromSharedPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    :goto_0
    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&APPID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    return-object v0

    .line 65
    :cond_0
    const-string v0, "13d6f372052b76fdc44bd6057ffb9dfc"

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private getUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->$jacocoInit()[Z

    move-result-object v2

    .line 79
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .local v0, "url":Ljava/net/URL;
    const/16 v1, 0xa

    aput-boolean v4, v2, v1

    return-object v0

    .line 80
    .end local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    const/16 v3, 0x8

    aput-boolean v4, v2, v3

    .line 81
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/16 v1, 0x9

    aput-boolean v4, v2, v1

    throw v3
.end method


# virtual methods
.method public generateCurrentWeatherByCityIdUrl(I)Ljava/net/URL;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.openweathermap.org/data/2.5/weather?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    aput-boolean v3, v0, v3

    return-object v1
.end method

.method public generateDailyWeatherForecastUrl(II)Ljava/net/URL;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.openweathermap.org/data/2.5/forecast/daily?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xf

    aput-boolean v3, v0, v2

    .line 120
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-boolean v3, v0, v2

    .line 119
    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/16 v2, 0x11

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public generateThreeHourlyWeatherForecastUrl(I)Ljava/net/URL;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.openweathermap.org/data/2.5/forecast?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getAvailableCitiesListUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.openweathermap.org/data/2.5/find?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type=like"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getAvailableCitiesListUrlByGeographicalCoordinates(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.openweathermap.org/data/2.5/find?lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    .line 107
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-boolean v3, v0, v2

    .line 106
    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    return-object v1
.end method

.class synthetic Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$1;
.super Ljava/lang/Object;
.source "WeatherInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$haringeymobile$ukweather$weather$WeatherInfoType:[I

.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4bd061822e78b273L    # 1.6066332774831645E57

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherInfoFragment$1"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->values()[Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$1;->$SwitchMap$com$haringeymobile$ukweather$weather$WeatherInfoType:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v0, v1

    sget-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$1;->$SwitchMap$com$haringeymobile$ukweather$weather$WeatherInfoType:[I

    sget-object v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    invoke-virtual {v2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    aput-boolean v4, v0, v4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$1;->$SwitchMap$com$haringeymobile$ukweather$weather$WeatherInfoType:[I

    sget-object v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->DAILY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    invoke-virtual {v2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    aput-boolean v4, v0, v5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment$1;->$SwitchMap$com$haringeymobile$ukweather$weather$WeatherInfoType:[I

    sget-object v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->THREE_HOURLY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    invoke-virtual {v2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    :goto_2
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_3
    aput-boolean v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    :try_start_4
    aput-boolean v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    goto :goto_2
.end method

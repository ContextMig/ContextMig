.class public final enum Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
.super Ljava/lang/Enum;
.source "WeatherInfoType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/haringeymobile/ukweather/weather/WeatherInfoType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

.field private static final transient synthetic $jacocoData:[Z = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/haringeymobile/ukweather/weather/WeatherInfoType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

.field public static final enum DAILY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

.field private static final DEFAULT_DAYS_COUNT_FOR_DAILY_FORECAST:I = 0x10

.field public static final enum THREE_HOURLY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;


# instance fields
.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;",
            ">;"
        }
    .end annotation
.end field

.field private iconResourceId:I

.field private id:I

.field private labelResourceId:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x364939d192d9a2d4L    # -1.3001738881435883E47

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherInfoType"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v12

    .line 25
    new-instance v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const-string v1, "CURRENT_WEATHER"

    const-class v4, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;

    const v5, 0x7f0600ff

    const v6, 0x7f020086

    invoke-direct/range {v0 .. v6}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;-><init>(Ljava/lang/String;IILjava/lang/Class;II)V

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v0, 0x14

    aput-boolean v3, v12, v0

    .line 32
    new-instance v4, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const-string v5, "DAILY_WEATHER_FORECAST"

    const-class v8, Lcom/haringeymobile/ukweather/data/objects/CityDailyWeatherForecast;

    const v9, 0x7f060100

    const v10, 0x7f02008c

    move v6, v3

    invoke-direct/range {v4 .. v10}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;-><init>(Ljava/lang/String;IILjava/lang/Class;II)V

    sput-object v4, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->DAILY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v0, 0x15

    aput-boolean v3, v12, v0

    .line 39
    new-instance v5, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const-string v6, "THREE_HOURLY_WEATHER_FORECAST"

    const-class v9, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    const v10, 0x7f060101

    const v11, 0x7f020085

    move v8, v13

    invoke-direct/range {v5 .. v11}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;-><init>(Ljava/lang/String;IILjava/lang/Class;II)V

    sput-object v5, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->THREE_HOURLY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    .line 20
    new-array v0, v13, [Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    sget-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->DAILY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->THREE_HOURLY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$VALUES:[Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v0, 0x16

    aput-boolean v3, v12, v0

    .line 140
    new-instance v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;

    invoke-direct {v0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;-><init>()V

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0x17

    aput-boolean v3, v12, v0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;",
            ">;II)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->id:I

    .line 71
    iput-object p4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->clazz:Ljava/lang/Class;

    .line 72
    iput p5, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->labelResourceId:I

    .line 73
    iput p6, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->iconResourceId:I

    .line 74
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getTypeById(I)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v1

    .line 83
    packed-switch p0, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    throw v0

    .line 85
    :pswitch_0
    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 89
    :goto_0
    return-object v0

    .line 87
    :pswitch_1
    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->DAILY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 89
    :pswitch_2
    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->THREE_HOURLY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v1

    .line 20
    const-class v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v1

    .line 20
    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$VALUES:[Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    invoke-virtual {v0}, [Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getIconResourceId()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v0

    .line 115
    iget v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->iconResourceId:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getId()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v0

    .line 99
    iget v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->id:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getLabelResourceId()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    iget v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->labelResourceId:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getOpenWeatherMapUrl(Landroid/content/Context;I)Ljava/net/URL;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v1

    .line 125
    new-instance v0, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;

    invoke-direct {v0, p1}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 126
    sget-object v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$2;->$SwitchMap$com$haringeymobile$ukweather$weather$WeatherInfoType:[I

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 136
    new-instance v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;

    invoke-direct {v0, p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$IllegalWeatherInfoTypeArgumentException;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    throw v0

    .line 128
    :pswitch_0
    invoke-virtual {v0, p2}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->generateCurrentWeatherByCityIdUrl(I)Ljava/net/URL;

    move-result-object v0

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    .line 133
    :goto_0
    return-object v0

    .line 130
    :pswitch_1
    const/16 v2, 0x10

    invoke-virtual {v0, p2, v2}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->generateDailyWeatherForecastUrl(II)Ljava/net/URL;

    move-result-object v0

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 133
    :pswitch_2
    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    .line 134
    invoke-virtual {v0, p2}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->generateThreeHourlyWeatherForecastUrl(I)Ljava/net/URL;

    move-result-object v0

    .line 133
    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->$jacocoInit()[Z

    move-result-object v1

    .line 166
    if-nez p0, :cond_0

    const-string v0, ""

    const/16 v2, 0x11

    aput-boolean v3, v1, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    const/16 v0, 0x13

    aput-boolean v3, v1, v0

    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

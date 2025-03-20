.class final Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;
.super Ljava/lang/Object;
.source "WeatherInfoType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/haringeymobile/ukweather/weather/WeatherInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4e12ead724726553L    # -3.371048801464396E-68

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherInfoType$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;->$jacocoInit()[Z

    move-result-object v0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;->$jacocoInit()[Z

    move-result-object v2

    .line 146
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->valueOf(Ljava/lang/String;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    .local v1, "weatherInfoType":Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    aput-boolean v4, v2, v4

    .line 150
    .end local v1    # "weatherInfoType":Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    :goto_0
    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;->$jacocoInit()[Z

    move-result-object v0

    .line 140
    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public newArray(I)[Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;->$jacocoInit()[Z

    move-result-object v0

    .line 155
    new-array v1, p1, [Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;->$jacocoInit()[Z

    move-result-object v0

    .line 140
    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType$1;->newArray(I)[Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

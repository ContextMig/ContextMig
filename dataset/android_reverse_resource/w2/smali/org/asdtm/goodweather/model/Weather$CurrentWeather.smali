.class public Lorg/asdtm/goodweather/model/Weather$CurrentWeather;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CurrentWeather"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mIdIcon:Ljava/lang/String;

.field final synthetic this$0:Lorg/asdtm/goodweather/model/Weather;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x10eeb7d8a57ff165L    # -1.023497983913967E227

    const-string v2, "org/asdtm/goodweather/model/Weather$CurrentWeather"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lorg/asdtm/goodweather/model/Weather;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    iput-object p1, p0, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->this$0:Lorg/asdtm/goodweather/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget-object v1, p0, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->mDescription:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getIdIcon()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->mIdIcon:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->mDescription:Ljava/lang/String;

    .line 59
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setIdIcon(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iput-object p1, p0, Lorg/asdtm/goodweather/model/Weather$CurrentWeather;->mIdIcon:Ljava/lang/String;

    .line 67
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

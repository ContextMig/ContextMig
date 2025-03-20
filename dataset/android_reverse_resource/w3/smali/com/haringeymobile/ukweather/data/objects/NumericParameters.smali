.class public Lcom/haringeymobile/ukweather/data/objects/NumericParameters;
.super Ljava/lang/Object;
.source "NumericParameters.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private humidity:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "humidity"
    .end annotation
.end field

.field private maxTemperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "temp_max"
    .end annotation
.end field

.field private minTemperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "temp_min"
    .end annotation
.end field

.field private pressure:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pressure"
    .end annotation
.end field

.field private temperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "temp"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5a86ee8c5b55c821L    # 1.2418435113826563E128

    const-string v2, "com/haringeymobile/ukweather/data/objects/NumericParameters"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getHumidity()D
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->humidity:D

    aput-boolean v1, v0, v1

    return-wide v2
.end method

.method public getPressure()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->pressure:D

    const/4 v1, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/NumericParameters;->temperature:D

    invoke-virtual {p1, v2, v3}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->convertTemperature(D)D

    move-result-wide v2

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

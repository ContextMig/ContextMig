.class public Lcom/haringeymobile/ukweather/data/objects/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DIFFERENCE_BETWEEN_KELVIN_AND_CELCIUS:D = 273.15


# instance fields
.field private dayTemperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day"
    .end annotation
.end field

.field private eveningTemperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eve"
    .end annotation
.end field

.field private maxTemperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max"
    .end annotation
.end field

.field private minTemperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min"
    .end annotation
.end field

.field private morningTemperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "morn"
    .end annotation
.end field

.field private nightTemperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "night"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/Temperature;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xd3edfad8204dfb0L

    const-string v2, "com/haringeymobile/ukweather/data/objects/Temperature"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/Temperature;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Temperature;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDayTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Temperature;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/Temperature;->dayTemperature:D

    invoke-virtual {p1, v2, v3}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->convertTemperature(D)D

    move-result-wide v2

    aput-boolean v1, v0, v1

    return-wide v2
.end method

.method public getEveningTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Temperature;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/Temperature;->eveningTemperature:D

    invoke-virtual {p1, v2, v3}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->convertTemperature(D)D

    move-result-wide v2

    const/4 v1, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getMorningTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Temperature;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/Temperature;->morningTemperature:D

    invoke-virtual {p1, v2, v3}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->convertTemperature(D)D

    move-result-wide v2

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getNightTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Temperature;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/Temperature;->nightTemperature:D

    invoke-virtual {p1, v2, v3}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->convertTemperature(D)D

    move-result-wide v2

    const/4 v1, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

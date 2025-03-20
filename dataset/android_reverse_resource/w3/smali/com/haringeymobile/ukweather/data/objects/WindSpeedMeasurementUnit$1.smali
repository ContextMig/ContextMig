.class final enum Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$1;
.super Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;
.source "WindSpeedMeasurementUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1070c492ead89364L    # -2.3676001896222757E229

    const-string v2, "com/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .locals 7

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$1;->$jacocoInit()[Z

    move-result-object v6

    .line 10
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;-><init>(Ljava/lang/String;IIILcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$1;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method


# virtual methods
.method public convertSpeed(D)D
    .locals 3

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$1;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    aput-boolean v1, v0, v1

    return-wide p1
.end method

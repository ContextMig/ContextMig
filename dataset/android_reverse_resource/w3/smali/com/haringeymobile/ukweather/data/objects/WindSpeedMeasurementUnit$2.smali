.class final enum Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$2;
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

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x72bacd7190c1a4c1L    # -9.701477671769844E-245

    const-string v2, "com/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .locals 7

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$2;->$jacocoInit()[Z

    move-result-object v6

    .line 19
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
    .locals 7

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$2;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    aput-boolean v1, v0, v1

    return-wide v2
.end method

.class final enum Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$4;
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

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3ec33861c2294f99L    # -1886110.2415571453

    const-string v2, "com/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$4"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .locals 7

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$4;->$jacocoInit()[Z

    move-result-object v6

    .line 37
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
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$4;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$4;->getWindForce(D)I

    move-result v1

    int-to-double v2, v1

    aput-boolean v4, v0, v4

    return-wide v2
.end method

.method public getWindForce(D)I
    .locals 7

    .prologue
    const/16 v1, 0xc

    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$4;->$jacocoInit()[Z

    move-result-object v2

    .line 53
    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpg-double v3, p1, v4

    if-gez v3, :cond_0

    .line 54
    const/4 v0, 0x0

    .local v0, "force":I
    const/4 v1, 0x2

    aput-boolean v6, v2, v1

    .line 81
    .end local v0    # "force":I
    :goto_0
    const/16 v1, 0xf

    aput-boolean v6, v2, v1

    return v0

    .line 55
    :cond_0
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpg-double v3, p1, v4

    if-gez v3, :cond_1

    .line 56
    const/4 v0, 0x1

    .restart local v0    # "force":I
    const/4 v1, 0x3

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 57
    .end local v0    # "force":I
    :cond_1
    const-wide v4, 0x400a666666666666L    # 3.3

    cmpg-double v3, p1, v4

    if-gez v3, :cond_2

    .line 58
    const/4 v0, 0x2

    .restart local v0    # "force":I
    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 59
    .end local v0    # "force":I
    :cond_2
    const-wide/high16 v4, 0x4016000000000000L    # 5.5

    cmpg-double v3, p1, v4

    if-gez v3, :cond_3

    .line 60
    const/4 v0, 0x3

    .restart local v0    # "force":I
    const/4 v1, 0x5

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 61
    .end local v0    # "force":I
    :cond_3
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_4

    .line 62
    const/4 v0, 0x4

    .restart local v0    # "force":I
    const/4 v1, 0x6

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 63
    .end local v0    # "force":I
    :cond_4
    const-wide v4, 0x402599999999999aL    # 10.8

    cmpg-double v3, p1, v4

    if-gez v3, :cond_5

    .line 64
    const/4 v0, 0x5

    .restart local v0    # "force":I
    const/4 v1, 0x7

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 65
    .end local v0    # "force":I
    :cond_5
    const-wide v4, 0x402bcccccccccccdL    # 13.9

    cmpg-double v3, p1, v4

    if-gez v3, :cond_6

    .line 66
    const/4 v0, 0x6

    .restart local v0    # "force":I
    const/16 v1, 0x8

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 67
    .end local v0    # "force":I
    :cond_6
    const-wide v4, 0x4031333333333333L    # 17.2

    cmpg-double v3, p1, v4

    if-gez v3, :cond_7

    .line 68
    const/4 v0, 0x7

    .restart local v0    # "force":I
    const/16 v1, 0x9

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 69
    .end local v0    # "force":I
    :cond_7
    const-wide v4, 0x4034b33333333333L    # 20.7

    cmpg-double v3, p1, v4

    if-gez v3, :cond_8

    .line 70
    const/16 v0, 0x8

    .restart local v0    # "force":I
    const/16 v1, 0xa

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 71
    .end local v0    # "force":I
    :cond_8
    const-wide v4, 0x4038800000000000L    # 24.5

    cmpg-double v3, p1, v4

    if-gez v3, :cond_9

    .line 72
    const/16 v0, 0x9

    .restart local v0    # "force":I
    const/16 v1, 0xb

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 73
    .end local v0    # "force":I
    :cond_9
    const-wide v4, 0x403c666666666666L    # 28.4

    cmpg-double v3, p1, v4

    if-gez v3, :cond_a

    .line 74
    const/16 v0, 0xa

    .restart local v0    # "force":I
    aput-boolean v6, v2, v1

    goto/16 :goto_0

    .line 75
    .end local v0    # "force":I
    :cond_a
    const-wide v4, 0x40404ccccccccccdL    # 32.6

    cmpg-double v3, p1, v4

    if-gez v3, :cond_b

    .line 76
    const/16 v0, 0xb

    .restart local v0    # "force":I
    const/16 v1, 0xd

    aput-boolean v6, v2, v1

    goto/16 :goto_0

    .line 78
    .end local v0    # "force":I
    :cond_b
    const/16 v3, 0xe

    aput-boolean v6, v2, v3

    move v0, v1

    goto/16 :goto_0
.end method

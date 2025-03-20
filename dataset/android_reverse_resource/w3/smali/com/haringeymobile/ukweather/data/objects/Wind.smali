.class public Lcom/haringeymobile/ukweather/data/objects/Wind;
.super Ljava/lang/Object;
.source "Wind.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private directionInDegrees:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deg"
    .end annotation
.end field

.field private speed:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speed"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/Wind;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5c93354dfcb1b71fL    # 8.935218573429368E137

    const-string v2, "com/haringeymobile/ukweather/data/objects/Wind"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/Wind;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Wind;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCardinalDirectionStringResource()I
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Wind;->$jacocoInit()[Z

    move-result-object v1

    .line 31
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    if-gt v0, v4, :cond_0

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 32
    :goto_0
    const v0, 0x7f06004a

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    .line 62
    :goto_1
    return v0

    .line 31
    :cond_0
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x15d

    if-lt v0, v2, :cond_1

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 33
    :cond_1
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x21

    if-gt v0, v2, :cond_2

    .line 34
    const v0, 0x7f06004c

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 35
    :cond_2
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x38

    if-gt v0, v2, :cond_3

    .line 36
    const v0, 0x7f06004b

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 37
    :cond_3
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x4e

    if-gt v0, v2, :cond_4

    .line 38
    const v0, 0x7f060048

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 39
    :cond_4
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x65

    if-gt v0, v2, :cond_5

    .line 40
    const v0, 0x7f060047

    aput-boolean v3, v1, v4

    goto :goto_1

    .line 41
    :cond_5
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x7b

    if-gt v0, v2, :cond_6

    .line 42
    const v0, 0x7f060049

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 43
    :cond_6
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x92

    if-gt v0, v2, :cond_7

    .line 44
    const v0, 0x7f060050

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 45
    :cond_7
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0xa8

    if-gt v0, v2, :cond_8

    .line 46
    const v0, 0x7f060051

    const/16 v2, 0xe

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 47
    :cond_8
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0xbf

    if-gt v0, v2, :cond_9

    .line 48
    const v0, 0x7f06004f

    const/16 v2, 0xf

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 49
    :cond_9
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0xd5

    if-gt v0, v2, :cond_a

    .line 50
    const v0, 0x7f060052

    const/16 v2, 0x10

    aput-boolean v3, v1, v2

    goto/16 :goto_1

    .line 51
    :cond_a
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0xec

    if-gt v0, v2, :cond_b

    .line 52
    const v0, 0x7f060053

    const/16 v2, 0x11

    aput-boolean v3, v1, v2

    goto/16 :goto_1

    .line 53
    :cond_b
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x102

    if-gt v0, v2, :cond_c

    .line 54
    const v0, 0x7f060056

    const/16 v2, 0x12

    aput-boolean v3, v1, v2

    goto/16 :goto_1

    .line 55
    :cond_c
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x119

    if-gt v0, v2, :cond_d

    .line 56
    const v0, 0x7f060054

    const/16 v2, 0x13

    aput-boolean v3, v1, v2

    goto/16 :goto_1

    .line 57
    :cond_d
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x12f

    if-gt v0, v2, :cond_e

    .line 58
    const v0, 0x7f060055

    const/16 v2, 0x14

    aput-boolean v3, v1, v2

    goto/16 :goto_1

    .line 59
    :cond_e
    iget v0, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    const/16 v2, 0x146

    if-gt v0, v2, :cond_f

    .line 60
    const v0, 0x7f06004e

    const/16 v2, 0x15

    aput-boolean v3, v1, v2

    goto/16 :goto_1

    .line 62
    :cond_f
    const v0, 0x7f06004d

    const/16 v2, 0x16

    aput-boolean v3, v1, v2

    goto/16 :goto_1
.end method

.method public getDirectionInDegrees()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Wind;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    iget v1, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getSpeed(Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;)D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Wind;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->speed:D

    invoke-virtual {p1, v2, v3}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->convertSpeed(D)D

    move-result-wide v2

    const/4 v1, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public setDirectionInDegrees(I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Wind;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iput p1, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->directionInDegrees:I

    .line 28
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSpeed(D)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Wind;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iput-wide p1, p0, Lcom/haringeymobile/ukweather/data/objects/Wind;->speed:D

    .line 24
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

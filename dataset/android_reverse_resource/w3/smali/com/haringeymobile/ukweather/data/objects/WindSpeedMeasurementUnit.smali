.class public abstract enum Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;
.super Ljava/lang/Enum;
.source "WindSpeedMeasurementUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum BEAUFORT_SCALE:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

.field public static final enum KILOMETERS_PER_HOUR:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

.field public static final enum METERS_PER_SECOND:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

.field public static final enum MILES_PER_HOUR:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;


# instance fields
.field private displayResourceId:I

.field private id:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5b57a60e73a2247dL    # 1.0491186781718477E132

    const-string v2, "com/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit"

    const/16 v3, 0x1d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    new-instance v1, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$1;

    const-string v2, "METERS_PER_SECOND"

    const/16 v3, 0xa

    const v4, 0x7f060107

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$1;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->METERS_PER_SECOND:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    const/16 v1, 0x19

    aput-boolean v5, v0, v1

    .line 19
    new-instance v1, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$2;

    const-string v2, "KILOMETERS_PER_HOUR"

    const/16 v3, 0x14

    const v4, 0x7f060106

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$2;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->KILOMETERS_PER_HOUR:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    const/16 v1, 0x1a

    aput-boolean v5, v0, v1

    .line 28
    new-instance v1, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$3;

    const-string v2, "MILES_PER_HOUR"

    const/16 v3, 0x1e

    const v4, 0x7f060108

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$3;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->MILES_PER_HOUR:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    const/16 v1, 0x1b

    aput-boolean v5, v0, v1

    .line 37
    new-instance v1, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$4;

    const-string v2, "BEAUFORT_SCALE"

    const/16 v3, 0x28

    const v4, 0x7f060105

    invoke-direct {v1, v2, v8, v3, v4}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$4;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->BEAUFORT_SCALE:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    .line 8
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    sget-object v2, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->METERS_PER_SECOND:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    aput-object v2, v1, v6

    sget-object v2, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->KILOMETERS_PER_HOUR:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    aput-object v2, v1, v5

    sget-object v2, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->MILES_PER_HOUR:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    aput-object v2, v1, v7

    sget-object v2, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->BEAUFORT_SCALE:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    aput-object v2, v1, v8

    sput-object v1, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$VALUES:[Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    const/16 v1, 0x1c

    aput-boolean v5, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->id:I

    .line 97
    iput p4, p0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->displayResourceId:I

    .line 98
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getBeaufortScaleWindDescriptionStringResourceId(I)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoInit()[Z

    move-result-object v1

    .line 133
    packed-switch p0, :pswitch_data_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported windForce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-boolean v4, v1, v2

    throw v0

    .line 135
    :pswitch_0
    const v0, 0x7f060140

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 159
    :goto_0
    return v0

    .line 137
    :pswitch_1
    const v0, 0x7f060104

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 139
    :pswitch_2
    const v0, 0x7f060144

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 141
    :pswitch_3
    const v0, 0x7f060145

    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 143
    :pswitch_4
    const v0, 0x7f060146

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 145
    :pswitch_5
    const v0, 0x7f060147

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 147
    :pswitch_6
    const v0, 0x7f060148

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 149
    :pswitch_7
    const v0, 0x7f060149

    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 151
    :pswitch_8
    const v0, 0x7f06014a

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 153
    :pswitch_9
    const v0, 0x7f06014b

    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 155
    :pswitch_a
    const v0, 0x7f060141

    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 157
    :pswitch_b
    const v0, 0x7f060142

    const/16 v2, 0x15

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 159
    :pswitch_c
    const v0, 0x7f060143

    const/16 v2, 0x16

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getWindSpeedMeasurementUnitById(I)Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoInit()[Z

    move-result-object v1

    .line 118
    sparse-switch p0, :sswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported windSpeedMeasurementUnitId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    throw v0

    .line 120
    :sswitch_0
    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->METERS_PER_SECOND:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    .line 126
    :goto_0
    return-object v0

    .line 122
    :sswitch_1
    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->KILOMETERS_PER_HOUR:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 124
    :sswitch_2
    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->MILES_PER_HOUR:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 126
    :sswitch_3
    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->BEAUFORT_SCALE:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoInit()[Z

    move-result-object v1

    .line 8
    const-class v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoInit()[Z

    move-result-object v1

    .line 8
    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$VALUES:[Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    invoke-virtual {v0}, [Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public abstract convertSpeed(D)D
.end method

.method public getDisplayResourceId()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->displayResourceId:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getId()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    iget v1, p0, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->id:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

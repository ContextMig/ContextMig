.class public abstract enum Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;
.super Ljava/lang/Enum;
.source "TemperatureScale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum CELSIUS:Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

.field public static final enum FAHRENHEIT:Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;


# instance fields
.field private displayResourceId:I

.field private id:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x21ba85e5e7d44ed2L    # 3.318833042316954E-146

    const-string v2, "com/haringeymobile/ukweather/data/objects/TemperatureScale"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    new-instance v1, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale$1;

    const-string v2, "CELSIUS"

    const v3, 0x7f06013e

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale$1;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->CELSIUS:Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    .line 17
    new-instance v1, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale$2;

    const-string v2, "FAHRENHEIT"

    const/16 v3, 0x14

    const v4, 0x7f06013f

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale$2;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->FAHRENHEIT:Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    .line 8
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    sget-object v2, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->CELSIUS:Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    aput-object v2, v1, v6

    sget-object v2, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->FAHRENHEIT:Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    aput-object v2, v1, v5

    sput-object v1, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$VALUES:[Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    aput-boolean v5, v0, v7

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
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->id:I

    .line 36
    iput p4, p0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->displayResourceId:I

    .line 37
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/haringeymobile/ukweather/data/objects/TemperatureScale$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getTemperatureScaleById(I)Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$jacocoInit()[Z

    move-result-object v1

    .line 56
    sparse-switch p0, :sswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported temperatureScaleId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    throw v0

    .line 58
    :sswitch_0
    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->CELSIUS:Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    .line 60
    :goto_0
    return-object v0

    :sswitch_1
    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->FAHRENHEIT:Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$jacocoInit()[Z

    move-result-object v1

    .line 8
    const-class v0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$jacocoInit()[Z

    move-result-object v1

    .line 8
    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$VALUES:[Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    invoke-virtual {v0}, [Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public abstract convertTemperature(D)D
.end method

.method public getDisplayResourceId()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget v1, p0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->displayResourceId:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getId()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget v1, p0, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->id:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

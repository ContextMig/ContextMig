.class public final enum Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;
.super Ljava/lang/Enum;
.source "ThreeHourlyForecastDisplayMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum LIST:Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

.field public static final enum VIEW_PAGER:Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;


# instance fields
.field private id:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x710f40f60a2c3495L    # 3.974923792718752E236

    const-string v2, "com/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    new-instance v1, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    const-string v2, "VIEW_PAGER"

    invoke-direct {v1, v2, v4, v3}, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->VIEW_PAGER:Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 9
    new-instance v1, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    const-string v2, "LIST"

    invoke-direct {v1, v2, v3, v5}, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->LIST:Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    .line 6
    new-array v1, v5, [Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    sget-object v2, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->VIEW_PAGER:Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->LIST:Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    aput-object v2, v1, v3

    sput-object v1, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->$VALUES:[Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->id:I

    .line 18
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getForecastDisplayModeById(I)Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->$jacocoInit()[Z

    move-result-object v1

    .line 21
    packed-switch p0, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    throw v0

    .line 23
    :pswitch_0
    sget-object v0, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->VIEW_PAGER:Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 25
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->LIST:Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->$jacocoInit()[Z

    move-result-object v1

    .line 6
    const-class v0, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->$jacocoInit()[Z

    move-result-object v1

    .line 6
    sget-object v0, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->$VALUES:[Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    invoke-virtual {v0}, [Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

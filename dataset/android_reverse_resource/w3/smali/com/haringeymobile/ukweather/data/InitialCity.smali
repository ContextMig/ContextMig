.class public final enum Lcom/haringeymobile/ukweather/data/InitialCity;
.super Ljava/lang/Enum;
.source "InitialCity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/haringeymobile/ukweather/data/InitialCity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haringeymobile/ukweather/data/InitialCity;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum BEIJING:Lcom/haringeymobile/ukweather/data/InitialCity;

.field public static final enum CAIRO:Lcom/haringeymobile/ukweather/data/InitialCity;

.field public static final enum ISTANBUL:Lcom/haringeymobile/ukweather/data/InitialCity;

.field public static final enum KOLKATA:Lcom/haringeymobile/ukweather/data/InitialCity;

.field public static final enum LONDON:Lcom/haringeymobile/ukweather/data/InitialCity;

.field public static final enum LOS_ANGELES:Lcom/haringeymobile/ukweather/data/InitialCity;

.field public static final enum MEXICO_CITY:Lcom/haringeymobile/ukweather/data/InitialCity;

.field public static final enum MOSCOW:Lcom/haringeymobile/ukweather/data/InitialCity;

.field public static final enum RIO_DE_JANEIRO:Lcom/haringeymobile/ukweather/data/InitialCity;

.field public static final enum SEOUL:Lcom/haringeymobile/ukweather/data/InitialCity;

.field public static final enum TOKYO:Lcom/haringeymobile/ukweather/data/InitialCity;


# instance fields
.field private displayName:Ljava/lang/String;

.field private openWeatherMapId:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/InitialCity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x265a1828da76e9fcL    # 6.167777059788744E-124

    const-string v2, "com/haringeymobile/ukweather/data/InitialCity"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/InitialCity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x9

    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/InitialCity;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "LONDON"

    const/4 v3, 0x0

    const v4, 0x28571f

    const-string v5, "London"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->LONDON:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-boolean v6, v0, v7

    .line 11
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "MEXICO_CITY"

    const v3, 0x35df65

    const-string v4, "Mexico City"

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->MEXICO_CITY:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-boolean v6, v0, v8

    .line 13
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "RIO_DE_JANEIRO"

    const/4 v3, 0x2

    const v4, 0x34a936

    const-string v5, "Rio de Janeiro"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->RIO_DE_JANEIRO:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-boolean v6, v0, v9

    .line 15
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "CAIRO"

    const/4 v3, 0x3

    const v4, 0x580b6

    const-string v5, "Cairo"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->CAIRO:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-boolean v6, v0, v10

    .line 17
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "MOSCOW"

    const/4 v3, 0x4

    const v4, 0x80265

    const-string v5, "Moscow"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->MOSCOW:Lcom/haringeymobile/ukweather/data/InitialCity;

    const/16 v1, 0xa

    aput-boolean v6, v0, v1

    .line 19
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "SEOUL"

    const/4 v3, 0x5

    const v4, 0x1c0348

    const-string v5, "Seoul"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->SEOUL:Lcom/haringeymobile/ukweather/data/InitialCity;

    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    .line 21
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "BEIJING"

    const v3, 0x1bb85e

    const-string v4, "Beijing"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->BEIJING:Lcom/haringeymobile/ukweather/data/InitialCity;

    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    .line 23
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "LOS_ANGELES"

    const v3, 0x51ea29

    const-string v4, "Los Angeles"

    invoke-direct {v1, v2, v8, v3, v4}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->LOS_ANGELES:Lcom/haringeymobile/ukweather/data/InitialCity;

    const/16 v1, 0xd

    aput-boolean v6, v0, v1

    .line 25
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "ISTANBUL"

    const v3, 0xb5e54

    const-string v4, "Istanbul"

    invoke-direct {v1, v2, v9, v3, v4}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->ISTANBUL:Lcom/haringeymobile/ukweather/data/InitialCity;

    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    .line 27
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "TOKYO"

    const v3, 0x1c3b23

    const-string v4, "Tokyo"

    invoke-direct {v1, v2, v10, v3, v4}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->TOKYO:Lcom/haringeymobile/ukweather/data/InitialCity;

    const/16 v1, 0xf

    aput-boolean v6, v0, v1

    .line 29
    new-instance v1, Lcom/haringeymobile/ukweather/data/InitialCity;

    const-string v2, "KOLKATA"

    const/16 v3, 0xa

    const v4, 0x13747c

    const-string v5, "Kolkata"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/haringeymobile/ukweather/data/InitialCity;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->KOLKATA:Lcom/haringeymobile/ukweather/data/InitialCity;

    .line 7
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/haringeymobile/ukweather/data/InitialCity;

    const/4 v2, 0x0

    sget-object v3, Lcom/haringeymobile/ukweather/data/InitialCity;->LONDON:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v3, v1, v2

    sget-object v2, Lcom/haringeymobile/ukweather/data/InitialCity;->MEXICO_CITY:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    sget-object v3, Lcom/haringeymobile/ukweather/data/InitialCity;->RIO_DE_JANEIRO:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/haringeymobile/ukweather/data/InitialCity;->CAIRO:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/haringeymobile/ukweather/data/InitialCity;->MOSCOW:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/haringeymobile/ukweather/data/InitialCity;->SEOUL:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v3, v1, v2

    sget-object v2, Lcom/haringeymobile/ukweather/data/InitialCity;->BEIJING:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v2, v1, v7

    sget-object v2, Lcom/haringeymobile/ukweather/data/InitialCity;->LOS_ANGELES:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v2, v1, v8

    sget-object v2, Lcom/haringeymobile/ukweather/data/InitialCity;->ISTANBUL:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v2, v1, v9

    sget-object v2, Lcom/haringeymobile/ukweather/data/InitialCity;->TOKYO:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v2, v1, v10

    const/16 v2, 0xa

    sget-object v3, Lcom/haringeymobile/ukweather/data/InitialCity;->KOLKATA:Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-object v3, v1, v2

    sput-object v1, Lcom/haringeymobile/ukweather/data/InitialCity;->$VALUES:[Lcom/haringeymobile/ukweather/data/InitialCity;

    const/16 v1, 0x10

    aput-boolean v6, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/InitialCity;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/haringeymobile/ukweather/data/InitialCity;->openWeatherMapId:I

    .line 42
    iput-object p4, p0, Lcom/haringeymobile/ukweather/data/InitialCity;->displayName:Ljava/lang/String;

    .line 43
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getInitialCityCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/InitialCity;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/haringeymobile/ukweather/data/InitialCity;->values()[Lcom/haringeymobile/ukweather/data/InitialCity;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haringeymobile/ukweather/data/InitialCity;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/InitialCity;->$jacocoInit()[Z

    move-result-object v1

    .line 7
    const-class v0, Lcom/haringeymobile/ukweather/data/InitialCity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/InitialCity;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/haringeymobile/ukweather/data/InitialCity;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/InitialCity;->$jacocoInit()[Z

    move-result-object v1

    .line 7
    sget-object v0, Lcom/haringeymobile/ukweather/data/InitialCity;->$VALUES:[Lcom/haringeymobile/ukweather/data/InitialCity;

    invoke-virtual {v0}, [Lcom/haringeymobile/ukweather/data/InitialCity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/haringeymobile/ukweather/data/InitialCity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/InitialCity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/InitialCity;->displayName:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getOpenWeatherMapId()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/InitialCity;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iget v1, p0, Lcom/haringeymobile/ukweather/data/InitialCity;->openWeatherMapId:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

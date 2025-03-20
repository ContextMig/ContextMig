.class public final enum Lcz/martykan/forecastie/models/Weather$WindDirection;
.super Ljava/lang/Enum;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/models/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcz/martykan/forecastie/models/Weather$WindDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/martykan/forecastie/models/Weather$WindDirection;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum EAST_NORTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum EAST_SOUTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum NORTH:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum NORTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum NORTH_NORTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum NORTH_NORTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum NORTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum SOUTH:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum SOUTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum SOUTH_SOUTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum SOUTH_SOUTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum SOUTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum WEST_NORTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

.field public static final enum WEST_SOUTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/models/Weather$WindDirection;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x75bad93c1aa025f1L    # -3.439168127240106E-259

    const-string v2, "cz/martykan/forecastie/models/Weather$WindDirection"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/models/Weather$WindDirection;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x1

    invoke-static {}, Lcz/martykan/forecastie/models/Weather$WindDirection;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "NORTH"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->NORTH:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "NORTH_NORTH_EAST"

    invoke-direct {v1, v2, v4}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->NORTH_NORTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "NORTH_EAST"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->NORTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "EAST_NORTH_EAST"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->EAST_NORTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-boolean v4, v0, v5

    .line 18
    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "EAST"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "EAST_SOUTH_EAST"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->EAST_SOUTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "SOUTH_EAST"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->SOUTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "SOUTH_SOUTH_EAST"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->SOUTH_SOUTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-boolean v4, v0, v6

    .line 19
    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "SOUTH"

    invoke-direct {v1, v2, v5}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->SOUTH:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "SOUTH_SOUTH_WEST"

    invoke-direct {v1, v2, v6}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->SOUTH_SOUTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "SOUTH_WEST"

    invoke-direct {v1, v2, v7}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->SOUTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "WEST_SOUTH_WEST"

    invoke-direct {v1, v2, v8}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->WEST_SOUTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-boolean v4, v0, v7

    .line 20
    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "WEST"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "WEST_NORTH_WEST"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->WEST_NORTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "NORTH_WEST"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->NORTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    new-instance v1, Lcz/martykan/forecastie/models/Weather$WindDirection;

    const-string v2, "NORTH_NORTH_WEST"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/models/Weather$WindDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->NORTH_NORTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    .line 15
    const/16 v1, 0x10

    new-array v1, v1, [Lcz/martykan/forecastie/models/Weather$WindDirection;

    const/4 v2, 0x0

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->NORTH:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    sget-object v2, Lcz/martykan/forecastie/models/Weather$WindDirection;->NORTH_NORTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->NORTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->EAST_NORTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->EAST_SOUTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->SOUTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->SOUTH_SOUTH_EAST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    sget-object v2, Lcz/martykan/forecastie/models/Weather$WindDirection;->SOUTH:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v2, v1, v5

    sget-object v2, Lcz/martykan/forecastie/models/Weather$WindDirection;->SOUTH_SOUTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v2, v1, v6

    sget-object v2, Lcz/martykan/forecastie/models/Weather$WindDirection;->SOUTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v2, v1, v7

    sget-object v2, Lcz/martykan/forecastie/models/Weather$WindDirection;->WEST_SOUTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v2, v1, v8

    const/16 v2, 0xc

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->WEST_NORTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->NORTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcz/martykan/forecastie/models/Weather$WindDirection;->NORTH_NORTH_WEST:Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-object v3, v1, v2

    sput-object v1, Lcz/martykan/forecastie/models/Weather$WindDirection;->$VALUES:[Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-boolean v4, v0, v8

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather$WindDirection;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static byDegree(D)Lcz/martykan/forecastie/models/Weather$WindDirection;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather$WindDirection;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-static {}, Lcz/martykan/forecastie/models/Weather$WindDirection;->values()[Lcz/martykan/forecastie/models/Weather$WindDirection;

    move-result-object v1

    array-length v1, v1

    invoke-static {p0, p1, v1}, Lcz/martykan/forecastie/models/Weather$WindDirection;->byDegree(DI)Lcz/martykan/forecastie/models/Weather$WindDirection;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static byDegree(DI)Lcz/martykan/forecastie/models/Weather$WindDirection;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcz/martykan/forecastie/models/Weather$WindDirection;->$jacocoInit()[Z

    move-result-object v2

    .line 27
    invoke-static {}, Lcz/martykan/forecastie/models/Weather$WindDirection;->values()[Lcz/martykan/forecastie/models/Weather$WindDirection;

    move-result-object v1

    .line 28
    .local v1, "directions":[Lcz/martykan/forecastie/models/Weather$WindDirection;
    array-length v3, v1

    const/4 v4, 0x4

    aput-boolean v5, v2, v4

    .line 30
    invoke-static {p0, p1, p2}, Lcz/martykan/forecastie/models/Weather;->windDirectionDegreeToIndex(DI)I

    move-result v4

    mul-int/2addr v3, v4

    div-int v0, v3, p2

    .line 33
    .local v0, "direction":I
    aget-object v3, v1, v0

    const/4 v4, 0x5

    aput-boolean v5, v2, v4

    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcz/martykan/forecastie/models/Weather$WindDirection;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/models/Weather$WindDirection;->$jacocoInit()[Z

    move-result-object v1

    .line 15
    const-class v0, Lcz/martykan/forecastie/models/Weather$WindDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcz/martykan/forecastie/models/Weather$WindDirection;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcz/martykan/forecastie/models/Weather$WindDirection;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather$WindDirection;->$jacocoInit()[Z

    move-result-object v1

    .line 15
    sget-object v0, Lcz/martykan/forecastie/models/Weather$WindDirection;->$VALUES:[Lcz/martykan/forecastie/models/Weather$WindDirection;

    invoke-virtual {v0}, [Lcz/martykan/forecastie/models/Weather$WindDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/martykan/forecastie/models/Weather$WindDirection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public getArrow(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather$WindDirection;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcz/martykan/forecastie/models/Weather$WindDirection;->ordinal()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLocalizedString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/models/Weather$WindDirection;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcz/martykan/forecastie/models/Weather$WindDirection;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.class public final enum Lcz/martykan/forecastie/tasks/ParseResult;
.super Ljava/lang/Enum;
.source "ParseResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcz/martykan/forecastie/tasks/ParseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/martykan/forecastie/tasks/ParseResult;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum CITY_NOT_FOUND:Lcz/martykan/forecastie/tasks/ParseResult;

.field public static final enum JSON_EXCEPTION:Lcz/martykan/forecastie/tasks/ParseResult;

.field public static final enum OK:Lcz/martykan/forecastie/tasks/ParseResult;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/tasks/ParseResult;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x42a0cd588a75efb9L    # 9.237069904631861E12

    const-string v2, "cz/martykan/forecastie/tasks/ParseResult"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/tasks/ParseResult;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/ParseResult;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    new-instance v1, Lcz/martykan/forecastie/tasks/ParseResult;

    const-string v2, "OK"

    invoke-direct {v1, v2, v4}, Lcz/martykan/forecastie/tasks/ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/tasks/ParseResult;->OK:Lcz/martykan/forecastie/tasks/ParseResult;

    new-instance v1, Lcz/martykan/forecastie/tasks/ParseResult;

    const-string v2, "JSON_EXCEPTION"

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/tasks/ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/tasks/ParseResult;->JSON_EXCEPTION:Lcz/martykan/forecastie/tasks/ParseResult;

    new-instance v1, Lcz/martykan/forecastie/tasks/ParseResult;

    const-string v2, "CITY_NOT_FOUND"

    invoke-direct {v1, v2, v5}, Lcz/martykan/forecastie/tasks/ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/tasks/ParseResult;->CITY_NOT_FOUND:Lcz/martykan/forecastie/tasks/ParseResult;

    new-array v1, v6, [Lcz/martykan/forecastie/tasks/ParseResult;

    sget-object v2, Lcz/martykan/forecastie/tasks/ParseResult;->OK:Lcz/martykan/forecastie/tasks/ParseResult;

    aput-object v2, v1, v4

    sget-object v2, Lcz/martykan/forecastie/tasks/ParseResult;->JSON_EXCEPTION:Lcz/martykan/forecastie/tasks/ParseResult;

    aput-object v2, v1, v3

    sget-object v2, Lcz/martykan/forecastie/tasks/ParseResult;->CITY_NOT_FOUND:Lcz/martykan/forecastie/tasks/ParseResult;

    aput-object v2, v1, v5

    sput-object v1, Lcz/martykan/forecastie/tasks/ParseResult;->$VALUES:[Lcz/martykan/forecastie/tasks/ParseResult;

    aput-boolean v3, v0, v6

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
    invoke-static {}, Lcz/martykan/forecastie/tasks/ParseResult;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/ParseResult;->$jacocoInit()[Z

    move-result-object v1

    .line 3
    const-class v0, Lcz/martykan/forecastie/tasks/ParseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcz/martykan/forecastie/tasks/ParseResult;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcz/martykan/forecastie/tasks/ParseResult;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/tasks/ParseResult;->$jacocoInit()[Z

    move-result-object v1

    .line 3
    sget-object v0, Lcz/martykan/forecastie/tasks/ParseResult;->$VALUES:[Lcz/martykan/forecastie/tasks/ParseResult;

    invoke-virtual {v0}, [Lcz/martykan/forecastie/tasks/ParseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/martykan/forecastie/tasks/ParseResult;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

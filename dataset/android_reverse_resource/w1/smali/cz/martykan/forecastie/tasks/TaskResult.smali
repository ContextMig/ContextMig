.class public final enum Lcz/martykan/forecastie/tasks/TaskResult;
.super Ljava/lang/Enum;
.source "TaskResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcz/martykan/forecastie/tasks/TaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/martykan/forecastie/tasks/TaskResult;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum BAD_RESPONSE:Lcz/martykan/forecastie/tasks/TaskResult;

.field public static final enum IO_EXCEPTION:Lcz/martykan/forecastie/tasks/TaskResult;

.field public static final enum SUCCESS:Lcz/martykan/forecastie/tasks/TaskResult;

.field public static final enum TOO_MANY_REQUESTS:Lcz/martykan/forecastie/tasks/TaskResult;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/tasks/TaskResult;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2a96c7cb1be0ab2cL    # -2.824268515608218E103

    const-string v2, "cz/martykan/forecastie/tasks/TaskResult"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/tasks/TaskResult;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/TaskResult;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    new-instance v1, Lcz/martykan/forecastie/tasks/TaskResult;

    const-string v2, "SUCCESS"

    invoke-direct {v1, v2, v5}, Lcz/martykan/forecastie/tasks/TaskResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/tasks/TaskResult;->SUCCESS:Lcz/martykan/forecastie/tasks/TaskResult;

    new-instance v1, Lcz/martykan/forecastie/tasks/TaskResult;

    const-string v2, "BAD_RESPONSE"

    invoke-direct {v1, v2, v3}, Lcz/martykan/forecastie/tasks/TaskResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/tasks/TaskResult;->BAD_RESPONSE:Lcz/martykan/forecastie/tasks/TaskResult;

    new-instance v1, Lcz/martykan/forecastie/tasks/TaskResult;

    const-string v2, "IO_EXCEPTION"

    invoke-direct {v1, v2, v6}, Lcz/martykan/forecastie/tasks/TaskResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/tasks/TaskResult;->IO_EXCEPTION:Lcz/martykan/forecastie/tasks/TaskResult;

    new-instance v1, Lcz/martykan/forecastie/tasks/TaskResult;

    const-string v2, "TOO_MANY_REQUESTS"

    invoke-direct {v1, v2, v4}, Lcz/martykan/forecastie/tasks/TaskResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/martykan/forecastie/tasks/TaskResult;->TOO_MANY_REQUESTS:Lcz/martykan/forecastie/tasks/TaskResult;

    const/4 v1, 0x4

    new-array v1, v1, [Lcz/martykan/forecastie/tasks/TaskResult;

    sget-object v2, Lcz/martykan/forecastie/tasks/TaskResult;->SUCCESS:Lcz/martykan/forecastie/tasks/TaskResult;

    aput-object v2, v1, v5

    sget-object v2, Lcz/martykan/forecastie/tasks/TaskResult;->BAD_RESPONSE:Lcz/martykan/forecastie/tasks/TaskResult;

    aput-object v2, v1, v3

    sget-object v2, Lcz/martykan/forecastie/tasks/TaskResult;->IO_EXCEPTION:Lcz/martykan/forecastie/tasks/TaskResult;

    aput-object v2, v1, v6

    sget-object v2, Lcz/martykan/forecastie/tasks/TaskResult;->TOO_MANY_REQUESTS:Lcz/martykan/forecastie/tasks/TaskResult;

    aput-object v2, v1, v4

    sput-object v1, Lcz/martykan/forecastie/tasks/TaskResult;->$VALUES:[Lcz/martykan/forecastie/tasks/TaskResult;

    aput-boolean v3, v0, v4

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
    invoke-static {}, Lcz/martykan/forecastie/tasks/TaskResult;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/TaskResult;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/tasks/TaskResult;->$jacocoInit()[Z

    move-result-object v1

    .line 3
    const-class v0, Lcz/martykan/forecastie/tasks/TaskResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcz/martykan/forecastie/tasks/TaskResult;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcz/martykan/forecastie/tasks/TaskResult;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/tasks/TaskResult;->$jacocoInit()[Z

    move-result-object v1

    .line 3
    sget-object v0, Lcz/martykan/forecastie/tasks/TaskResult;->$VALUES:[Lcz/martykan/forecastie/tasks/TaskResult;

    invoke-virtual {v0}, [Lcz/martykan/forecastie/tasks/TaskResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/martykan/forecastie/tasks/TaskResult;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

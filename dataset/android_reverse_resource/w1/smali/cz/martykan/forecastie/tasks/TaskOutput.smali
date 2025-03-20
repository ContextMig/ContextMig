.class public Lcz/martykan/forecastie/tasks/TaskOutput;
.super Ljava/lang/Object;
.source "TaskOutput.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field parseResult:Lcz/martykan/forecastie/tasks/ParseResult;

.field taskResult:Lcz/martykan/forecastie/tasks/TaskResult;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/tasks/TaskOutput;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x57899066608aeb65L    # -9.110576852273286E-114

    const-string v2, "cz/martykan/forecastie/tasks/TaskOutput"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/tasks/TaskOutput;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/tasks/TaskOutput;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

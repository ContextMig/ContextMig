.class public Lorg/asdtm/goodweather/utils/ApiKeys;
.super Ljava/lang/Object;
.source "ApiKeys.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final OPEN_WEATHER_MAP_API_KEY:Ljava/lang/String; = "1487dd8a93bfd85d278d9ac8dcfee94c"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/ApiKeys;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5c2016e23b2ab914L    # -6.859888888602788E-136

    const-string v2, "org/asdtm/goodweather/utils/ApiKeys"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/ApiKeys;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/ApiKeys;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

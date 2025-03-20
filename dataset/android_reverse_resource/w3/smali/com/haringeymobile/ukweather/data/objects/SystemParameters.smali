.class public Lcom/haringeymobile/ukweather/data/objects/SystemParameters;
.super Ljava/lang/Object;
.source "SystemParameters.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field private sunriseTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sunrise"
    .end annotation
.end field

.field private sunsetTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sunset"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1999b12bac92654dL

    const-string v2, "com/haringeymobile/ukweather/data/objects/SystemParameters"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->country:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getSunriseTime()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->sunriseTime:J

    const/4 v1, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getSunsetTime()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->sunsetTime:J

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

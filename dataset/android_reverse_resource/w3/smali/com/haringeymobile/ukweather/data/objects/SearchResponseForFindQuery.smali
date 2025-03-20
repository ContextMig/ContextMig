.class public Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;
.super Ljava/lang/Object;
.source "SearchResponseForFindQuery.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cities:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;",
            ">;"
        }
    .end annotation
.end field

.field private code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cod"
    .end annotation
.end field

.field private count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4e980b23c1a020adL    # -1.0847112295781463E-70

    const-string v2, "com/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCities()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->cities:Ljava/util/List;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getCode()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget v1, p0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->code:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iget v1, p0, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->count:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

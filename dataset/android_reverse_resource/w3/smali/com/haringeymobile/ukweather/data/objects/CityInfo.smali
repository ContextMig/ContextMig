.class public Lcom/haringeymobile/ukweather/data/objects/CityInfo;
.super Ljava/lang/Object;
.source "CityInfo.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cityId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private cityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private coordinates:Lcom/haringeymobile/ukweather/data/objects/Coordinates;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coord"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/CityInfo;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1c5fe976f5ad7847L

    const-string v2, "com/haringeymobile/ukweather/data/objects/CityInfo"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/CityInfo;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityInfo;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCityName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityInfo;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityInfo;->cityName:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCountry()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/CityInfo;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/CityInfo;->country:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

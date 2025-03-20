.class public Lcom/haringeymobile/ukweather/data/objects/Coordinates;
.super Ljava/lang/Object;
.source "Coordinates.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lat"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lon"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/Coordinates;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x387b61c17a42f91aL    # -3.4257763655736084E36

    const-string v2, "com/haringeymobile/ukweather/data/objects/Coordinates"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/Coordinates;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Coordinates;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Coordinates;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/Coordinates;->latitude:D

    aput-boolean v1, v0, v1

    return-wide v2
.end method

.method public getLongitude()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Coordinates;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    iget-wide v2, p0, Lcom/haringeymobile/ukweather/data/objects/Coordinates;->longitude:D

    const/4 v1, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

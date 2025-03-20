.class public Lcom/haringeymobile/ukweather/data/objects/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ICON_URL_PREFIX:Ljava/lang/String; = "https://openweathermap.org/img/w/"

.field public static final ICON_URL_SUFFIX:Ljava/lang/String; = ".png"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "main"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/Weather;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x48194c408b144b6bL    # 2.152103907141225E39

    const-string v2, "com/haringeymobile/ukweather/data/objects/Weather"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/Weather;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/Weather;->description:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getIcon()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/Weather;->icon:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getId()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget v1, p0, Lcom/haringeymobile/ukweather/data/objects/Weather;->id:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Weather;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/haringeymobile/ukweather/data/objects/Weather;->type:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

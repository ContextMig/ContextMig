.class public Lorg/asdtm/goodweather/model/Weather$Wind;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wind"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mDirection:F

.field private mSpeed:F

.field final synthetic this$0:Lorg/asdtm/goodweather/model/Weather;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/model/Weather$Wind;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x15b527d9c3a017f0L    # 4.217253059955247E-204

    const-string v2, "org/asdtm/goodweather/model/Weather$Wind"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/model/Weather$Wind;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lorg/asdtm/goodweather/model/Weather;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Wind;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iput-object p1, p0, Lorg/asdtm/goodweather/model/Weather$Wind;->this$0:Lorg/asdtm/goodweather/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDirection()F
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Wind;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget v1, p0, Lorg/asdtm/goodweather/model/Weather$Wind;->mDirection:F

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getSpeed()F
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Wind;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget v1, p0, Lorg/asdtm/goodweather/model/Weather$Wind;->mSpeed:F

    aput-boolean v2, v0, v2

    return v1
.end method

.method public setDirection(F)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Wind;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iput p1, p0, Lorg/asdtm/goodweather/model/Weather$Wind;->mDirection:F

    .line 45
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSpeed(F)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Wind;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iput p1, p0, Lorg/asdtm/goodweather/model/Weather$Wind;->mSpeed:F

    .line 37
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

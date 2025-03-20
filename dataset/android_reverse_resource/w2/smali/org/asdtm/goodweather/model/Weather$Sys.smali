.class public Lorg/asdtm/goodweather/model/Weather$Sys;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sys"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mSunrise:J

.field private mSunset:J

.field final synthetic this$0:Lorg/asdtm/goodweather/model/Weather;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/model/Weather$Sys;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x304cf5cdca5bc65cL    # -8.611959127219286E75

    const-string v2, "org/asdtm/goodweather/model/Weather$Sys"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/model/Weather$Sys;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lorg/asdtm/goodweather/model/Weather;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Sys;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    iput-object p1, p0, Lorg/asdtm/goodweather/model/Weather$Sys;->this$0:Lorg/asdtm/goodweather/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getSunrise()J
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Sys;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    iget-wide v2, p0, Lorg/asdtm/goodweather/model/Weather$Sys;->mSunrise:J

    aput-boolean v1, v0, v1

    return-wide v2
.end method

.method public getSunset()J
    .locals 5

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Sys;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    iget-wide v2, p0, Lorg/asdtm/goodweather/model/Weather$Sys;->mSunset:J

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public setSunrise(J)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Sys;->$jacocoInit()[Z

    move-result-object v0

    .line 115
    iput-wide p1, p0, Lorg/asdtm/goodweather/model/Weather$Sys;->mSunrise:J

    .line 116
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSunset(J)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Sys;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    iput-wide p1, p0, Lorg/asdtm/goodweather/model/Weather$Sys;->mSunset:J

    .line 124
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

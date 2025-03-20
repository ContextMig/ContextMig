.class public Lorg/asdtm/goodweather/model/Weather$Temperature;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Temperature"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mTemp:F

.field final synthetic this$0:Lorg/asdtm/goodweather/model/Weather;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/model/Weather$Temperature;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x36b4ecfdae78e537L    # 3.6654019445838844E-45

    const-string v2, "org/asdtm/goodweather/model/Weather$Temperature"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/model/Weather$Temperature;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lorg/asdtm/goodweather/model/Weather;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Temperature;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    iput-object p1, p0, Lorg/asdtm/goodweather/model/Weather$Temperature;->this$0:Lorg/asdtm/goodweather/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getTemp()F
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Temperature;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    iget v1, p0, Lorg/asdtm/goodweather/model/Weather$Temperature;->mTemp:F

    aput-boolean v2, v0, v2

    return v1
.end method

.method public setTemp(F)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/Weather$Temperature;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iput p1, p0, Lorg/asdtm/goodweather/model/Weather$Temperature;->mTemp:F

    .line 23
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

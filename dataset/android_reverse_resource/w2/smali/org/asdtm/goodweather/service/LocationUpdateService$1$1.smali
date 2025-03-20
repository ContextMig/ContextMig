.class Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;
.super Landroid/os/CountDownTimer;
.source "LocationUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/service/LocationUpdateService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lorg/asdtm/goodweather/service/LocationUpdateService$1;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2d7bf7ac0051bae1L    # 1.3729491577794144E-89

    const-string v2, "org/asdtm/goodweather/service/LocationUpdateService$1$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/service/LocationUpdateService$1;JJ)V
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 135
    iput-object p1, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;->this$1:Lorg/asdtm/goodweather/service/LocationUpdateService$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    iget-object v1, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;->this$1:Lorg/asdtm/goodweather/service/LocationUpdateService$1;

    iget-object v1, v1, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-static {v1}, Lorg/asdtm/goodweather/service/LocationUpdateService;->access$000(Lorg/asdtm/goodweather/service/LocationUpdateService;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;->this$1:Lorg/asdtm/goodweather/service/LocationUpdateService$1;

    iget-object v2, v2, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 143
    iget-object v1, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;->this$1:Lorg/asdtm/goodweather/service/LocationUpdateService$1;

    iget-object v1, v1, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-virtual {v1}, Lorg/asdtm/goodweather/service/LocationUpdateService;->stopSelf()V

    .line 144
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 138
    aput-boolean v1, v0, v1

    return-void
.end method

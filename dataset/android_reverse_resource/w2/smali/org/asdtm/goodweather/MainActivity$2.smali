.class Lorg/asdtm/goodweather/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/MainActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1ae8300e8ed40231L

    const-string v2, "org/asdtm/goodweather/MainActivity$2"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/MainActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 315
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity$2;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 318
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$2;->this$0:Lorg/asdtm/goodweather/MainActivity;

    iget-object v2, p0, Lorg/asdtm/goodweather/MainActivity$2;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v2}, Lorg/asdtm/goodweather/MainActivity;->access$300(Lorg/asdtm/goodweather/MainActivity;)Lorg/asdtm/goodweather/ConnectionDetector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/asdtm/goodweather/ConnectionDetector;->isNetworkAvailableAndConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/asdtm/goodweather/MainActivity;->access$402(Lorg/asdtm/goodweather/MainActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    aput-boolean v5, v0, v5

    .line 319
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$2;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/MainActivity;->access$400(Lorg/asdtm/goodweather/MainActivity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    .line 320
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$2;->this$0:Lorg/asdtm/goodweather/MainActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity$2;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const-class v4, Lorg/asdtm/goodweather/service/CurrentWeatherService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lorg/asdtm/goodweather/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    .line 327
    :goto_0
    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$2;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const v2, 0x7f08001c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    .line 324
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    .line 325
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$2;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/MainActivity;->access$700(Lorg/asdtm/goodweather/MainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

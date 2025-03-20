.class Lorg/asdtm/goodweather/service/LocationUpdateService$1;
.super Ljava/lang/Object;
.source "LocationUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/service/LocationUpdateService;->detectLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

.field final synthetic val$locationListener:Landroid/location/LocationListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3d6d6d94c3735487L    # 8.363955203247821E-13

    const-string v2, "org/asdtm/goodweather/service/LocationUpdateService$1"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/service/LocationUpdateService;Landroid/location/LocationListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    iput-object p1, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    iput-object p2, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->val$locationListener:Landroid/location/LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->$jacocoInit()[Z

    move-result-object v7

    .line 122
    iget-object v0, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-static {v0}, Lorg/asdtm/goodweather/service/LocationUpdateService;->access$000(Lorg/asdtm/goodweather/service/LocationUpdateService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->val$locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    aput-boolean v8, v7, v8

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-static {v2}, Lorg/asdtm/goodweather/service/LocationUpdateService;->access$100(Lorg/asdtm/goodweather/service/LocationUpdateService;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 124
    const/4 v0, 0x2

    aput-boolean v8, v7, v0

    .line 150
    .local v6, "lastGpsLocation":Landroid/location/Location;
    :goto_0
    return-void

    .line 126
    .end local v6    # "lastGpsLocation":Landroid/location/Location;
    :cond_0
    iget-object v0, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    aput-boolean v8, v7, v0

    .line 148
    .restart local v6    # "lastGpsLocation":Landroid/location/Location;
    :goto_1
    iget-object v0, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-virtual {v2}, Lorg/asdtm/goodweather/service/LocationUpdateService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/asdtm/goodweather/widget/LessWidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/asdtm/goodweather/service/LocationUpdateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/16 v0, 0x11

    aput-boolean v8, v7, v0

    .line 149
    iget-object v0, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-virtual {v2}, Lorg/asdtm/goodweather/service/LocationUpdateService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/asdtm/goodweather/widget/MoreWidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/asdtm/goodweather/service/LocationUpdateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 150
    const/16 v0, 0x12

    aput-boolean v8, v7, v0

    goto :goto_0

    .line 126
    .end local v6    # "lastGpsLocation":Landroid/location/Location;
    :cond_1
    const/4 v0, 0x4

    aput-boolean v8, v7, v0

    .line 127
    iget-object v0, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-static {v0}, Lorg/asdtm/goodweather/service/LocationUpdateService;->access$000(Lorg/asdtm/goodweather/service/LocationUpdateService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x5

    aput-boolean v8, v7, v1

    .line 128
    iget-object v1, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-static {v1}, Lorg/asdtm/goodweather/service/LocationUpdateService;->access$000(Lorg/asdtm/goodweather/service/LocationUpdateService;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 129
    .restart local v6    # "lastGpsLocation":Landroid/location/Location;
    if-eqz v6, :cond_2

    const/4 v1, 0x6

    aput-boolean v8, v7, v1

    .line 131
    :goto_2
    if-nez v6, :cond_4

    const/16 v0, 0xa

    aput-boolean v8, v7, v0

    .line 134
    :goto_3
    iget-object v0, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->this$0:Lorg/asdtm/goodweather/service/LocationUpdateService;

    invoke-static {v0}, Lorg/asdtm/goodweather/service/LocationUpdateService;->access$000(Lorg/asdtm/goodweather/service/LocationUpdateService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->val$locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/16 v0, 0xe

    aput-boolean v8, v7, v0

    .line 135
    new-instance v0, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;-><init>(Lorg/asdtm/goodweather/service/LocationUpdateService$1;JJ)V

    const/16 v1, 0xf

    aput-boolean v8, v7, v1

    .line 145
    invoke-virtual {v0}, Lorg/asdtm/goodweather/service/LocationUpdateService$1$1;->start()Landroid/os/CountDownTimer;

    const/16 v0, 0x10

    aput-boolean v8, v7, v0

    goto :goto_1

    .line 129
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x7

    aput-boolean v8, v7, v1

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    aput-boolean v8, v7, v1

    .line 130
    iget-object v1, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->val$locationListener:Landroid/location/LocationListener;

    invoke-interface {v1, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    const/16 v0, 0x9

    aput-boolean v8, v7, v0

    goto/16 :goto_1

    .line 131
    :cond_4
    if-eqz v0, :cond_5

    const/16 v0, 0xb

    aput-boolean v8, v7, v0

    goto :goto_3

    :cond_5
    const/16 v0, 0xc

    aput-boolean v8, v7, v0

    .line 132
    iget-object v0, p0, Lorg/asdtm/goodweather/service/LocationUpdateService$1;->val$locationListener:Landroid/location/LocationListener;

    invoke-interface {v0, v6}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    const/16 v0, 0xd

    aput-boolean v8, v7, v0

    goto/16 :goto_1
.end method

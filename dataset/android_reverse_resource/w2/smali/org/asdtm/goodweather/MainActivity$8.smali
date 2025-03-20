.class Lorg/asdtm/goodweather/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/MainActivity;->gpsRequestLocation()V
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

    sget-object v0, Lorg/asdtm/goodweather/MainActivity$8;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7555ced3ead867b5L

    const-string v2, "org/asdtm/goodweather/MainActivity$8"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/MainActivity$8;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$8;->$jacocoInit()[Z

    move-result-object v0

    .line 583
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity$8;->this$0:Lorg/asdtm/goodweather/MainActivity;

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

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$8;->$jacocoInit()[Z

    move-result-object v7

    .line 586
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$8;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v0}, Lorg/asdtm/goodweather/MainActivity;->access$200(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$8;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/MainActivity;->access$100(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    aput-boolean v8, v7, v8

    .line 587
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$8;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aput-boolean v8, v7, v0

    .line 595
    .local v6, "lastLocation":Landroid/location/Location;
    :goto_0
    const/4 v0, 0x7

    aput-boolean v8, v7, v0

    return-void

    .line 587
    .end local v6    # "lastLocation":Landroid/location/Location;
    :cond_0
    const/4 v0, 0x3

    aput-boolean v8, v7, v0

    .line 588
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$8;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v0}, Lorg/asdtm/goodweather/MainActivity;->access$200(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 589
    .restart local v6    # "lastLocation":Landroid/location/Location;
    if-eqz v6, :cond_1

    const/4 v0, 0x4

    aput-boolean v8, v7, v0

    .line 590
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$8;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v0}, Lorg/asdtm/goodweather/MainActivity;->access$100(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    const/4 v0, 0x5

    aput-boolean v8, v7, v0

    goto :goto_0

    .line 592
    :cond_1
    iget-object v0, p0, Lorg/asdtm/goodweather/MainActivity$8;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v0}, Lorg/asdtm/goodweather/MainActivity;->access$200(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/asdtm/goodweather/MainActivity$8;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v5}, Lorg/asdtm/goodweather/MainActivity;->access$100(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x6

    aput-boolean v8, v7, v0

    goto :goto_0
.end method

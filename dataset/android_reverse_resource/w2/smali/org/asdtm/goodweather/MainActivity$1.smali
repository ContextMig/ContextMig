.class Lorg/asdtm/goodweather/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


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

    sget-object v0, Lorg/asdtm/goodweather/MainActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x439fbfb2c5007c4cL    # -7.04782518947834E-18

    const-string v2, "org/asdtm/goodweather/MainActivity$1"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/MainActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 252
    iput-object p1, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 255
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/MainActivity;->access$000(Lorg/asdtm/goodweather/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    aput-boolean v6, v0, v6

    .line 256
    const-string v1, "%1$.2f"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    .line 257
    const-string v2, "%1$.2f"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-boolean v6, v0, v3

    .line 259
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    aput-boolean v6, v0, v3

    .line 263
    :goto_0
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    new-instance v4, Lorg/asdtm/goodweather/ConnectionDetector;

    iget-object v5, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-direct {v4, v5}, Lorg/asdtm/goodweather/ConnectionDetector;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lorg/asdtm/goodweather/MainActivity;->access$302(Lorg/asdtm/goodweather/MainActivity;Lorg/asdtm/goodweather/ConnectionDetector;)Lorg/asdtm/goodweather/ConnectionDetector;

    const/4 v3, 0x7

    aput-boolean v6, v0, v3

    .line 264
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v4}, Lorg/asdtm/goodweather/MainActivity;->access$300(Lorg/asdtm/goodweather/MainActivity;)Lorg/asdtm/goodweather/ConnectionDetector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/asdtm/goodweather/ConnectionDetector;->isNetworkAvailableAndConnected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/asdtm/goodweather/MainActivity;->access$402(Lorg/asdtm/goodweather/MainActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const/16 v3, 0x8

    aput-boolean v6, v0, v3

    .line 266
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const-string v5, "config"

    invoke-virtual {v4, v5, v7}, Lorg/asdtm/goodweather/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/asdtm/goodweather/MainActivity;->access$502(Lorg/asdtm/goodweather/MainActivity;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    const/16 v3, 0x9

    aput-boolean v6, v0, v3

    .line 268
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v3}, Lorg/asdtm/goodweather/MainActivity;->access$500(Lorg/asdtm/goodweather/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v4, 0xa

    aput-boolean v6, v0, v4

    .line 269
    const-string v4, "latitude"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0xb

    aput-boolean v6, v0, v4

    .line 270
    const-string v4, "longitude"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0xc

    aput-boolean v6, v0, v4

    .line 271
    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v4, v1, v2, v3}, Lorg/asdtm/goodweather/MainActivity;->access$600(Lorg/asdtm/goodweather/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const/16 v1, 0xd

    aput-boolean v6, v0, v1

    .line 272
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    .line 274
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v1}, Lorg/asdtm/goodweather/MainActivity;->access$400(Lorg/asdtm/goodweather/MainActivity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    aput-boolean v6, v0, v1

    .line 275
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const-class v4, Lorg/asdtm/goodweather/service/CurrentWeatherService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lorg/asdtm/goodweather/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/16 v1, 0x10

    aput-boolean v6, v0, v1

    .line 276
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.asdtm.goodweather.action.FORCED_APPWIDGET_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/asdtm/goodweather/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v1, 0x11

    aput-boolean v6, v0, v1

    .line 281
    :goto_1
    const/16 v1, 0x14

    aput-boolean v6, v0, v1

    return-void

    .line 259
    :cond_0
    const/4 v3, 0x5

    aput-boolean v6, v0, v3

    .line 260
    iget-object v3, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v3}, Lorg/asdtm/goodweather/MainActivity;->access$200(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationManager;

    move-result-object v3

    iget-object v4, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    invoke-static {v4}, Lorg/asdtm/goodweather/MainActivity;->access$100(Lorg/asdtm/goodweather/MainActivity;)Landroid/location/LocationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v3, 0x6

    aput-boolean v6, v0, v3

    goto/16 :goto_0

    .line 278
    :cond_1
    iget-object v1, p0, Lorg/asdtm/goodweather/MainActivity$1;->this$0:Lorg/asdtm/goodweather/MainActivity;

    const v2, 0x7f08001c

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x12

    aput-boolean v6, v0, v2

    .line 279
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x13

    aput-boolean v6, v0, v1

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 296
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 291
    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 286
    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

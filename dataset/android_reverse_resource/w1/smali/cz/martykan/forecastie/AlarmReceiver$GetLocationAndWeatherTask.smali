.class public Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;
.super Landroid/os/AsyncTask;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/AlarmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetLocationAndWeatherTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "LocationAndWTask"


# instance fields
.field private final MAX_RUNNING_TIME:D

.field private locationListener:Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field final synthetic this$0:Lcz/martykan/forecastie/AlarmReceiver;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2b12fbaa6b6e8b91L    # -1.2693460607588621E101

    const-string v2, "cz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask"

    const/16 v3, 0x24

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcz/martykan/forecastie/AlarmReceiver;)V
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 178
    iput-object p1, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 181
    const-wide v2, 0x40dd4c0000000000L    # 30000.0

    iput-wide v2, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->MAX_RUNNING_TIME:D

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 178
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0x23

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 13

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->$jacocoInit()[Z

    move-result-object v5

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 207
    .local v2, "startTime":J
    const-wide/16 v0, 0x0

    const/16 v4, 0xc

    aput-boolean v12, v5, v4

    .line 208
    :goto_0
    iget-object v4, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->locationListener:Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;

    invoke-virtual {v4}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->getLocation()Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    aput-boolean v12, v5, v4

    .line 216
    :goto_1
    iget-object v4, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->locationListener:Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;

    invoke-virtual {v4}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->getLocation()Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_2

    const/16 v4, 0x14

    aput-boolean v12, v5, v4

    .line 219
    :goto_2
    const/4 v4, 0x0

    const/16 v6, 0x17

    aput-boolean v12, v5, v6

    return-object v4

    .line 208
    :cond_0
    long-to-double v6, v0

    const-wide v8, 0x40dd4c0000000000L    # 30000.0

    cmpg-double v4, v6, v8

    if-ltz v4, :cond_1

    const/16 v4, 0xe

    aput-boolean v12, v5, v4

    goto :goto_1

    :cond_1
    const/16 v4, 0xf

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v5, v4

    .line 210
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    const/16 v4, 0x10

    aput-boolean v12, v5, v4

    .line 214
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v2

    .local v0, "runningTime":J
    const/16 v4, 0x13

    aput-boolean v12, v5, v4

    goto :goto_0

    .line 211
    .end local v0    # "runningTime":J
    :catch_0
    move-exception v4

    const/16 v6, 0x11

    aput-boolean v12, v5, v6

    .line 212
    const-string v6, "LocationAndWTask"

    const-string v7, "Error occurred while waiting for location update"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v4, 0x12

    aput-boolean v12, v5, v4

    goto :goto_3

    .line 216
    :cond_2
    const/16 v4, 0x15

    aput-boolean v12, v5, v4

    .line 217
    const-string v4, "LocationAndWTask"

    const-string v6, "Couldn\'t determine location in less than %s seconds"

    new-array v7, v12, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x16

    aput-boolean v12, v5, v4

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->$jacocoInit()[Z

    move-result-object v0

    .line 178
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->onPostExecute(Ljava/lang/Void;)V

    const/16 v1, 0x22

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->$jacocoInit()[Z

    move-result-object v2

    .line 224
    iget-object v1, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->locationListener:Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;

    invoke-virtual {v1}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 225
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    const/16 v1, 0x18

    aput-boolean v8, v2, v1

    .line 226
    const-string v1, "LocationAndWTask"

    const-string v3, "Determined location: latitude %f - longitude %f"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x19

    aput-boolean v8, v2, v1

    .line 227
    new-instance v1, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;

    iget-object v3, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {v1, v3}, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;-><init>(Lcz/martykan/forecastie/AlarmReceiver;)V

    new-array v3, v10, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v3}, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v1, 0x1a

    aput-boolean v8, v2, v1

    .line 234
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->locationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->locationListener:Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const/16 v1, 0x1e

    aput-boolean v8, v2, v1

    .line 238
    :goto_1
    const/16 v1, 0x21

    aput-boolean v8, v2, v1

    return-void

    .line 229
    :cond_0
    const-string v1, "LocationAndWTask"

    const-string v3, "Couldn\'t determine location. Using last known location."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1b

    aput-boolean v8, v2, v1

    .line 230
    new-instance v1, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;

    iget-object v3, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {v1, v3}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;-><init>(Lcz/martykan/forecastie/AlarmReceiver;)V

    new-array v3, v9, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v1, 0x1c

    aput-boolean v8, v2, v1

    .line 231
    new-instance v1, Lcz/martykan/forecastie/AlarmReceiver$GetLongTermWeatherTask;

    iget-object v3, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {v1, v3}, Lcz/martykan/forecastie/AlarmReceiver$GetLongTermWeatherTask;-><init>(Lcz/martykan/forecastie/AlarmReceiver;)V

    new-array v3, v9, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcz/martykan/forecastie/AlarmReceiver$GetLongTermWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v1, 0x1d

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v2, v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    const/16 v3, 0x1f

    aput-boolean v8, v2, v3

    .line 236
    const-string v3, "LocationAndWTask"

    const-string v4, "Couldn\'t remove location updates. Probably this is an Android (>M) runtime permissions"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x20

    aput-boolean v8, v2, v1

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->$jacocoInit()[Z

    move-result-object v6

    .line 188
    const-string v0, "LocationAndWTask"

    const-string v1, "Trying to determine location..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput-boolean v7, v6, v7

    .line 189
    iget-object v0, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    iget-object v0, v0, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->locationManager:Landroid/location/LocationManager;

    const/4 v0, 0x2

    aput-boolean v7, v6, v0

    .line 190
    new-instance v0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;

    invoke-direct {v0, p0}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;-><init>(Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;)V

    iput-object v0, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->locationListener:Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;

    const/4 v0, 0x3

    const/4 v1, 0x1

    :try_start_0
    aput-boolean v1, v6, v0

    .line 192
    iget-object v0, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 194
    iget-object v0, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->locationListener:Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x5

    const/4 v1, 0x1

    aput-boolean v1, v6, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    const/16 v0, 0x8

    aput-boolean v7, v6, v0

    .line 202
    :goto_1
    const/16 v0, 0xb

    aput-boolean v7, v6, v0

    return-void

    .line 196
    :cond_0
    :try_start_1
    const-string v0, "LocationAndWTask"

    const-string v1, "\'Network\' location is not enabled. Cancelling determining location."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;->onPostExecute(Ljava/lang/Void;)V

    const/4 v0, 0x7

    const/4 v1, 0x1

    aput-boolean v1, v6, v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    const/16 v1, 0x9

    aput-boolean v7, v6, v1

    .line 200
    const-string v1, "LocationAndWTask"

    const-string v2, "Couldn\'t request location updates. Probably this is an Android (>M) runtime permissions issue "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xa

    aput-boolean v7, v6, v0

    goto :goto_1
.end method

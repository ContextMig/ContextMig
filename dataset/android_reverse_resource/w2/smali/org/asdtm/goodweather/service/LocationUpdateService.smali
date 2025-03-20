.class public Lorg/asdtm/goodweather/service/LocationUpdateService;
.super Landroid/app/Service;
.source "LocationUpdateService.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final LOCATION_TIMEOUT_IN_MS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "LocationUpdateService"


# instance fields
.field private lastLocationUpdateTime:J

.field private locationManager:Landroid/location/LocationManager;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xb745e7d2a4ec020L

    const-string v2, "org/asdtm/goodweather/service/LocationUpdateService"

    const/16 v3, 0x2f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lorg/asdtm/goodweather/service/LocationUpdateService;)Landroid/location/LocationManager;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lorg/asdtm/goodweather/service/LocationUpdateService;->locationManager:Landroid/location/LocationManager;

    const/16 v2, 0x2d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lorg/asdtm/goodweather/service/LocationUpdateService;)J
    .locals 5

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-wide v2, p0, Lorg/asdtm/goodweather/service/LocationUpdateService;->lastLocationUpdateTime:J

    const/16 v1, 0x2e

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method private detectLocation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x26

    aput-boolean v6, v0, v1

    .line 153
    :goto_0
    const/16 v1, 0x2c

    aput-boolean v6, v0, v1

    return-void

    .line 114
    :cond_0
    const/16 v1, 0x27

    aput-boolean v6, v0, v1

    .line 115
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0x28

    aput-boolean v6, v0, v2

    .line 116
    iget-object v2, p0, Lorg/asdtm/goodweather/service/LocationUpdateService;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3, p0, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 117
    const/16 v2, 0x29

    aput-boolean v6, v0, v2

    .line 118
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v1, 0x2a

    aput-boolean v6, v0, v1

    .line 119
    new-instance v1, Lorg/asdtm/goodweather/service/LocationUpdateService$1;

    invoke-direct {v1, p0, p0}, Lorg/asdtm/goodweather/service/LocationUpdateService$1;-><init>(Lorg/asdtm/goodweather/service/LocationUpdateService;Landroid/location/LocationListener;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v1, 0x2b

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method private getAndWriteAddressFromGeocoder(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v7

    .line 89
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/16 v0, 0x14

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v7, v0

    .line 91
    const-string v0, ","

    const-string v2, "."

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v7, v2

    .line 92
    const-string v2, ","

    const-string v3, "."

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v7, v2

    .line 93
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    const/16 v0, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v7, v0

    .line 94
    if-nez v1, :cond_0

    const/16 v0, 0x18

    const/4 v1, 0x1

    aput-boolean v1, v7, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    const/16 v0, 0x1e

    aput-boolean v8, v7, v0

    .line 102
    :goto_1
    const/16 v0, 0x21

    aput-boolean v8, v7, v0

    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 v0, 0x19

    const/4 v1, 0x1

    aput-boolean v1, v7, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    :goto_2
    const/16 v1, 0x1f

    aput-boolean v8, v7, v1

    .line 100
    const-string v1, "LocationUpdateService"

    const-string v2, "Unable to get address from latitude and longitude"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x20

    aput-boolean v8, v7, v0

    goto :goto_1

    .line 94
    :cond_1
    const/16 v0, 0x1a

    const/4 v2, 0x1

    :try_start_2
    aput-boolean v2, v7, v0

    .line 95
    const-string v2, "geo_city_name"

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v7, v0

    .line 96
    const-string v2, "geo_district_name"

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v7, v0

    .line 97
    const-string v2, "geo_country_name"

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x1d

    const/4 v1, 0x1

    aput-boolean v1, v7, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private requestLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v1

    .line 105
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "fineLocationPermission":I
    if-eqz v0, :cond_0

    const/16 v2, 0x22

    aput-boolean v3, v1, v2

    .line 107
    invoke-virtual {p0}, Lorg/asdtm/goodweather/service/LocationUpdateService;->stopSelf()V

    const/16 v2, 0x23

    aput-boolean v3, v1, v2

    .line 111
    :goto_0
    const/16 v2, 0x25

    aput-boolean v3, v1, v2

    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lorg/asdtm/goodweather/service/LocationUpdateService;->detectLocation()V

    const/16 v2, 0x24

    aput-boolean v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v1

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 48
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/service/LocationUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/asdtm/goodweather/service/LocationUpdateService;->locationManager:Landroid/location/LocationManager;

    .line 49
    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/asdtm/goodweather/service/LocationUpdateService;->lastLocationUpdateTime:J

    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    .line 62
    const-string v1, "%1$.2f"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    .line 63
    const-string v2, "%1$.2f"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-boolean v6, v0, v3

    .line 64
    const-string v3, "LocationUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; Long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x9

    aput-boolean v6, v0, v3

    .line 65
    iget-object v3, p0, Lorg/asdtm/goodweather/service/LocationUpdateService;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/16 v3, 0xa

    aput-boolean v6, v0, v3

    .line 66
    const-string v3, "config"

    invoke-virtual {p0, v3, v7}, Lorg/asdtm/goodweather/service/LocationUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v4, 0xb

    aput-boolean v6, v0, v4

    .line 68
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v4, 0xc

    aput-boolean v6, v0, v4

    .line 69
    const-string v4, "latitude"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0xd

    aput-boolean v6, v0, v4

    .line 70
    const-string v4, "longitude"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0xe

    aput-boolean v6, v0, v4

    .line 71
    invoke-direct {p0, v1, v2, v3}, Lorg/asdtm/goodweather/service/LocationUpdateService;->getAndWriteAddressFromGeocoder(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const/16 v1, 0xf

    aput-boolean v6, v0, v1

    .line 72
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    const/16 v1, 0x10

    aput-boolean v6, v0, v1

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    iget-object v1, p0, Lorg/asdtm/goodweather/service/LocationUpdateService;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 86
    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 54
    invoke-direct {p0}, Lorg/asdtm/goodweather/service/LocationUpdateService;->requestLocation()V

    .line 55
    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/service/LocationUpdateService;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

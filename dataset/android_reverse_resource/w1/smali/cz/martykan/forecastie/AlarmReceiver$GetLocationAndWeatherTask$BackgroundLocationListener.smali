.class public Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;
.super Ljava/lang/Object;
.source "AlarmReceiver.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundLocationListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "LocationListener"


# instance fields
.field private location:Landroid/location/Location;

.field final synthetic this$1:Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x538ab620f9cf82d3L    # 2.7859028800920902E94

    const-string v2, "cz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 240
    iput-object p1, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->this$1:Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->location:Landroid/location/Location;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 246
    iput-object p1, p0, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->location:Landroid/location/Location;

    .line 247
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 262
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 257
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetLocationAndWeatherTask$BackgroundLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 252
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

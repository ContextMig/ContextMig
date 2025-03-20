.class public Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/activities/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DummyLocationListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcz/martykan/forecastie/activities/SettingsActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x58e68fed0fb6f9bL

    const-string v2, "cz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcz/martykan/forecastie/activities/SettingsActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    iput-object p1, p0, Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;->this$0:Lcz/martykan/forecastie/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 236
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 251
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 246
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/SettingsActivity$DummyLocationListener;->$jacocoInit()[Z

    move-result-object v0

    .line 241
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

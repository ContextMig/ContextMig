.class public Lorg/mozilla/telemetry/measurement/FirstRunProfileDateMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "FirstRunProfileDateMeasurement.java"


# instance fields
.field private configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 26
    const-string v0, "profileDate"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lorg/mozilla/telemetry/measurement/FirstRunProfileDateMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 30
    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/FirstRunProfileDateMeasurement;->ensureValueExists()V

    .line 31
    return-void
.end method

.method private getProfileDateInDays()J
    .locals 8

    .prologue
    .line 54
    iget-object v2, p0, Lorg/mozilla/telemetry/measurement/FirstRunProfileDateMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v2}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "profile_date"

    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/FirstRunProfileDateMeasurement;->now()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    .local v0, "profileDateMilliseconds":J
    long-to-double v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    return-wide v2
.end method


# virtual methods
.method ensureValueExists()V
    .locals 6

    .prologue
    .line 34
    iget-object v1, p0, Lorg/mozilla/telemetry/measurement/FirstRunProfileDateMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "profile_date"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "profile_date"

    .line 41
    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/FirstRunProfileDateMeasurement;->now()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 42
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public flush()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/mozilla/telemetry/measurement/FirstRunProfileDateMeasurement;->getProfileDateInDays()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method now()J
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.class public Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "SessionDurationMeasurement.java"


# instance fields
.field private final configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

.field private sessionStarted:Z

.field private timeAtSessionStartNano:J


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 25
    const-string v0, "durations"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->sessionStarted:Z

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->timeAtSessionStartNano:J

    .line 27
    iput-object p1, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 28
    return-void
.end method

.method private declared-synchronized getAndResetDuration()J
    .locals 8

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v3}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 65
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "session_duration"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 67
    .local v0, "duration":J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "session_duration"

    const-wide/16 v6, 0x0

    .line 68
    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 69
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-wide v0

    .line 63
    .end local v0    # "duration":J
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->getAndResetDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method getSystemTimeNano()J
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized recordSessionEnd()V
    .locals 10

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->sessionStarted:Z

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v6, "Expected session to be started before session end is called"

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 44
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->sessionStarted:Z

    .line 46
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->getSystemTimeNano()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->timeAtSessionStartNano:J

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 48
    .local v2, "sessionElapsedSeconds":J
    iget-object v1, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "session_duration"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 52
    .local v4, "totalElapsedSeconds":J
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "session_duration"

    add-long v8, v4, v2

    .line 53
    invoke-interface {v1, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized recordSessionStart()V
    .locals 2

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->sessionStarted:Z

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to start session but it is already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 35
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->sessionStarted:Z

    .line 36
    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->getSystemTimeNano()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->timeAtSessionStartNano:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    monitor-exit p0

    return-void
.end method

.class public Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "SessionCountMeasurement.java"


# instance fields
.field private final configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 19
    const-string v0, "sessions"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 22
    return-void
.end method

.method private declared-synchronized getAndResetCount()J
    .locals 8

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v3}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 42
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "session_count"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 44
    .local v0, "count":J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "session_count"

    const-wide/16 v6, 0x0

    .line 45
    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 46
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-wide v0

    .line 40
    .end local v0    # "count":J
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized countSession()V
    .locals 8

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v3}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 27
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "session_count"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 29
    .local v0, "count":J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "session_count"

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 30
    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 31
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 25
    .end local v0    # "count":J
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public flush()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;->getAndResetCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

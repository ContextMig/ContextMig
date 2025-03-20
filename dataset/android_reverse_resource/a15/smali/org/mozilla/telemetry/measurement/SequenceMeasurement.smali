.class public Lorg/mozilla/telemetry/measurement/SequenceMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "SequenceMeasurement.java"


# instance fields
.field private final configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

.field private final preferenceKeySequence:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;)V
    .locals 2
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .param p2, "ping"    # Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;

    .prologue
    .line 21
    const-string v0, "seq"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lorg/mozilla/telemetry/measurement/SequenceMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sequence_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/telemetry/measurement/SequenceMeasurement;->preferenceKeySequence:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private declared-synchronized getAndIncrementSequence()J
    .locals 8

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/telemetry/measurement/SequenceMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, "preferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lorg/mozilla/telemetry/measurement/SequenceMeasurement;->preferenceKeySequence:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 37
    .local v2, "sequence":J
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v4, p0, Lorg/mozilla/telemetry/measurement/SequenceMeasurement;->preferenceKeySequence:Ljava/lang/String;

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 38
    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 39
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-wide v2

    .line 33
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "sequence":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/mozilla/telemetry/measurement/SequenceMeasurement;->getAndIncrementSequence()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

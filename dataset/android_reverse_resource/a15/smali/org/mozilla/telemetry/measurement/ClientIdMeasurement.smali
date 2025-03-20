.class public Lorg/mozilla/telemetry/measurement/ClientIdMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "ClientIdMeasurement.java"


# instance fields
.field private clientId:Ljava/lang/String;

.field private configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 25
    const-string v0, "clientId"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lorg/mozilla/telemetry/measurement/ClientIdMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 28
    return-void
.end method

.method private static declared-synchronized generateClientId(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)Ljava/lang/String;
    .locals 5
    .param p0, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 40
    const-class v3, Lorg/mozilla/telemetry/measurement/ClientIdMeasurement;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 42
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "client_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "client_id"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 53
    :goto_0
    monitor-exit v3

    return-object v0

    .line 47
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "clientId":Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "client_id"

    .line 50
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 51
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    .end local v0    # "clientId":Ljava/lang/String;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/mozilla/telemetry/measurement/ClientIdMeasurement;->clientId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lorg/mozilla/telemetry/measurement/ClientIdMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-static {v0}, Lorg/mozilla/telemetry/measurement/ClientIdMeasurement;->generateClientId(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/telemetry/measurement/ClientIdMeasurement;->clientId:Ljava/lang/String;

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/mozilla/telemetry/measurement/ClientIdMeasurement;->clientId:Ljava/lang/String;

    return-object v0
.end method

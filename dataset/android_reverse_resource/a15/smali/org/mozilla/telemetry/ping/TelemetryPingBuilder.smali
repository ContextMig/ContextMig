.class public abstract Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
.super Ljava/lang/Object;
.source "TelemetryPingBuilder.java"


# instance fields
.field private configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

.field private final measurements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;I)V
    .locals 1
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 30
    iput-object p2, p0, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->type:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->measurements:Ljava/util/List;

    .line 34
    new-instance v0, Lorg/mozilla/telemetry/measurement/VersionMeasurement;

    invoke-direct {v0, p3}, Lorg/mozilla/telemetry/measurement/VersionMeasurement;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 35
    new-instance v0, Lorg/mozilla/telemetry/measurement/ClientIdMeasurement;

    invoke-direct {v0, p1}, Lorg/mozilla/telemetry/measurement/ClientIdMeasurement;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 36
    return-void
.end method

.method private flushMeasurements()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 80
    .local v1, "measurementResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->measurements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;

    .line 81
    .local v0, "measurement":Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
    invoke-virtual {v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;->flush()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    .end local v0    # "measurement":Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V
    .locals 1
    .param p1, "measurement"    # Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->measurements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public build()Lorg/mozilla/telemetry/ping/TelemetryPing;
    .locals 5

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->generateDocumentId()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "documentId":Ljava/lang/String;
    new-instance v1, Lorg/mozilla/telemetry/ping/TelemetryPing;

    .line 59
    invoke-virtual {p0}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->getType()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->getUploadPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-direct {p0}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->flushMeasurements()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/mozilla/telemetry/ping/TelemetryPing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    return-object v1
.end method

.method public canBuild()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public generateDocumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected getUploadPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "documentId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v0

    .line 68
    .local v0, "configuration":Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    const-string v1, "/submit/telemetry/%s/%s/%s/%s/%s/%s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 70
    invoke-virtual {p0}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 71
    invoke-virtual {v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 72
    invoke-virtual {v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 73
    invoke-virtual {v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getUpdateChannel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 74
    invoke-virtual {v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getBuildId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 68
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

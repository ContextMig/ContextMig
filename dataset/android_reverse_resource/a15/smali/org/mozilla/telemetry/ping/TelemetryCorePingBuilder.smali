.class public Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;
.super Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
.source "TelemetryCorePingBuilder.java"


# instance fields
.field private defaultSearchMeasurement:Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;

.field private searchesMeasurement:Lorg/mozilla/telemetry/measurement/SearchesMeasurement;

.field private sessionCountMeasurement:Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;

.field private sessionDurationMeasurement:Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 40
    const-string v0, "core"

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;I)V

    .line 42
    new-instance v0, Lorg/mozilla/telemetry/measurement/SequenceMeasurement;

    invoke-direct {v0, p1, p0}, Lorg/mozilla/telemetry/measurement/SequenceMeasurement;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 43
    new-instance v0, Lorg/mozilla/telemetry/measurement/LocaleMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/LocaleMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 44
    new-instance v0, Lorg/mozilla/telemetry/measurement/OperatingSystemMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/OperatingSystemMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 45
    new-instance v0, Lorg/mozilla/telemetry/measurement/OperatingSystemVersionMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/OperatingSystemVersionMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 46
    new-instance v0, Lorg/mozilla/telemetry/measurement/DeviceMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/DeviceMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 47
    new-instance v0, Lorg/mozilla/telemetry/measurement/ArchMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/ArchMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 48
    new-instance v0, Lorg/mozilla/telemetry/measurement/FirstRunProfileDateMeasurement;

    invoke-direct {v0, p1}, Lorg/mozilla/telemetry/measurement/FirstRunProfileDateMeasurement;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 49
    new-instance v0, Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;-><init>()V

    iput-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->defaultSearchMeasurement:Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 50
    new-instance v0, Lorg/mozilla/telemetry/measurement/CreatedDateMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/CreatedDateMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 51
    new-instance v0, Lorg/mozilla/telemetry/measurement/TimezoneOffsetMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/TimezoneOffsetMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 52
    new-instance v0, Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;

    invoke-direct {v0, p1}, Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    iput-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->sessionCountMeasurement:Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 53
    new-instance v0, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;

    invoke-direct {v0, p1}, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    iput-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->sessionDurationMeasurement:Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 54
    new-instance v0, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;

    invoke-direct {v0, p1}, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    iput-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->searchesMeasurement:Lorg/mozilla/telemetry/measurement/SearchesMeasurement;

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getDefaultSearchMeasurement()Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->defaultSearchMeasurement:Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;

    return-object v0
.end method

.method public getSearchesMeasurement()Lorg/mozilla/telemetry/measurement/SearchesMeasurement;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->searchesMeasurement:Lorg/mozilla/telemetry/measurement/SearchesMeasurement;

    return-object v0
.end method

.method public getSessionCountMeasurement()Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->sessionCountMeasurement:Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;

    return-object v0
.end method

.method public getSessionDurationMeasurement()Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->sessionDurationMeasurement:Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;

    return-object v0
.end method

.method protected getUploadPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->getUploadPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?v=4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

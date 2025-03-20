.class public Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;
.super Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
.source "TelemetryEventPingBuilder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private eventsMeasurement:Lorg/mozilla/telemetry/measurement/EventsMeasurement;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 32
    const-string v0, "focus-event"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;I)V

    .line 34
    new-instance v0, Lorg/mozilla/telemetry/measurement/SequenceMeasurement;

    invoke-direct {v0, p1, p0}, Lorg/mozilla/telemetry/measurement/SequenceMeasurement;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 35
    new-instance v0, Lorg/mozilla/telemetry/measurement/LocaleMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/LocaleMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 36
    new-instance v0, Lorg/mozilla/telemetry/measurement/OperatingSystemMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/OperatingSystemMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 37
    new-instance v0, Lorg/mozilla/telemetry/measurement/OperatingSystemVersionMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/OperatingSystemVersionMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 38
    new-instance v0, Lorg/mozilla/telemetry/measurement/CreatedTimestampMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/CreatedTimestampMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 39
    new-instance v0, Lorg/mozilla/telemetry/measurement/TimezoneOffsetMeasurement;

    invoke-direct {v0}, Lorg/mozilla/telemetry/measurement/TimezoneOffsetMeasurement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 40
    new-instance v0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement;

    invoke-direct {v0, p1}, Lorg/mozilla/telemetry/measurement/SettingsMeasurement;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 41
    new-instance v0, Lorg/mozilla/telemetry/measurement/EventsMeasurement;

    invoke-direct {v0, p1}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;-><init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    iput-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->eventsMeasurement:Lorg/mozilla/telemetry/measurement/EventsMeasurement;

    invoke-virtual {p0, v0}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->addMeasurement(Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;)V

    .line 42
    return-void
.end method


# virtual methods
.method public canBuild()Z
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->eventsMeasurement:Lorg/mozilla/telemetry/measurement/EventsMeasurement;

    invoke-virtual {v0}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->getEventCount()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getMinimumEventsForUpload()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEventsMeasurement()Lorg/mozilla/telemetry/measurement/EventsMeasurement;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->eventsMeasurement:Lorg/mozilla/telemetry/measurement/EventsMeasurement;

    return-object v0
.end method

.method protected getUploadPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;

    .prologue
    .line 55
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

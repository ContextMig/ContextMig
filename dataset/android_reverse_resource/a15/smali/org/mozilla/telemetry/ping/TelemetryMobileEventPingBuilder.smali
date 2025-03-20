.class public Lorg/mozilla/telemetry/ping/TelemetryMobileEventPingBuilder;
.super Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
.source "TelemetryMobileEventPingBuilder.java"


# instance fields
.field private eventsMeasurement:Lorg/mozilla/telemetry/measurement/EventsMeasurement;


# virtual methods
.method public canBuild()Z
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryMobileEventPingBuilder;->eventsMeasurement:Lorg/mozilla/telemetry/measurement/EventsMeasurement;

    invoke-virtual {v0}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->getEventCount()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/mozilla/telemetry/ping/TelemetryMobileEventPingBuilder;->getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;

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
    iget-object v0, p0, Lorg/mozilla/telemetry/ping/TelemetryMobileEventPingBuilder;->eventsMeasurement:Lorg/mozilla/telemetry/measurement/EventsMeasurement;

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

.class public Lorg/mozilla/telemetry/measurement/CreatedTimestampMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "CreatedTimestampMeasurement.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "created"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

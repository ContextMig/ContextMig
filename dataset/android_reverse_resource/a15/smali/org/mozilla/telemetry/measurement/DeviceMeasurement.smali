.class public Lorg/mozilla/telemetry/measurement/DeviceMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "DeviceMeasurement.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "device"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/DeviceMeasurement;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v3, v2}, Lorg/mozilla/telemetry/util/StringUtils;->safeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/DeviceMeasurement;->getModel()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v1, v3, v2}, Lorg/mozilla/telemetry/util/StringUtils;->safeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

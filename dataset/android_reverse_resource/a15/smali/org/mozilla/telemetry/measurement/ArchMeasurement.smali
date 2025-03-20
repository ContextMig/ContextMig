.class public Lorg/mozilla/telemetry/measurement/ArchMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "ArchMeasurement.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "arch"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/ArchMeasurement;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getArchitecture()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 26
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 29
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0
.end method

.class public Lorg/mozilla/telemetry/measurement/OperatingSystemMeasurement;
.super Lorg/mozilla/telemetry/measurement/StaticMeasurement;
.source "OperatingSystemMeasurement.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "os"

    const-string v1, "Android"

    invoke-direct {p0, v0, v1}, Lorg/mozilla/telemetry/measurement/StaticMeasurement;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    return-void
.end method

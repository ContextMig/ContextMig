.class public Lorg/mozilla/telemetry/measurement/OperatingSystemVersionMeasurement;
.super Lorg/mozilla/telemetry/measurement/StaticMeasurement;
.source "OperatingSystemVersionMeasurement.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    const-string v0, "osversion"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/telemetry/measurement/StaticMeasurement;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    return-void
.end method

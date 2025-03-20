.class public Lorg/mozilla/telemetry/measurement/VersionMeasurement;
.super Lorg/mozilla/telemetry/measurement/StaticMeasurement;
.source "VersionMeasurement.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 11
    const-string v0, "v"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/telemetry/measurement/StaticMeasurement;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    if-gtz p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version should be a positive integer > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    return-void
.end method

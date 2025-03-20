.class public Lorg/mozilla/telemetry/TelemetryHolder;
.super Ljava/lang/Object;
.source "TelemetryHolder.java"


# static fields
.field private static telemetry:Lorg/mozilla/telemetry/Telemetry;


# direct methods
.method public static get()Lorg/mozilla/telemetry/Telemetry;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lorg/mozilla/telemetry/TelemetryHolder;->telemetry:Lorg/mozilla/telemetry/Telemetry;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to call set() on TelemetryHolder in your application class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    sget-object v0, Lorg/mozilla/telemetry/TelemetryHolder;->telemetry:Lorg/mozilla/telemetry/Telemetry;

    return-object v0
.end method

.method public static set(Lorg/mozilla/telemetry/Telemetry;)V
    .locals 0
    .param p0, "telemetry"    # Lorg/mozilla/telemetry/Telemetry;

    .prologue
    .line 16
    sput-object p0, Lorg/mozilla/telemetry/TelemetryHolder;->telemetry:Lorg/mozilla/telemetry/Telemetry;

    .line 17
    return-void
.end method

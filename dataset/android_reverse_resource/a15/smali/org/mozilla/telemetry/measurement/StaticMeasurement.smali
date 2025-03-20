.class public Lorg/mozilla/telemetry/measurement/StaticMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "StaticMeasurement.java"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lorg/mozilla/telemetry/measurement/StaticMeasurement;->value:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/mozilla/telemetry/measurement/StaticMeasurement;->value:Ljava/lang/Object;

    return-object v0
.end method

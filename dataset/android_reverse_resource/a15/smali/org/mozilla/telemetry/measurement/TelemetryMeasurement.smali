.class public abstract Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.super Ljava/lang/Object;
.source "TelemetryMeasurement.java"


# instance fields
.field private final fieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;->fieldName:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract flush()Ljava/lang/Object;
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;->fieldName:Ljava/lang/String;

    return-object v0
.end method

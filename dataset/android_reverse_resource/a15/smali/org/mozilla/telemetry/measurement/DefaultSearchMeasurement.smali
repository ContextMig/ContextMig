.class public Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "DefaultSearchMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;
    }
.end annotation


# instance fields
.field private provider:Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "defaultSearch"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;->provider:Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;

    if-nez v1, :cond_1

    .line 29
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    iget-object v1, p0, Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;->provider:Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;

    invoke-interface {v1}, Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;->getDefaultSearchEngineIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "identifier":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDefaultSearchEngineProvider(Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;)V
    .locals 0
    .param p1, "provider"    # Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;->provider:Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;

    .line 24
    return-void
.end method

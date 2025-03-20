.class public Lorg/mozilla/telemetry/measurement/SettingsMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "SettingsMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;,
        Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;
    }
.end annotation


# instance fields
.field private final configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 76
    const-string v0, "settings"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 79
    return-void
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 83
    iget-object v5, p0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v5}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSettingsProvider()Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;

    move-result-object v4

    .line 84
    .local v4, "settingsProvider":Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;
    iget-object v5, p0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-interface {v4, v5}, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;->update(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .local v2, "object":Lorg/json/JSONObject;
    iget-object v5, p0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v5}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getPreferencesImportantForTelemetry()Ljava/util/Set;

    move-result-object v3

    .line 89
    .local v3, "preferenceKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    :goto_0
    return-object v2

    .line 93
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-interface {v4, v1}, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 96
    invoke-interface {v4, v1}, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Preference value can\'t be serialized to JSON"

    invoke-direct {v5, v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 98
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 105
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;->release()V

    goto :goto_0
.end method

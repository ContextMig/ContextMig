.class public Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;
.super Ljava/lang/Object;
.source "SettingsMeasurement.java"

# interfaces
.implements Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/telemetry/measurement/SettingsMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedPreferenceSettingsProvider"
.end annotation


# instance fields
.field private preferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;->preferences:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;->preferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;->preferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;->preferences:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public update(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SharedPreferenceSettingsProvider;->preferences:Ljava/util/Map;

    .line 53
    return-void
.end method

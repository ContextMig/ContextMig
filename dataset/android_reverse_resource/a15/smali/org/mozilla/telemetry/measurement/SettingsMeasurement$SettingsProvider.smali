.class public interface abstract Lorg/mozilla/telemetry/measurement/SettingsMeasurement$SettingsProvider;
.super Ljava/lang/Object;
.source "SettingsMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/telemetry/measurement/SettingsMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingsProvider"
.end annotation


# virtual methods
.method public abstract containsKey(Ljava/lang/String;)Z
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract release()V
.end method

.method public abstract update(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
.end method

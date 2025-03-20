.class public interface abstract Lorg/mozilla/telemetry/storage/TelemetryStorage;
.super Ljava/lang/Object;
.source "TelemetryStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/telemetry/storage/TelemetryStorage$TelemetryStorageCallback;
    }
.end annotation


# virtual methods
.method public abstract countStoredPings(Ljava/lang/String;)I
.end method

.method public abstract process(Ljava/lang/String;Lorg/mozilla/telemetry/storage/TelemetryStorage$TelemetryStorageCallback;)Z
.end method

.method public abstract store(Lorg/mozilla/telemetry/ping/TelemetryPing;)V
.end method

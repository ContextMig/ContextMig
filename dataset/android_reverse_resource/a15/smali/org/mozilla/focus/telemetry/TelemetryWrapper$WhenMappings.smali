.class public final synthetic Lorg/mozilla/focus/telemetry/TelemetryWrapper$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->values()[Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->SETTINGS:Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->QUICK_ADD:Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method

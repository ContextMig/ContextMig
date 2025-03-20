.class public final synthetic Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->values()[Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->Link:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->Image:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->ImageWithLink:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    invoke-virtual {v1}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method

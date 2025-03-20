.class public final enum Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;
.super Ljava/lang/Enum;
.source "TelemetryWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/telemetry/TelemetryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoCompleteEventSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

.field public static final enum QUICK_ADD:Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

.field public static final enum SETTINGS:Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    new-instance v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    const-string v2, "SETTINGS"

    invoke-direct {v1, v2, v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->SETTINGS:Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    aput-object v1, v0, v3

    new-instance v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    const-string v2, "QUICK_ADD"

    invoke-direct {v1, v2, v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->QUICK_ADD:Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    aput-object v1, v0, v4

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->$VALUES:[Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 718
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;
    .locals 1

    const-class v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    return-object v0
.end method

.method public static values()[Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;
    .locals 1

    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->$VALUES:[Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    invoke-virtual {v0}, [Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/focus/telemetry/TelemetryWrapper$AutoCompleteEventSource;

    return-object v0
.end method

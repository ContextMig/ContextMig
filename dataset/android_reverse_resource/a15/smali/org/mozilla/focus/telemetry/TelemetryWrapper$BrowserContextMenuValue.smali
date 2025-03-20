.class public final enum Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;
.super Ljava/lang/Enum;
.source "TelemetryWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/telemetry/TelemetryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowserContextMenuValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

.field public static final enum Image:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

.field public static final enum ImageWithLink:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

.field public static final enum Link:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    new-instance v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    const-string v2, "Link"

    invoke-direct {v1, v2, v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->Link:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    aput-object v1, v0, v3

    new-instance v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    const-string v2, "Image"

    invoke-direct {v1, v2, v4}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->Image:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    aput-object v1, v0, v4

    new-instance v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    const-string v2, "ImageWithLink"

    invoke-direct {v1, v2, v5}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->ImageWithLink:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    aput-object v1, v0, v5

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->$VALUES:[Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

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
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;
    .locals 1

    const-class v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    return-object v0
.end method

.method public static values()[Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;
    .locals 1

    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->$VALUES:[Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    invoke-virtual {v0}, [Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 175
    :pswitch_0
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getLINK()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 176
    :pswitch_1
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getIMAGE()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_2
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;

    invoke-virtual {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Value;->getIMAGE_WITH_LINK()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

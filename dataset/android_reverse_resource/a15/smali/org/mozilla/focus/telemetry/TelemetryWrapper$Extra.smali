.class final Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;
.super Ljava/lang/Object;
.source "TelemetryWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/telemetry/TelemetryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Extra"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final AUTOCOMPLETE:Ljava/lang/String; = "autocomplete"

# The value of this static final field might be set in the static constructor
.field private static final AVERAGE:Ljava/lang/String; = "average"

# The value of this static final field might be set in the static constructor
.field private static final ERROR_CODE:Ljava/lang/String; = "error_code"

# The value of this static final field might be set in the static constructor
.field private static final FROM:Ljava/lang/String; = "from"

# The value of this static final field might be set in the static constructor
.field private static final HIGHLIGHTED:Ljava/lang/String; = "highlighted"

.field public static final INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

# The value of this static final field might be set in the static constructor
.field private static final SELECTED:Ljava/lang/String; = "selected"

# The value of this static final field might be set in the static constructor
.field private static final SOURCE:Ljava/lang/String; = "source"

# The value of this static final field might be set in the static constructor
.field private static final SUCCESS:Ljava/lang/String; = "success"

# The value of this static final field might be set in the static constructor
.field private static final TO:Ljava/lang/String; = "to"

# The value of this static final field might be set in the static constructor
.field private static final TOTAL:Ljava/lang/String; = "total"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    invoke-direct {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;-><init>()V

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;

    .line 159
    const-string v0, "from"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->FROM:Ljava/lang/String;

    .line 160
    const-string v0, "to"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->TO:Ljava/lang/String;

    .line 161
    const-string v0, "total"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->TOTAL:Ljava/lang/String;

    .line 162
    const-string v0, "selected"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->SELECTED:Ljava/lang/String;

    .line 163
    const-string v0, "highlighted"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->HIGHLIGHTED:Ljava/lang/String;

    .line 164
    const-string v0, "autocomplete"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->AUTOCOMPLETE:Ljava/lang/String;

    .line 165
    const-string v0, "source"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->SOURCE:Ljava/lang/String;

    .line 166
    const-string v0, "success"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->SUCCESS:Ljava/lang/String;

    .line 167
    const-string v0, "error_code"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->ERROR_CODE:Ljava/lang/String;

    .line 168
    const-string v0, "average"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->AVERAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAUTOCOMPLETE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->AUTOCOMPLETE:Ljava/lang/String;

    return-object v0
.end method

.method public final getAVERAGE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->AVERAGE:Ljava/lang/String;

    return-object v0
.end method

.method public final getERROR_CODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->ERROR_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public final getFROM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->FROM:Ljava/lang/String;

    return-object v0
.end method

.method public final getHIGHLIGHTED()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->HIGHLIGHTED:Ljava/lang/String;

    return-object v0
.end method

.method public final getSELECTED()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->SELECTED:Ljava/lang/String;

    return-object v0
.end method

.method public final getSOURCE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->SOURCE:Ljava/lang/String;

    return-object v0
.end method

.method public final getSUCCESS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->SUCCESS:Ljava/lang/String;

    return-object v0
.end method

.method public final getTO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->TO:Ljava/lang/String;

    return-object v0
.end method

.method public final getTOTAL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Extra;->TOTAL:Ljava/lang/String;

    return-object v0
.end method

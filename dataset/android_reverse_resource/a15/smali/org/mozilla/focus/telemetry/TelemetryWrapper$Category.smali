.class final Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;
.super Ljava/lang/Object;
.source "TelemetryWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/telemetry/TelemetryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Category"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final ACTION:Ljava/lang/String; = "action"

# The value of this static final field might be set in the static constructor
.field private static final ERROR:Ljava/lang/String; = "error"

.field public static final INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    invoke-direct {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;-><init>()V

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;

    .line 63
    const-string v0, "action"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->ACTION:Ljava/lang/String;

    .line 64
    const-string v0, "error"

    sput-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->ERROR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getACTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->ACTION:Ljava/lang/String;

    return-object v0
.end method

.method public final getERROR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$Category;->ERROR:Ljava/lang/String;

    return-object v0
.end method

.class public Lorg/mozilla/telemetry/event/TelemetryEvent;
.super Ljava/lang/Object;
.source "TelemetryEvent.java"


# static fields
.field private static final startTime:J


# instance fields
.field private final category:Ljava/lang/String;

.field private final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final object:Ljava/lang/String;

.field private final timestamp:J

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lorg/mozilla/telemetry/event/TelemetryEvent;->startTime:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x14

    const/4 v6, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lorg/mozilla/telemetry/event/TelemetryEvent;->startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->timestamp:J

    .line 99
    const/16 v0, 0x1e

    invoke-static {p1, v6, v0}, Lorg/mozilla/telemetry/util/StringUtils;->safeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->category:Ljava/lang/String;

    .line 100
    invoke-static {p2, v6, v7}, Lorg/mozilla/telemetry/util/StringUtils;->safeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->method:Ljava/lang/String;

    .line 101
    if-nez p3, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->object:Ljava/lang/String;

    .line 102
    if-nez p4, :cond_1

    :goto_1
    iput-object v1, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->value:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->extras:Ljava/util/Map;

    .line 104
    return-void

    .line 101
    :cond_0
    invoke-static {p3, v6, v7}, Lorg/mozilla/telemetry/util/StringUtils;->safeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    const/16 v0, 0x50

    invoke-static {p4, v6, v0}, Lorg/mozilla/telemetry/util/StringUtils;->safeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lorg/mozilla/telemetry/event/TelemetryEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/mozilla/telemetry/event/TelemetryEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Lorg/mozilla/telemetry/event/TelemetryEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mozilla/telemetry/event/TelemetryEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public extra(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/event/TelemetryEvent;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->extras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exceeding limit of 10 extra keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->extras:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {p1, v3, v1}, Lorg/mozilla/telemetry/util/StringUtils;->safeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    .line 112
    invoke-static {p2, v3, v2}, Lorg/mozilla/telemetry/util/StringUtils;->safeSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object p0
.end method

.method public queue()V
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lorg/mozilla/telemetry/TelemetryHolder;->get()Lorg/mozilla/telemetry/Telemetry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/telemetry/Telemetry;->queueEvent(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/Telemetry;

    .line 122
    return-void
.end method

.method public toJSON()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 131
    .local v0, "array":Lorg/json/JSONArray;
    iget-wide v2, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 132
    iget-object v1, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    iget-object v1, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 134
    iget-object v1, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->object:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 136
    iget-object v1, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->extras:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->extras:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    iget-object v1, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 145
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/mozilla/telemetry/event/TelemetryEvent;->extras:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 148
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

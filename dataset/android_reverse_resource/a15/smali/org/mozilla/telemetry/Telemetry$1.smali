.class Lorg/mozilla/telemetry/Telemetry$1;
.super Ljava/lang/Object;
.source "Telemetry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/telemetry/Telemetry;->queuePing(Ljava/lang/String;)Lorg/mozilla/telemetry/Telemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/telemetry/Telemetry;

.field final synthetic val$pingType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/mozilla/telemetry/Telemetry;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/telemetry/Telemetry;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/mozilla/telemetry/Telemetry$1;->this$0:Lorg/mozilla/telemetry/Telemetry;

    iput-object p2, p0, Lorg/mozilla/telemetry/Telemetry$1;->val$pingType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    iget-object v2, p0, Lorg/mozilla/telemetry/Telemetry$1;->this$0:Lorg/mozilla/telemetry/Telemetry;

    invoke-static {v2}, Lorg/mozilla/telemetry/Telemetry;->access$000(Lorg/mozilla/telemetry/Telemetry;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/telemetry/Telemetry$1;->val$pingType:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;

    .line 64
    .local v1, "pingBuilder":Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
    invoke-virtual {v1}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->canBuild()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {v1}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->build()Lorg/mozilla/telemetry/ping/TelemetryPing;

    move-result-object v0

    .line 72
    .local v0, "ping":Lorg/mozilla/telemetry/ping/TelemetryPing;
    iget-object v2, p0, Lorg/mozilla/telemetry/Telemetry$1;->this$0:Lorg/mozilla/telemetry/Telemetry;

    invoke-static {v2}, Lorg/mozilla/telemetry/Telemetry;->access$100(Lorg/mozilla/telemetry/Telemetry;)Lorg/mozilla/telemetry/storage/TelemetryStorage;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/mozilla/telemetry/storage/TelemetryStorage;->store(Lorg/mozilla/telemetry/ping/TelemetryPing;)V

    goto :goto_0
.end method

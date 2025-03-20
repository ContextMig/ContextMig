.class Lorg/mozilla/telemetry/Telemetry$2;
.super Ljava/lang/Object;
.source "Telemetry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/telemetry/Telemetry;->queueEvent(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/Telemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/telemetry/Telemetry;

.field final synthetic val$event:Lorg/mozilla/telemetry/event/TelemetryEvent;


# direct methods
.method constructor <init>(Lorg/mozilla/telemetry/Telemetry;Lorg/mozilla/telemetry/event/TelemetryEvent;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/telemetry/Telemetry;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/mozilla/telemetry/Telemetry$2;->this$0:Lorg/mozilla/telemetry/Telemetry;

    iput-object p2, p0, Lorg/mozilla/telemetry/Telemetry$2;->val$event:Lorg/mozilla/telemetry/event/TelemetryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 90
    iget-object v4, p0, Lorg/mozilla/telemetry/Telemetry$2;->this$0:Lorg/mozilla/telemetry/Telemetry;

    invoke-static {v4}, Lorg/mozilla/telemetry/Telemetry;->access$000(Lorg/mozilla/telemetry/Telemetry;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "mobile-event"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;

    .line 91
    .local v3, "mobileEventBuilder":Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
    iget-object v4, p0, Lorg/mozilla/telemetry/Telemetry$2;->this$0:Lorg/mozilla/telemetry/Telemetry;

    invoke-static {v4}, Lorg/mozilla/telemetry/Telemetry;->access$000(Lorg/mozilla/telemetry/Telemetry;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "focus-event"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;

    .line 94
    .local v1, "focusEventBuilder":Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 95
    check-cast v4, Lorg/mozilla/telemetry/ping/TelemetryMobileEventPingBuilder;

    invoke-virtual {v4}, Lorg/mozilla/telemetry/ping/TelemetryMobileEventPingBuilder;->getEventsMeasurement()Lorg/mozilla/telemetry/measurement/EventsMeasurement;

    move-result-object v2

    .line 96
    .local v2, "measurement":Lorg/mozilla/telemetry/measurement/EventsMeasurement;
    invoke-virtual {v3}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->getType()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "addedPingType":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lorg/mozilla/telemetry/Telemetry$2;->val$event:Lorg/mozilla/telemetry/event/TelemetryEvent;

    invoke-virtual {v2, v4}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->add(Lorg/mozilla/telemetry/event/TelemetryEvent;)V

    .line 106
    invoke-virtual {v2}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->getEventCount()J

    move-result-wide v4

    iget-object v6, p0, Lorg/mozilla/telemetry/Telemetry$2;->this$0:Lorg/mozilla/telemetry/Telemetry;

    invoke-static {v6}, Lorg/mozilla/telemetry/Telemetry;->access$200(Lorg/mozilla/telemetry/Telemetry;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getMaximumNumberOfEventsPerPing()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 107
    iget-object v4, p0, Lorg/mozilla/telemetry/Telemetry$2;->this$0:Lorg/mozilla/telemetry/Telemetry;

    invoke-virtual {v4, v0}, Lorg/mozilla/telemetry/Telemetry;->queuePing(Ljava/lang/String;)Lorg/mozilla/telemetry/Telemetry;

    .line 109
    :cond_0
    return-void

    .line 97
    .end local v0    # "addedPingType":Ljava/lang/String;
    .end local v2    # "measurement":Lorg/mozilla/telemetry/measurement/EventsMeasurement;
    :cond_1
    if-eqz v1, :cond_2

    move-object v4, v1

    .line 98
    check-cast v4, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;

    invoke-virtual {v4}, Lorg/mozilla/telemetry/ping/TelemetryEventPingBuilder;->getEventsMeasurement()Lorg/mozilla/telemetry/measurement/EventsMeasurement;

    move-result-object v2

    .line 99
    .restart local v2    # "measurement":Lorg/mozilla/telemetry/measurement/EventsMeasurement;
    invoke-virtual {v1}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->getType()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "addedPingType":Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v0    # "addedPingType":Ljava/lang/String;
    .end local v2    # "measurement":Lorg/mozilla/telemetry/measurement/EventsMeasurement;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Expect either TelemetryEventPingBuilder or TelemetryMobileEventPingBuilder to be added to queue events"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

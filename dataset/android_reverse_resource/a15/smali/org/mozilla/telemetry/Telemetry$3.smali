.class Lorg/mozilla/telemetry/Telemetry$3;
.super Ljava/lang/Object;
.source "Telemetry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/telemetry/Telemetry;->scheduleUpload()Lorg/mozilla/telemetry/Telemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/telemetry/Telemetry;


# direct methods
.method constructor <init>(Lorg/mozilla/telemetry/Telemetry;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/telemetry/Telemetry;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/mozilla/telemetry/Telemetry$3;->this$0:Lorg/mozilla/telemetry/Telemetry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry$3;->this$0:Lorg/mozilla/telemetry/Telemetry;

    invoke-static {v0}, Lorg/mozilla/telemetry/Telemetry;->access$300(Lorg/mozilla/telemetry/Telemetry;)Lorg/mozilla/telemetry/schedule/TelemetryScheduler;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry$3;->this$0:Lorg/mozilla/telemetry/Telemetry;

    invoke-static {v1}, Lorg/mozilla/telemetry/Telemetry;->access$200(Lorg/mozilla/telemetry/Telemetry;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mozilla/telemetry/schedule/TelemetryScheduler;->scheduleUpload(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V

    .line 128
    return-void
.end method

.class Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;
.super Ljava/lang/Object;
.source "TelemetryJobService.java"

# interfaces
.implements Lorg/mozilla/telemetry/storage/TelemetryStorage$TelemetryStorageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->performPingUpload(Lorg/mozilla/telemetry/Telemetry;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;

.field final synthetic val$client:Lorg/mozilla/telemetry/net/TelemetryClient;

.field final synthetic val$configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

.field final synthetic val$pingType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;Lorg/mozilla/telemetry/net/TelemetryClient;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->this$0:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;

    iput-object p2, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->val$configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    iput-object p3, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->val$pingType:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->val$client:Lorg/mozilla/telemetry/net/TelemetryClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTelemetryPingLoaded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "serializedPing"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->this$0:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;

    iget-object v1, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->val$configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    iget-object v2, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->val$pingType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->access$100(Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->val$client:Lorg/mozilla/telemetry/net/TelemetryClient;

    iget-object v1, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->val$configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 151
    invoke-interface {v0, v1, p1, p2}, Lorg/mozilla/telemetry/net/TelemetryClient;->uploadPing(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->this$0:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;

    iget-object v1, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->val$configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    iget-object v2, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;->val$pingType:Ljava/lang/String;

    .line 152
    invoke-static {v0, v1, v2}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->access$200(Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

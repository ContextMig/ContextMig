.class Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;
.super Landroid/os/AsyncTask;
.source "TelemetryJobService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadPingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/app/job/JobParameters;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;


# direct methods
.method private constructor <init>(Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;->this$0:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;
    .param p2, "x1"    # Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;-><init>(Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;->doInBackground([Landroid/app/job/JobParameters;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/app/job/JobParameters;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Landroid/app/job/JobParameters;

    .prologue
    .line 51
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 52
    .local v0, "parameters":Landroid/app/job/JobParameters;
    iget-object v1, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;->this$0:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;

    invoke-virtual {v1, p0, v0}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->uploadPingsInBackground(Landroid/os/AsyncTask;Landroid/app/job/JobParameters;)V

    .line 53
    const/4 v1, 0x0

    return-object v1
.end method

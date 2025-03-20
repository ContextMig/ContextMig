.class public Lorg/mozilla/telemetry/schedule/jobscheduler/JobSchedulerTelemetryScheduler;
.super Ljava/lang/Object;
.source "JobSchedulerTelemetryScheduler.java"

# interfaces
.implements Lorg/mozilla/telemetry/schedule/TelemetryScheduler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scheduleUpload(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 7
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    const/4 v6, 0x1

    .line 24
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v1, "jobService":Landroid/content/ComponentName;
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    const/16 v4, 0x2a

    invoke-direct {v3, v4, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 27
    invoke-virtual {v3, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 29
    invoke-virtual {p1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getInitialBackoffForUpload()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 32
    .local v0, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {p1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "jobscheduler"

    .line 33
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 35
    .local v2, "scheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v2, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 36
    return-void
.end method

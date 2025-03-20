.class public Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;
.super Landroid/app/job/JobService;
.source "TelemetryJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;
    }
.end annotation


# instance fields
.field private uploadTask:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;
    .param p1, "x1"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->hasReachedUploadLimit(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;
    .param p1, "x1"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->incrementUploadCount(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasReachedUploadLimit(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;)Z
    .locals 10
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .param p2, "pingType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 117
    invoke-virtual {p1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 119
    .local v4, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last_uploade_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 120
    .local v2, "lastUpload":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload_count_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 122
    .local v0, "count":J
    invoke-virtual {p0}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->now()J

    move-result-wide v6

    invoke-virtual {p0, v2, v3, v6, v7}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->isSameDay(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    invoke-virtual {p1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getMaximumNumberOfPingUploadsPerDay()I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    .line 122
    :goto_0
    return v5

    .line 123
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private incrementUploadCount(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;)Z
    .locals 12
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .param p2, "pingType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x1

    const-wide/16 v10, 0x0

    .line 96
    invoke-virtual {p1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 98
    .local v6, "preferences":Landroid/content/SharedPreferences;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "last_uploade_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 99
    .local v2, "lastUpload":J
    invoke-virtual {p0}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->now()J

    move-result-wide v4

    .line 101
    .local v4, "now":J
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->isSameDay(JJ)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload_count_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-interface {v6, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 105
    .local v0, "count":J
    :cond_0
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_uploade_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-interface {v7, v8, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "upload_count_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-interface {v7, v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 108
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    const/4 v7, 0x1

    return v7
.end method

.method private performPingUpload(Lorg/mozilla/telemetry/Telemetry;Ljava/lang/String;)Z
    .locals 4
    .param p1, "telemetry"    # Lorg/mozilla/telemetry/Telemetry;
    .param p2, "pingType"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p1}, Lorg/mozilla/telemetry/Telemetry;->getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v1

    .line 144
    .local v1, "configuration":Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    invoke-virtual {p1}, Lorg/mozilla/telemetry/Telemetry;->getStorage()Lorg/mozilla/telemetry/storage/TelemetryStorage;

    move-result-object v2

    .line 145
    .local v2, "storage":Lorg/mozilla/telemetry/storage/TelemetryStorage;
    invoke-virtual {p1}, Lorg/mozilla/telemetry/Telemetry;->getClient()Lorg/mozilla/telemetry/net/TelemetryClient;

    move-result-object v0

    .line 147
    .local v0, "client":Lorg/mozilla/telemetry/net/TelemetryClient;
    new-instance v3, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;

    invoke-direct {v3, p0, v1, p2, v0}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;-><init>(Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;Lorg/mozilla/telemetry/net/TelemetryClient;)V

    invoke-interface {v2, p2, v3}, Lorg/mozilla/telemetry/storage/TelemetryStorage;->process(Ljava/lang/String;Lorg/mozilla/telemetry/storage/TelemetryStorage$TelemetryStorageCallback;)Z

    move-result v3

    return v3
.end method


# virtual methods
.method isSameDay(JJ)Z
    .locals 7
    .param p1, "timestamp1"    # J
    .param p3, "timestamp2"    # J

    .prologue
    const/4 v6, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 131
    .local v1, "calendar2":Ljava/util/Calendar;
    invoke-virtual {v1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 133
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 134
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 135
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 133
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 135
    goto :goto_0
.end method

.method now()J
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v3, 0x1

    .line 34
    new-instance v0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;-><init>(Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$1;)V

    iput-object v0, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->uploadTask:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;

    .line 35
    iget-object v0, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->uploadTask:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;

    new-array v1, v3, [Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v1, 0x1

    .line 41
    iget-object v0, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->uploadTask:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->uploadTask:Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;

    invoke-virtual {v0, v1}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService$UploadPingsTask;->cancel(Z)Z

    .line 44
    :cond_0
    return v1
.end method

.method public uploadPingsInBackground(Landroid/os/AsyncTask;Landroid/app/job/JobParameters;)V
    .locals 10
    .param p1, "task"    # Landroid/os/AsyncTask;
    .param p2, "parameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-static {}, Lorg/mozilla/telemetry/TelemetryHolder;->get()Lorg/mozilla/telemetry/Telemetry;

    move-result-object v4

    .line 59
    .local v4, "telemetry":Lorg/mozilla/telemetry/Telemetry;
    invoke-virtual {v4}, Lorg/mozilla/telemetry/Telemetry;->getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    move-result-object v1

    .line 60
    .local v1, "configuration":Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    invoke-virtual {v4}, Lorg/mozilla/telemetry/Telemetry;->getStorage()Lorg/mozilla/telemetry/storage/TelemetryStorage;

    move-result-object v3

    .line 62
    .local v3, "storage":Lorg/mozilla/telemetry/storage/TelemetryStorage;
    invoke-virtual {v4}, Lorg/mozilla/telemetry/Telemetry;->getBuilders()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;

    .line 63
    .local v0, "builder":Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
    invoke-virtual {v0}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->getType()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "pingType":Ljava/lang/String;
    const-string v7, "TelemetryJobService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Performing upload of ping type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    const-string v5, "TelemetryJobService"

    const-string v6, "Job stopped. Exiting."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "builder":Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
    .end local v2    # "pingType":Ljava/lang/String;
    :goto_1
    return-void

    .line 71
    .restart local v0    # "builder":Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
    .restart local v2    # "pingType":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v2}, Lorg/mozilla/telemetry/storage/TelemetryStorage;->countStoredPings(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 72
    const-string v7, "TelemetryJobService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No pings of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to upload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_2
    invoke-direct {p0, v1, v2}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->hasReachedUploadLimit(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 77
    const-string v7, "TelemetryJobService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Daily upload limit for type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reached"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_3
    invoke-direct {p0, v4, v2}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->performPingUpload(Lorg/mozilla/telemetry/Telemetry;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 82
    const-string v6, "TelemetryJobService"

    const-string v7, "Upload aborted. Rescheduling job if limit not reached."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0, v1, v2}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->hasReachedUploadLimit(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual {p0, p2, v5}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_1

    .line 88
    .end local v0    # "builder":Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;
    .end local v2    # "pingType":Ljava/lang/String;
    :cond_5
    const-string v6, "TelemetryJobService"

    const-string v7, "All uploads performed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0, p2, v5}, Lorg/mozilla/telemetry/schedule/jobscheduler/TelemetryJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_1
.end method

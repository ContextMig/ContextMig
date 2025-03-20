.class public Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
.super Ljava/lang/Object;
.source "TracingPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/power/TracingPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TracingWakeLock"
.end annotation


# instance fields
.field final id:I

.field volatile startTime:Ljava/lang/Long;

.field final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/mail/power/TracingPowerManager;

.field volatile timeout:Ljava/lang/Long;

.field volatile timerTask:Ljava/util/TimerTask;

.field final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/power/TracingPowerManager;ILjava/lang/String;)V
    .locals 4
    .param p1, "this$0"    # Lcom/fsck/k9/mail/power/TracingPowerManager;
    .param p2, "flags"    # I
    .param p3, "ntag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-object p1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->this$0:Lcom/fsck/k9/mail/power/TracingPowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    .line 52
    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    .line 54
    iput-object p3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/fsck/k9/mail/power/TracingPowerManager;->pm:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    sget-object v0, Lcom/fsck/k9/mail/power/TracingPowerManager;->wakeLockId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->id:I

    .line 57
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "TracingWakeLock for tag %s / id %d: Create"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->this$0:Lcom/fsck/k9/mail/power/TracingPowerManager;

    invoke-static {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager;->access$000(Lcom/fsck/k9/mail/power/TracingPowerManager;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->this$0:Lcom/fsck/k9/mail/power/TracingPowerManager;

    invoke-static {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager;->access$000(Lcom/fsck/k9/mail/power/TracingPowerManager;)Ljava/util/Timer;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 117
    :cond_0
    monitor-exit v1

    .line 119
    :cond_1
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private raiseNotification()V
    .locals 7

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->this$0:Lcom/fsck/k9/mail/power/TracingPowerManager;

    invoke-static {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager;->access$000(Lcom/fsck/k9/mail/power/TracingPowerManager;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->this$0:Lcom/fsck/k9/mail/power/TracingPowerManager;

    invoke-static {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager;->access$000(Lcom/fsck/k9/mail/power/TracingPowerManager;)Ljava/util/Timer;

    move-result-object v6

    monitor-enter v6

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timerTask:Ljava/util/TimerTask;

    .line 127
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock$1;-><init>(Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timerTask:Ljava/util/TimerTask;

    .line 142
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->this$0:Lcom/fsck/k9/mail/power/TracingPowerManager;

    invoke-static {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager;->access$000(Lcom/fsck/k9/mail/power/TracingPowerManager;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 143
    monitor-exit v6

    .line 145
    :cond_1
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public acquire()V
    .locals 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-direct {p0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->raiseNotification()V

    .line 79
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "TracingWakeLock for tag %s / id %d: acquired with no timeout.  K-9 Mail should not do this"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->id:I

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    .line 86
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    .line 87
    return-void

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public acquire(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 62
    iget-object v1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "TracingWakeLock for tag %s / id %d for %d ms: acquired"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->raiseNotification()V

    .line 69
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    .line 72
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    .line 73
    return-void

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    iget-object v1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 96
    .local v0, "endTime":Ljava/lang/Long;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "TracingWakeLock for tag %s / id %d: releasing after %d ms, timeout = %d ms"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->id:I

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    aput-object v3, v2, v9

    .line 97
    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .end local v0    # "endTime":Ljava/lang/Long;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->cancelNotification()V

    .line 106
    iget-object v2, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 108
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->startTime:Ljava/lang/Long;

    .line 110
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "TracingWakeLock for tag %s / id %d, timeout = %d ms: releasing"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->tag:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->timeout:Ljava/lang/Long;

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setReferenceCounted(Z)V
    .locals 2
    .param p1, "counted"    # Z

    .prologue
    .line 89
    iget-object v1, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

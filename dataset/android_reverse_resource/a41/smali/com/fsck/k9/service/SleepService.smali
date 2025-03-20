.class public Lcom/fsck/k9/service/SleepService;
.super Lcom/fsck/k9/service/CoreService;
.source "SleepService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/service/SleepService$SleepDatum;
    }
.end annotation


# static fields
.field private static ALARM_FIRED:Ljava/lang/String;

.field private static LATCH_ID:Ljava/lang/String;

.field private static latchId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sleepData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/service/SleepService$SleepDatum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "com.fsck.k9.service.SleepService.ALARM_FIRED"

    sput-object v0, Lcom/fsck/k9/service/SleepService;->ALARM_FIRED:Ljava/lang/String;

    .line 22
    const-string v0, "com.fsck.k9.service.SleepService.LATCH_ID_EXTRA"

    sput-object v0, Lcom/fsck/k9/service/SleepService;->LATCH_ID:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/service/SleepService;->sleepData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/fsck/k9/service/SleepService;->latchId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V

    return-void
.end method

.method private static endSleep(Ljava/lang/Integer;)V
    .locals 6
    .param p0, "id"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 90
    sget-object v2, Lcom/fsck/k9/service/SleepService;->sleepData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/service/SleepService$SleepDatum;

    .line 91
    .local v1, "sleepDatum":Lcom/fsck/k9/service/SleepService$SleepDatum;
    if-eqz v1, :cond_2

    .line 92
    iget-object v0, v1, Lcom/fsck/k9/service/SleepService$SleepDatum;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 93
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_1

    .line 94
    const-string v2, "SleepService No CountDownLatch available with id = %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :goto_0
    invoke-static {v1}, Lcom/fsck/k9/service/SleepService;->reacquireWakeLock(Lcom/fsck/k9/service/SleepService$SleepDatum;)V

    .line 100
    iget-object v2, v1, Lcom/fsck/k9/service/SleepService$SleepDatum;->reacquireLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 105
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v1    # "sleepDatum":Lcom/fsck/k9/service/SleepService$SleepDatum;
    :cond_0
    :goto_1
    return-void

    .line 96
    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v1    # "sleepDatum":Lcom/fsck/k9/service/SleepService$SleepDatum;
    :cond_1
    const-string v2, "SleepService Counting down CountDownLatch with id = %d"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 102
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_2
    const-string v2, "SleepService Sleep for id %d already finished"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static reacquireWakeLock(Lcom/fsck/k9/service/SleepService$SleepDatum;)V
    .locals 7
    .param p0, "sleepDatum"    # Lcom/fsck/k9/service/SleepService$SleepDatum;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/fsck/k9/service/SleepService$SleepDatum;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .line 109
    .local v2, "wakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    if-eqz v2, :cond_0

    .line 110
    monitor-enter v2

    .line 111
    :try_start_0
    iget-wide v0, p0, Lcom/fsck/k9/service/SleepService$SleepDatum;->timeout:J

    .line 112
    .local v0, "timeout":J
    const-string v3, "SleepService Acquiring wakeLock for %d ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v2, v0, v1}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 114
    monitor-exit v2

    .line 116
    .end local v0    # "timeout":J
    :cond_0
    return-void

    .line 114
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static sleep(Landroid/content/Context;JLcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;J)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sleepTime"    # J
    .param p3, "wakeLock"    # Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    .param p4, "wakeLockTimeout"    # J

    .prologue
    .line 30
    sget-object v17, Lcom/fsck/k9/service/SleepService;->latchId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 31
    .local v10, "id":Ljava/lang/Integer;
    const-string v17, "SleepService Preparing CountDownLatch with id = %d, thread %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const/16 v21, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v16, Lcom/fsck/k9/service/SleepService$SleepDatum;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/fsck/k9/service/SleepService$SleepDatum;-><init>(Lcom/fsck/k9/service/SleepService$1;)V

    .line 34
    .local v16, "sleepDatum":Lcom/fsck/k9/service/SleepService$SleepDatum;
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 35
    .local v12, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object/from16 v0, v16

    iput-object v12, v0, Lcom/fsck/k9/service/SleepService$SleepDatum;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 36
    new-instance v17, Ljava/util/concurrent/CountDownLatch;

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/fsck/k9/service/SleepService$SleepDatum;->reacquireLatch:Ljava/util/concurrent/CountDownLatch;

    .line 37
    sget-object v17, Lcom/fsck/k9/service/SleepService;->sleepData:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v7, Landroid/content/Intent;

    const-class v17, Lcom/fsck/k9/service/SleepService;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v7, "i":Landroid/content/Intent;
    sget-object v17, Lcom/fsck/k9/service/SleepService;->LATCH_ID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/fsck/k9/service/SleepService;->ALARM_FIRED:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 43
    .local v18, "startTime":J
    add-long v14, v18, p1

    .line 44
    .local v14, "nextTime":J
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15, v7}, Lcom/fsck/k9/service/BootReceiver;->scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V

    .line 45
    if-eqz p3, :cond_0

    .line 46
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/fsck/k9/service/SleepService$SleepDatum;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .line 47
    move-wide/from16 v0, p4

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/fsck/k9/service/SleepService$SleepDatum;->timeout:J

    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    .line 51
    :cond_0
    :try_start_0
    sget-object v17, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p1

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    .line 52
    .local v6, "countedDown":Z
    if-nez v6, :cond_1

    .line 53
    const-string v17, "SleepService latch timed out for id = %d, thread %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const/16 v21, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v6    # "countedDown":Z
    :cond_1
    :goto_0
    sget-object v17, Lcom/fsck/k9/service/SleepService;->sleepData:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/service/SleepService$SleepDatum;

    .line 59
    .local v13, "releaseDatum":Lcom/fsck/k9/service/SleepService$SleepDatum;
    if-nez v13, :cond_3

    .line 61
    :try_start_1
    const-string v17, "SleepService waiting for reacquireLatch for id = %d, thread %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const/16 v21, 0x1

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 61
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/service/SleepService$SleepDatum;->reacquireLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v17, v0

    const-wide/16 v20, 0x1388

    sget-object v22, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 65
    const-string v17, "SleepService reacquireLatch timed out for id = %d, thread %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const/16 v21, 0x1

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 65
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 79
    .local v8, "endTime":J
    sub-long v4, v8, v18

    .line 81
    .local v4, "actualSleep":J
    cmp-long v17, v4, p1

    if-gez v17, :cond_4

    .line 82
    const-string v17, "SleepService sleep time too short: requested was %d, actual was %d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :goto_2
    return-void

    .line 55
    .end local v4    # "actualSleep":J
    .end local v8    # "endTime":J
    .end local v13    # "releaseDatum":Lcom/fsck/k9/service/SleepService$SleepDatum;
    :catch_0
    move-exception v11

    .line 56
    .local v11, "ie":Ljava/lang/InterruptedException;
    const-string v17, "SleepService Interrupted while awaiting latch"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v11, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 68
    .end local v11    # "ie":Ljava/lang/InterruptedException;
    .restart local v13    # "releaseDatum":Lcom/fsck/k9/service/SleepService$SleepDatum;
    :cond_2
    :try_start_2
    const-string v17, "SleepService reacquireLatch finished for id = %d, thread %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const/16 v21, 0x1

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 68
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 71
    :catch_1
    move-exception v11

    .line 72
    .restart local v11    # "ie":Ljava/lang/InterruptedException;
    const-string v17, "SleepService Interrupted while awaiting reacquireLatch"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v11, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 75
    .end local v11    # "ie":Ljava/lang/InterruptedException;
    :cond_3
    invoke-static {v13}, Lcom/fsck/k9/service/SleepService;->reacquireWakeLock(Lcom/fsck/k9/service/SleepService$SleepDatum;)V

    goto :goto_1

    .line 84
    .restart local v4    # "actualSleep":J
    .restart local v8    # "endTime":J
    :cond_4
    const-string v17, "SleepService requested sleep time was %d, actual was %d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public startService(Landroid/content/Intent;I)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fsck/k9/service/SleepService;->ALARM_FIRED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/fsck/k9/service/SleepService;->LATCH_ID:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 123
    .local v0, "id":Ljava/lang/Integer;
    invoke-static {v0}, Lcom/fsck/k9/service/SleepService;->endSleep(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_0
    const/4 v1, 0x2

    .line 128
    invoke-virtual {p0, p2}, Lcom/fsck/k9/service/SleepService;->stopSelf(I)V

    .line 125
    return v1

    .line 128
    :catchall_0
    move-exception v1

    invoke-virtual {p0, p2}, Lcom/fsck/k9/service/SleepService;->stopSelf(I)V

    throw v1
.end method

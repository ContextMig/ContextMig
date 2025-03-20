.class public Lcom/fsck/k9/service/MailService;
.super Lcom/fsck/k9/service/CoreService;
.source "MailService.java"


# static fields
.field private static final ACTION_CANCEL:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_CANCEL"

.field private static final ACTION_CHECK_MAIL:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_WAKEUP"

.field private static final ACTION_REFRESH_PUSHERS:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_REFRESH_PUSHERS"

.field private static final ACTION_RESCHEDULE_POLL:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_RESCHEDULE_POLL"

.field private static final ACTION_RESET:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_RESET"

.field private static final ACTION_RESTART_PUSHERS:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_RESTART_PUSHERS"

.field private static final CANCEL_CONNECTIVITY_NOTICE:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_CANCEL_CONNECTIVITY_NOTICE"

.field private static final CONNECTIVITY_CHANGE:Ljava/lang/String; = "com.fsck.k9.intent.action.MAIL_SERVICE_CONNECTIVITY_CHANGE"

.field private static final LAST_CHECK_END:Ljava/lang/String; = "MailService.lastCheckEnd"

.field private static final PREVIOUS_INTERVAL:Ljava/lang/String; = "MailService.previousInterval"

.field private static nextCheck:J

.field private static pollingRequested:Z

.field private static pushingRequested:Z

.field private static syncBlocked:Z

.field private static syncNoBackground:Z

.field private static syncNoConnectivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/fsck/k9/service/MailService;->nextCheck:J

    .line 36
    sput-boolean v2, Lcom/fsck/k9/service/MailService;->pushingRequested:Z

    .line 37
    sput-boolean v2, Lcom/fsck/k9/service/MailService;->pollingRequested:Z

    .line 38
    sput-boolean v2, Lcom/fsck/k9/service/MailService;->syncNoBackground:Z

    .line 39
    sput-boolean v2, Lcom/fsck/k9/service/MailService;->syncNoConnectivity:Z

    .line 40
    sput-boolean v2, Lcom/fsck/k9/service/MailService;->syncBlocked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fsck/k9/service/CoreService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/service/MailService;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/service/MailService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/service/MailService;->reschedulePoll(ZZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/service/MailService;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/service/MailService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/service/MailService;->reschedulePushers(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/service/MailService;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/service/MailService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fsck/k9/service/MailService;->refreshPushers()V

    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/service/MailService;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/service/MailService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fsck/k9/service/MailService;->schedulePushers()V

    return-void
.end method

.method public static actionCancel(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeLockId"    # Ljava/lang/Integer;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/fsck/k9/service/MailService;->addWakeLockId(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;Z)V

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    return-void
.end method

.method public static actionReschedulePoll(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeLockId"    # Ljava/lang/Integer;

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_RESCHEDULE_POLL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/fsck/k9/service/MailService;->addWakeLockId(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;Z)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    return-void
.end method

.method public static actionReset(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeLockId"    # Ljava/lang/Integer;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_RESET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/fsck/k9/service/MailService;->addWakeLockId(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;Z)V

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    return-void
.end method

.method public static actionRestartPushers(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeLockId"    # Ljava/lang/Integer;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_RESTART_PUSHERS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/fsck/k9/service/MailService;->addWakeLockId(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;Z)V

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-static {p0, v0}, Lcom/fsck/k9/service/BootReceiver;->cancelIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public static connectivityChange(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeLockId"    # Ljava/lang/Integer;

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    const-string v1, "com.fsck.k9.intent.action.MAIL_SERVICE_CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/fsck/k9/service/MailService;->addWakeLockId(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;Z)V

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    return-void
.end method

.method public static getNextPollTime()J
    .locals 2

    .prologue
    .line 427
    sget-wide v0, Lcom/fsck/k9/service/MailService;->nextCheck:J

    return-wide v0
.end method

.method public static hasNoConnectivity()Z
    .locals 1

    .prologue
    .line 305
    sget-boolean v0, Lcom/fsck/k9/service/MailService;->syncNoConnectivity:Z

    return v0
.end method

.method public static isPollAndPushDisabled()Z
    .locals 1

    .prologue
    .line 317
    sget-boolean v0, Lcom/fsck/k9/service/MailService;->pollingRequested:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/fsck/k9/service/MailService;->pushingRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncBlocked()Z
    .locals 1

    .prologue
    .line 313
    sget-boolean v0, Lcom/fsck/k9/service/MailService;->syncBlocked:Z

    return v0
.end method

.method public static isSyncDisabled()Z
    .locals 1

    .prologue
    .line 301
    sget-boolean v0, Lcom/fsck/k9/service/MailService;->syncBlocked:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/fsck/k9/service/MailService;->pollingRequested:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/fsck/k9/service/MailService;->pushingRequested:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncNoBackground()Z
    .locals 1

    .prologue
    .line 309
    sget-boolean v0, Lcom/fsck/k9/service/MailService;->syncNoBackground:Z

    return v0
.end method

.method private refreshPushers()V
    .locals 16

    .prologue
    .line 359
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 360
    .local v4, "nowTime":J
    const-string v10, "Refreshing pushers"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fsck/k9/controller/MessagingController;->getPushers()Ljava/util/Collection;

    move-result-object v6

    .line 363
    .local v6, "pushers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/mail/Pusher;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Pusher;

    .line 364
    .local v1, "pusher":Lcom/fsck/k9/mail/Pusher;
    invoke-interface {v1}, Lcom/fsck/k9/mail/Pusher;->getLastRefresh()J

    move-result-wide v2

    .line 365
    .local v2, "lastRefresh":J
    invoke-interface {v1}, Lcom/fsck/k9/mail/Pusher;->getRefreshInterval()I

    move-result v7

    .line 366
    .local v7, "refreshInterval":I
    sub-long v8, v4, v2

    .line 367
    .local v8, "sinceLast":J
    const-wide/16 v12, 0x2710

    add-long/2addr v12, v8

    int-to-long v14, v7

    cmp-long v11, v12, v14

    if-lez v11, :cond_0

    .line 368
    const-string v11, "PUSHREFRESH: refreshing lastRefresh = %d, interval = %d, nowTime = %d, sinceLast = %d"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 370
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 371
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 372
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 373
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    .line 368
    invoke-static {v11, v12}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    invoke-interface {v1}, Lcom/fsck/k9/mail/Pusher;->refresh()V

    .line 376
    invoke-interface {v1, v4, v5}, Lcom/fsck/k9/mail/Pusher;->setLastRefresh(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    .end local v1    # "pusher":Lcom/fsck/k9/mail/Pusher;
    .end local v2    # "lastRefresh":J
    .end local v4    # "nowTime":J
    .end local v6    # "pushers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/mail/Pusher;>;"
    .end local v7    # "refreshInterval":I
    .end local v8    # "sinceLast":J
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "Exception while refreshing pushers"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0, v10, v11}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 378
    .restart local v1    # "pusher":Lcom/fsck/k9/mail/Pusher;
    .restart local v2    # "lastRefresh":J
    .restart local v4    # "nowTime":J
    .restart local v6    # "pushers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/mail/Pusher;>;"
    .restart local v7    # "refreshInterval":I
    .restart local v8    # "sinceLast":J
    :cond_0
    :try_start_1
    const-string v11, "PUSHREFRESH: NOT refreshing lastRefresh = %d, interval = %d, nowTime = %d, sinceLast = %d"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 380
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 381
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 382
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 383
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    .line 378
    invoke-static {v11, v12}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    .end local v1    # "pusher":Lcom/fsck/k9/mail/Pusher;
    .end local v2    # "lastRefresh":J
    .end local v7    # "refreshInterval":I
    .end local v8    # "sinceLast":J
    :cond_1
    const-string v10, "PUSHREFRESH:  trying to send mail in all folders!"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessages(Lcom/fsck/k9/controller/MessagingListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private refreshPushersInBackground(ZZLjava/lang/Integer;)V
    .locals 3
    .param p1, "hasConnectivity"    # Z
    .param p2, "doBackground"    # Z
    .param p3, "startId"    # Ljava/lang/Integer;

    .prologue
    .line 218
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/service/MailService$4;

    invoke-direct {v1, p0}, Lcom/fsck/k9/service/MailService$4;-><init>(Lcom/fsck/k9/service/MailService;)V

    const v2, 0xea60

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/fsck/k9/service/MailService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    .line 226
    :cond_0
    return-void
.end method

.method private rescheduleAllInBackground(ZZLjava/lang/Integer;)V
    .locals 3
    .param p1, "hasConnectivity"    # Z
    .param p2, "doBackground"    # Z
    .param p3, "startId"    # Ljava/lang/Integer;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/service/MailService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/service/MailService$1;-><init>(Lcom/fsck/k9/service/MailService;ZZ)V

    const v2, 0xea60

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/fsck/k9/service/MailService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    .line 193
    return-void
.end method

.method private reschedulePoll(ZZZ)V
    .locals 26
    .param p1, "hasConnectivity"    # Z
    .param p2, "doBackground"    # Z
    .param p3, "considerLastCheckEnd"    # Z

    .prologue
    .line 231
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 232
    :cond_0
    const-string v22, "No connectivity, canceling check for %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const-wide/16 v22, -0x1

    sput-wide v22, Lcom/fsck/k9/service/MailService;->nextCheck:J

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/service/MailService;->cancel()V

    .line 298
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v18

    .line 241
    .local v18, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v21

    .line 242
    .local v21, "storage":Lcom/fsck/k9/preferences/Storage;
    const-string v22, "MailService.previousInterval"

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 243
    .local v19, "previousInterval":I
    const-string v22, "MailService.lastCheckEnd"

    const-wide/16 v24, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/preferences/Storage;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 245
    .local v12, "lastCheckEnd":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 246
    .local v16, "now":J
    cmp-long v22, v12, v16

    if-lez v22, :cond_2

    .line 247
    const-string v22, "The database claims that the last time mail was checked was in the future (%tc). To try to get things back to normal, the last check time has been reset to: %tc"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 248
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    .line 247
    invoke-static/range {v22 .. v23}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    move-wide/from16 v12, v16

    .line 253
    :cond_2
    const/16 v20, -0x1

    .line 254
    .local v20, "shortestInterval":I
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Preferences;->getAvailableAccounts()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_3
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/Account;

    .line 255
    .local v4, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 256
    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getFolderSyncMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v23

    sget-object v24, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 257
    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 259
    :cond_4
    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v20

    goto :goto_1

    .line 262
    .end local v4    # "account":Lcom/fsck/k9/Account;
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v10

    .line 263
    .local v10, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    const-string v22, "MailService.previousInterval"

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 264
    invoke-virtual {v10}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 266
    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 267
    const-string v22, "No next check scheduled for package %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    const-wide/16 v22, -0x1

    sput-wide v22, Lcom/fsck/k9/service/MailService;->nextCheck:J

    .line 270
    const/16 v22, 0x0

    sput-boolean v22, Lcom/fsck/k9/service/MailService;->pollingRequested:Z

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/service/MailService;->cancel()V

    goto/16 :goto_0

    .line 273
    :cond_6
    const v22, 0xea60

    mul-int v22, v22, v20

    move/from16 v0, v22

    int-to-long v8, v0

    .line 274
    .local v8, "delay":J
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const-wide/16 v22, -0x1

    cmp-long v22, v12, v22

    if-eqz v22, :cond_7

    if-nez p3, :cond_8

    .line 275
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 276
    .local v6, "base":J
    :goto_2
    add-long v14, v6, v8

    .line 278
    .local v14, "nextTime":J
    const-string v22, "previousInterval = %d, shortestInterval = %d, lastCheckEnd = %tc, considerLastCheckEnd = %b"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 279
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 280
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 281
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    .line 282
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    .line 278
    invoke-static/range {v22 .. v23}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    sput-wide v14, Lcom/fsck/k9/service/MailService;->nextCheck:J

    .line 285
    const/16 v22, 0x1

    sput-boolean v22, Lcom/fsck/k9/service/MailService;->pollingRequested:Z

    .line 288
    :try_start_0
    const-string v22, "Next check for package %s scheduled for %tc"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_3
    new-instance v11, Landroid/content/Intent;

    const-class v22, Lcom/fsck/k9/service/MailService;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v11, "i":Landroid/content/Intent;
    const-string v22, "com.fsck.k9.intent.action.MAIL_SERVICE_WAKEUP"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15, v11}, Lcom/fsck/k9/service/BootReceiver;->scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V

    goto/16 :goto_0

    .end local v6    # "base":J
    .end local v11    # "i":Landroid/content/Intent;
    .end local v14    # "nextTime":J
    :cond_8
    move-wide v6, v12

    .line 275
    goto :goto_2

    .line 289
    .restart local v6    # "base":J
    .restart local v14    # "nextTime":J
    :catch_0
    move-exception v5

    .line 291
    .local v5, "e":Ljava/lang/Exception;
    const-string v22, "Exception while logging"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v5, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private reschedulePollInBackground(ZZLjava/lang/Integer;Z)V
    .locals 3
    .param p1, "hasConnectivity"    # Z
    .param p2, "doBackground"    # Z
    .param p3, "startId"    # Ljava/lang/Integer;
    .param p4, "considerLastCheckEnd"    # Z

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/service/MailService$2;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/fsck/k9/service/MailService$2;-><init>(Lcom/fsck/k9/service/MailService;ZZZ)V

    const v2, 0xea60

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/fsck/k9/service/MailService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    .line 203
    return-void
.end method

.method private reschedulePushers(ZZ)V
    .locals 4
    .param p1, "hasConnectivity"    # Z
    .param p2, "doBackground"    # Z

    .prologue
    const/4 v3, 0x0

    .line 326
    const-string v0, "Rescheduling pushers"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-direct {p0}, Lcom/fsck/k9/service/MailService;->stopPushers()V

    .line 330
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 331
    :cond_0
    const-string v0, "Not scheduling pushers:  connectivity? %s -- doBackground? %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/service/MailService;->setupPushers()V

    .line 336
    invoke-direct {p0}, Lcom/fsck/k9/service/MailService;->schedulePushers()V

    goto :goto_0
.end method

.method private reschedulePushersInBackground(ZZLjava/lang/Integer;)V
    .locals 3
    .param p1, "hasConnectivity"    # Z
    .param p2, "doBackground"    # Z
    .param p3, "startId"    # Ljava/lang/Integer;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/service/MailService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/service/MailService$3;-><init>(Lcom/fsck/k9/service/MailService;ZZ)V

    const v2, 0xea60

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/fsck/k9/service/MailService;->execute(Landroid/content/Context;Ljava/lang/Runnable;ILjava/lang/Integer;)V

    .line 213
    return-void
.end method

.method public static saveLastCheckEnd(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 174
    .local v2, "lastCheckEnd":J
    const-string v5, "Saving lastCheckEnd = %tc"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    .line 177
    .local v1, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v4

    .line 178
    .local v4, "storage":Lcom/fsck/k9/preferences/Storage;
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v0

    .line 179
    .local v0, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    const-string v5, "MailService.lastCheckEnd"

    invoke-virtual {v0, v5, v2, v3}, Lcom/fsck/k9/preferences/StorageEditor;->putLong(Ljava/lang/String;J)Lcom/fsck/k9/preferences/StorageEditor;

    .line 180
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 181
    return-void
.end method

.method private schedulePushers()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 397
    const/4 v2, -0x1

    .line 399
    .local v2, "minInterval":I
    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/controller/MessagingController;->getPushers()Ljava/util/Collection;

    move-result-object v6

    .line 400
    .local v6, "pushers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/mail/Pusher;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/Pusher;

    .line 401
    .local v3, "pusher":Lcom/fsck/k9/mail/Pusher;
    invoke-interface {v3}, Lcom/fsck/k9/mail/Pusher;->getRefreshInterval()I

    move-result v1

    .line 402
    .local v1, "interval":I
    if-lez v1, :cond_0

    if-lt v1, v2, :cond_1

    const/4 v8, -0x1

    if-ne v2, v8, :cond_0

    .line 403
    :cond_1
    move v2, v1

    goto :goto_0

    .line 407
    .end local v1    # "interval":I
    .end local v3    # "pusher":Lcom/fsck/k9/mail/Pusher;
    :cond_2
    const-string v7, "Pusher refresh interval = %d"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    if-lez v2, :cond_3

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    int-to-long v10, v2

    add-long v4, v8, v10

    .line 411
    .local v4, "nextTime":J
    const-string v7, "Next pusher refresh scheduled for %tc"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/fsck/k9/service/MailService;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v0, "i":Landroid/content/Intent;
    const-string v7, "com.fsck.k9.intent.action.MAIL_SERVICE_REFRESH_PUSHERS"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    invoke-static {p0, v4, v5, v0}, Lcom/fsck/k9/service/BootReceiver;->scheduleIntent(Landroid/content/Context;JLandroid/content/Intent;)V

    .line 417
    .end local v0    # "i":Landroid/content/Intent;
    .end local v4    # "nextTime":J
    :cond_3
    return-void
.end method

.method private setupPushers()V
    .locals 7

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "pushing":Z
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 343
    .local v0, "account":Lcom/fsck/k9/Account;
    const-string v3, "Setting up pushers for account %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fsck/k9/controller/MessagingController;->setupPushing(Lcom/fsck/k9/Account;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    .line 351
    .end local v0    # "account":Lcom/fsck/k9/Account;
    :cond_1
    if-eqz v1, :cond_2

    .line 352
    invoke-static {p0}, Lcom/fsck/k9/service/PushService;->startService(Landroid/content/Context;)V

    .line 354
    :cond_2
    sput-boolean v1, Lcom/fsck/k9/service/MailService;->pushingRequested:Z

    .line 355
    return-void
.end method

.method private stopPushers()V
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/controller/MessagingController;->stopAllPushing()V

    .line 322
    invoke-static {p0}, Lcom/fsck/k9/service/PushService;->stopService(Landroid/content/Context;)V

    .line 323
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 423
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/fsck/k9/service/CoreService;->onCreate()V

    .line 85
    const-string v0, "***** MailService *****: onCreate"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "***** MailService *****: onDestroy()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-super {p0}, Lcom/fsck/k9/service/CoreService;->onDestroy()V

    .line 161
    return-void
.end method

.method public startService(Landroid/content/Intent;I)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 91
    .local v6, "startTime":J
    invoke-static {}, Lcom/fsck/k9/service/MailService;->isSyncDisabled()Z

    move-result v4

    .line 92
    .local v4, "oldIsSyncDisabled":Z
    const/4 v2, 0x1

    .line 94
    .local v2, "doBackground":Z
    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/helper/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v3

    .line 95
    .local v3, "hasConnectivity":Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 97
    .local v0, "autoSync":Z
    invoke-static {}, Lcom/fsck/k9/K9;->getBackgroundOps()Lcom/fsck/k9/K9$BACKGROUND_OPS;

    move-result-object v1

    .line 99
    .local v1, "bOps":Lcom/fsck/k9/K9$BACKGROUND_OPS;
    sget-object v5, Lcom/fsck/k9/service/MailService$5;->$SwitchMap$com$fsck$k9$K9$BACKGROUND_OPS:[I

    invoke-virtual {v1}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 111
    :goto_0
    if-nez v2, :cond_4

    const/4 v5, 0x1

    :goto_1
    sput-boolean v5, Lcom/fsck/k9/service/MailService;->syncNoBackground:Z

    .line 112
    if-nez v3, :cond_5

    const/4 v5, 0x1

    :goto_2
    sput-boolean v5, Lcom/fsck/k9/service/MailService;->syncNoConnectivity:Z

    .line 113
    if-eqz v2, :cond_0

    if-nez v3, :cond_6

    :cond_0
    const/4 v5, 0x1

    :goto_3
    sput-boolean v5, Lcom/fsck/k9/service/MailService;->syncBlocked:Z

    .line 115
    const-string v5, "MailService.onStart(%s, %d), hasConnectivity = %s, doBackground = %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 115
    invoke-static {v5, v8}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const-string v5, "com.fsck.k9.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 120
    const-string v5, "***** MailService *****: checking mail"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v8}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 122
    invoke-static {p0}, Lcom/fsck/k9/service/PollService;->startService(Landroid/content/Context;)V

    .line 124
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {p0, v3, v2, v5, v8}, Lcom/fsck/k9/service/MailService;->reschedulePollInBackground(ZZLjava/lang/Integer;Z)V

    .line 147
    :cond_2
    :goto_4
    invoke-static {}, Lcom/fsck/k9/service/MailService;->isSyncDisabled()Z

    move-result v5

    if-eq v5, v4, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/controller/MessagingController;->systemStatusChanged()V

    .line 151
    :cond_3
    const-string v5, "MailService.onStart took %d ms"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const/4 v5, 0x2

    return v5

    .line 101
    :pswitch_0
    const/4 v2, 0x0

    .line 102
    goto :goto_0

    .line 104
    :pswitch_1
    const/4 v2, 0x1

    .line 105
    goto :goto_0

    .line 107
    :pswitch_2
    move v2, v0

    goto :goto_0

    .line 111
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 112
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 113
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 125
    :cond_7
    const-string v5, "com.fsck.k9.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 126
    const-string v5, "***** MailService *****: cancel"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v8}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0}, Lcom/fsck/k9/service/MailService;->cancel()V

    goto :goto_4

    .line 128
    :cond_8
    const-string v5, "com.fsck.k9.intent.action.MAIL_SERVICE_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 129
    const-string v5, "***** MailService *****: reschedule"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v8}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v2, v5}, Lcom/fsck/k9/service/MailService;->rescheduleAllInBackground(ZZLjava/lang/Integer;)V

    goto :goto_4

    .line 131
    :cond_9
    const-string v5, "com.fsck.k9.intent.action.MAIL_SERVICE_RESTART_PUSHERS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 132
    const-string v5, "***** MailService *****: restarting pushers"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v8}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v2, v5}, Lcom/fsck/k9/service/MailService;->reschedulePushersInBackground(ZZLjava/lang/Integer;)V

    goto/16 :goto_4

    .line 134
    :cond_a
    const-string v5, "com.fsck.k9.intent.action.MAIL_SERVICE_RESCHEDULE_POLL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 135
    const-string v5, "***** MailService *****: rescheduling poll"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v8}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    invoke-direct {p0, v3, v2, v5, v8}, Lcom/fsck/k9/service/MailService;->reschedulePollInBackground(ZZLjava/lang/Integer;Z)V

    goto/16 :goto_4

    .line 137
    :cond_b
    const-string v5, "com.fsck.k9.intent.action.MAIL_SERVICE_REFRESH_PUSHERS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v2, v5}, Lcom/fsck/k9/service/MailService;->refreshPushersInBackground(ZZLjava/lang/Integer;)V

    goto/16 :goto_4

    .line 139
    :cond_c
    const-string v5, "com.fsck.k9.intent.action.MAIL_SERVICE_CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v2, v5}, Lcom/fsck/k9/service/MailService;->rescheduleAllInBackground(ZZLjava/lang/Integer;)V

    .line 141
    const-string v5, "Got connectivity action with hasConnectivity = %s, doBackground = %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 141
    invoke-static {v5, v8}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 143
    :cond_d
    const-string v5, "com.fsck.k9.intent.action.MAIL_SERVICE_CANCEL_CONNECTIVITY_NOTICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class public Lcom/fsck/k9/activity/ActivityListener;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "ActivityListener.java"


# instance fields
.field private account:Lcom/fsck/k9/Account;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private folderCompleted:I
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private folderTotal:I
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private loadingAccountDescription:Ljava/lang/String;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private loadingFolderName:Ljava/lang/String;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private loadingHeaderFolderName:Ljava/lang/String;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private processingAccountDescription:Ljava/lang/String;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private processingCommandTitle:Ljava/lang/String;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private sendingAccountDescription:Ljava/lang/String;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private tickReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    .line 22
    iput-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->account:Lcom/fsck/k9/Account;

    .line 23
    iput-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingFolderName:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingHeaderFolderName:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingAccountDescription:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->sendingAccountDescription:Ljava/lang/String;

    .line 27
    iput v2, p0, Lcom/fsck/k9/activity/ActivityListener;->folderCompleted:I

    .line 28
    iput v2, p0, Lcom/fsck/k9/activity/ActivityListener;->folderTotal:I

    .line 29
    iput-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->processingAccountDescription:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->processingCommandTitle:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/fsck/k9/activity/ActivityListener$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/ActivityListener$1;-><init>(Lcom/fsck/k9/activity/ActivityListener;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->tickReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getActionInProgressOperation(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    iget v2, p0, Lcom/fsck/k9/activity/ActivityListener;->folderTotal:I

    if-lez v2, :cond_2

    const v2, 0x7f0701da

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/fsck/k9/activity/ActivityListener;->folderCompleted:I

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/fsck/k9/activity/ActivityListener;->folderTotal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "progress":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingFolderName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingHeaderFolderName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingHeaderFolderName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 82
    iget-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingHeaderFolderName:Ljava/lang/String;

    .line 87
    .local v0, "displayName":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->account:Lcom/fsck/k9/Account;

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    const v2, 0x7f07038a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingHeaderFolderName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 96
    const v2, 0x7f070396

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingAccountDescription:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .end local v0    # "displayName":Ljava/lang/String;
    :goto_3
    return-object v2

    .line 77
    .end local v1    # "progress":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 84
    .restart local v1    # "progress":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingFolderName:Ljava/lang/String;

    .restart local v0    # "displayName":Ljava/lang/String;
    goto :goto_1

    .line 90
    :cond_4
    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const v2, 0x7f07038b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 99
    :cond_5
    const v2, 0x7f070395

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingAccountDescription:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 102
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->sendingAccountDescription:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 103
    const v2, 0x7f0703a0

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/activity/ActivityListener;->sendingAccountDescription:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 104
    :cond_7
    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->processingAccountDescription:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 105
    const v3, 0x7f07039f

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->processingAccountDescription:Ljava/lang/String;

    aput-object v2, v4, v5

    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->processingCommandTitle:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->processingCommandTitle:Ljava/lang/String;

    :goto_4
    aput-object v2, v4, v6

    aput-object v1, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    const-string v2, ""

    goto :goto_4

    .line 108
    :cond_9
    const-string v2, ""

    goto :goto_3
.end method


# virtual methods
.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "unreadMessageCount"    # I

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 278
    return-void
.end method

.method public getFolderCompleted()I
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    iget v0, p0, Lcom/fsck/k9/activity/ActivityListener;->folderCompleted:I

    monitor-exit v1

    return v0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFolderTotal()I
    .locals 2

    .prologue
    .line 287
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    iget v0, p0, Lcom/fsck/k9/activity/ActivityListener;->folderTotal:I

    monitor-exit v1

    return v0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOperation(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f0703a2

    const/4 v6, 0x0

    .line 41
    iget-object v3, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingAccountDescription:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->sendingAccountDescription:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingHeaderFolderName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/activity/ActivityListener;->processingAccountDescription:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->getActionInProgressOperation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v3

    .line 70
    :goto_0
    return-object v2

    .line 48
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {}, Lcom/fsck/k9/service/MailService;->getNextPollTime()J

    move-result-wide v0

    .line 51
    .local v0, "nextPollTime":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    .line 52
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v7

    .line 54
    .local v7, "relativeTimeSpanString":Ljava/lang/CharSequence;
    const v2, 0x7f07039b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 48
    .end local v0    # "nextPollTime":J
    .end local v7    # "relativeTimeSpanString":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 55
    .restart local v0    # "nextPollTime":J
    :cond_2
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/fsck/k9/service/MailService;->isSyncDisabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 56
    invoke-static {}, Lcom/fsck/k9/service/MailService;->hasNoConnectivity()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    const v2, 0x7f07039d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 58
    :cond_3
    invoke-static {}, Lcom/fsck/k9/service/MailService;->isSyncNoBackground()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    const v2, 0x7f07039c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 60
    :cond_4
    invoke-static {}, Lcom/fsck/k9/service/MailService;->isSyncBlocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 61
    const v2, 0x7f0703a1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 62
    :cond_5
    invoke-static {}, Lcom/fsck/k9/service/MailService;->isPollAndPushDisabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 63
    const v2, 0x7f07039e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 65
    :cond_6
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 67
    :cond_7
    invoke-static {}, Lcom/fsck/k9/service/MailService;->isSyncDisabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 68
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 70
    :cond_8
    const-string v2, ""

    goto :goto_0
.end method

.method public informUserOfStatus()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->tickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->tickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "commandTitle"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->processingCommandTitle:Ljava/lang/String;

    .line 260
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 263
    return-void

    .line 260
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "commandTitle"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iput-object p2, p0, Lcom/fsck/k9/activity/ActivityListener;->processingCommandTitle:Ljava/lang/String;

    .line 252
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pendingCommandsFinished(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 240
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->processingAccountDescription:Ljava/lang/String;

    .line 242
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 245
    return-void

    .line 242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->processingAccountDescription:Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/ActivityListener;->folderCompleted:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/ActivityListener;->folderTotal:I

    .line 233
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 236
    return-void

    .line 233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public searchStats(Lcom/fsck/k9/AccountStats;)V
    .locals 0
    .param p1, "stats"    # Lcom/fsck/k9/AccountStats;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 268
    return-void
.end method

.method public sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 211
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->sendingAccountDescription:Ljava/lang/String;

    .line 213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 216
    return-void

    .line 213
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->sendingAccountDescription:Ljava/lang/String;

    .line 222
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 225
    return-void

    .line 222
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->sendingAccountDescription:Ljava/lang/String;

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 207
    return-void

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingAccountDescription:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingHeaderFolderName:Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingFolderName:Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->account:Lcom/fsck/k9/Account;

    .line 196
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 198
    return-void

    .line 196
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 126
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingAccountDescription:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingFolderName:Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->account:Lcom/fsck/k9/Account;

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 133
    return-void

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synchronizeMailboxHeadersFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "total"    # I
    .param p4, "completed"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingHeaderFolderName:Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/ActivityListener;->folderCompleted:I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/ActivityListener;->folderTotal:I

    .line 174
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 177
    return-void

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synchronizeMailboxHeadersProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "completed"    # I
    .param p4, "total"    # I

    .prologue
    .line 160
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iput p3, p0, Lcom/fsck/k9/activity/ActivityListener;->folderCompleted:I

    .line 162
    iput p4, p0, Lcom/fsck/k9/activity/ActivityListener;->folderTotal:I

    .line 163
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 166
    return-void

    .line 163
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synchronizeMailboxHeadersStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingAccountDescription:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingHeaderFolderName:Ljava/lang/String;

    .line 153
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 156
    return-void

    .line 153
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "completed"    # I
    .param p4, "total"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iput p3, p0, Lcom/fsck/k9/activity/ActivityListener;->folderCompleted:I

    .line 183
    iput p4, p0, Lcom/fsck/k9/activity/ActivityListener;->folderTotal:I

    .line 184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 187
    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/fsck/k9/activity/ActivityListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingAccountDescription:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/fsck/k9/activity/ActivityListener;->loadingFolderName:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/fsck/k9/activity/ActivityListener;->account:Lcom/fsck/k9/Account;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/ActivityListener;->folderCompleted:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/ActivityListener;->folderTotal:I

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 146
    return-void

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public systemStatusChanged()V
    .locals 0

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ActivityListener;->informUserOfStatus()V

    .line 273
    return-void
.end method

.class Lcom/fsck/k9/service/PollService$Listener;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "PollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/service/PollService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field accountsChecked:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startId:I

.field final synthetic this$0:Lcom/fsck/k9/service/PollService;

.field private wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;


# direct methods
.method constructor <init>(Lcom/fsck/k9/service/PollService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fsck/k9/service/PollService;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;

    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->accountsChecked:Ljava/util/Map;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/service/PollService$Listener;->startId:I

    return-void
.end method

.method private release()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;

    invoke-virtual {v1}, Lcom/fsck/k9/service/PollService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    .line 125
    .local v0, "controller":Lcom/fsck/k9/controller/MessagingController;
    invoke-virtual {v0, v2}, Lcom/fsck/k9/controller/MessagingController;->setCheckMailListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 126
    iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;

    invoke-virtual {v1}, Lcom/fsck/k9/service/PollService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/service/MailService;->saveLastCheckEnd(Landroid/content/Context;)V

    .line 128
    iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;

    invoke-static {v1, v2}, Lcom/fsck/k9/service/MailService;->actionReschedulePoll(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 129
    invoke-virtual {p0}, Lcom/fsck/k9/service/PollService$Listener;->wakeLockRelease()V

    .line 131
    const-string v1, "PollService stopping with startId = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/fsck/k9/service/PollService$Listener;->startId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;

    iget v2, p0, Lcom/fsck/k9/service/PollService$Listener;->startId:I

    invoke-virtual {v1, v2}, Lcom/fsck/k9/service/PollService;->stopSelf(I)V

    .line 133
    return-void
.end method


# virtual methods
.method public checkMailFinished(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 137
    const-string v0, "***** PollService *****: checkMailFinished"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-direct {p0}, Lcom/fsck/k9/service/PollService$Listener;->release()V

    .line 139
    return-void
.end method

.method public checkMailStarted(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->accountsChecked:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    return-void
.end method

.method public getStartId()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/fsck/k9/service/PollService$Listener;->startId:I

    return v0
.end method

.method public setStartId(I)V
    .locals 0
    .param p1, "startId"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/fsck/k9/service/PollService$Listener;->startId:I

    .line 145
    return-void
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isNotifyNewMail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->accountsChecked:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 115
    .local v0, "existingNewMessages":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 116
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->accountsChecked:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v0    # "existingNewMessages":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public declared-synchronized wakeLockAcquire()V
    .locals 6

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .line 86
    .local v0, "oldWakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    iget-object v2, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;

    invoke-static {v2}, Lcom/fsck/k9/mail/power/TracingPowerManager;->getPowerManager(Landroid/content/Context;)Lcom/fsck/k9/mail/power/TracingPowerManager;

    move-result-object v1

    .line 87
    .local v1, "pm":Lcom/fsck/k9/mail/power/TracingPowerManager;
    const/4 v2, 0x1

    const-string v3, "PollService wakeLockAcquire"

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/power/TracingPowerManager;->newWakeLock(ILjava/lang/String;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .line 88
    iget-object v2, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->setReferenceCounted(Z)V

    .line 89
    iget-object v2, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    .end local v0    # "oldWakeLock":Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    .end local v1    # "pm":Lcom/fsck/k9/mail/power/TracingPowerManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized wakeLockRelease()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

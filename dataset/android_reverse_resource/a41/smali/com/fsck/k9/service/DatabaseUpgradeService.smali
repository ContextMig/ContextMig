.class public Lcom/fsck/k9/service/DatabaseUpgradeService;
.super Landroid/app/Service;
.source "DatabaseUpgradeService.java"


# static fields
.field private static final ACTION_START_SERVICE:Ljava/lang/String; = "com.fsck.k9.service.DatabaseUpgradeService.startService"

.field public static final ACTION_UPGRADE_COMPLETE:Ljava/lang/String; = "DatabaseUpgradeService.upgradeComplete"

.field public static final ACTION_UPGRADE_PROGRESS:Ljava/lang/String; = "DatabaseUpgradeService.upgradeProgress"

.field public static final EXTRA_ACCOUNT_UUID:Ljava/lang/String; = "account_uuid"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "progress"

.field public static final EXTRA_PROGRESS_END:Ljava/lang/String; = "progress_end"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DatabaseUpgradeService"

.field private static final WAKELOCK_TIMEOUT:J = 0x927c0L


# instance fields
.field private mAccountUuid:Ljava/lang/String;

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mProgress:I

.field private mProgressEnd:I

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/service/DatabaseUpgradeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/service/DatabaseUpgradeService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fsck/k9/service/DatabaseUpgradeService;->upgradeDatabases()V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/service/DatabaseUpgradeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/service/DatabaseUpgradeService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fsck/k9/service/DatabaseUpgradeService;->stopService()V

    return-void
.end method

.method private acquireWakelock()V
    .locals 4

    .prologue
    .line 141
    invoke-static {p0}, Lcom/fsck/k9/mail/power/TracingPowerManager;->getPowerManager(Landroid/content/Context;)Lcom/fsck/k9/mail/power/TracingPowerManager;

    move-result-object v0

    .line 142
    .local v0, "pm":Lcom/fsck/k9/mail/power/TracingPowerManager;
    const/4 v1, 0x1

    const-string v2, "DatabaseUpgradeService"

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/power/TracingPowerManager;->newWakeLock(ILjava/lang/String;)Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mWakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    .line 143
    iget-object v1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mWakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->setReferenceCounted(Z)V

    .line 144
    iget-object v1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mWakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->acquire(J)V

    .line 145
    return-void
.end method

.method private releaseWakelock()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mWakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;->release()V

    .line 152
    return-void
.end method

.method private sendProgressBroadcast(Ljava/lang/String;II)V
    .locals 2
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "progressEnd"    # I

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DatabaseUpgradeService.upgradeProgress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "account_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "progress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v1, "progress_end"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 217
    return-void
.end method

.method private sendUpgradeCompleteBroadcast()V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DatabaseUpgradeService.upgradeComplete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 224
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/fsck/k9/service/DatabaseUpgradeService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    const-string v1, "com.fsck.k9.service.DatabaseUpgradeService.startService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    return-void
.end method

.method private startUpgradeInBackground()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lcom/fsck/k9/service/DatabaseUpgradeService$1;

    const-string v1, "DatabaseUpgradeService"

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/service/DatabaseUpgradeService$1;-><init>(Lcom/fsck/k9/service/DatabaseUpgradeService;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Lcom/fsck/k9/service/DatabaseUpgradeService$1;->start()V

    .line 176
    return-void
.end method

.method private stopService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/fsck/k9/service/DatabaseUpgradeService;->stopSelf()V

    .line 159
    const-string v0, "DatabaseUpgradeService stopped"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-direct {p0}, Lcom/fsck/k9/service/DatabaseUpgradeService;->releaseWakelock()V

    .line 162
    iget-object v0, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    return-void
.end method

.method private upgradeDatabases()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 182
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    .line 184
    .local v3, "preferences":Lcom/fsck/k9/Preferences;
    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 185
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgressEnd:I

    .line 186
    iput v8, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgress:I

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 189
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mAccountUuid:Ljava/lang/String;

    .line 191
    iget-object v5, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mAccountUuid:Ljava/lang/String;

    iget v6, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgress:I

    iget v7, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgressEnd:I

    invoke-direct {p0, v5, v6, v7}, Lcom/fsck/k9/service/DatabaseUpgradeService;->sendProgressBroadcast(Ljava/lang/String;II)V

    .line 195
    :try_start_0
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :goto_1
    iget v5, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgress:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgress:I

    goto :goto_0

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    const-string v5, "Database unavailable"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 198
    .end local v2    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Error while upgrading database"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 205
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/fsck/k9/K9;->setDatabasesUpToDate(Z)V

    .line 206
    invoke-direct {p0}, Lcom/fsck/k9/service/DatabaseUpgradeService;->sendUpgradeCompleteBroadcast()V

    .line 207
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 115
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 116
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 121
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 123
    const-string v1, "DatabaseUpgradeService started"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0}, Lcom/fsck/k9/service/DatabaseUpgradeService;->acquireWakelock()V

    .line 127
    invoke-direct {p0}, Lcom/fsck/k9/service/DatabaseUpgradeService;->startUpgradeInBackground()V

    .line 134
    :goto_0
    return v4

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mAccountUuid:Ljava/lang/String;

    iget v2, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgress:I

    iget v3, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgressEnd:I

    invoke-direct {p0, v1, v2, v3}, Lcom/fsck/k9/service/DatabaseUpgradeService;->sendProgressBroadcast(Ljava/lang/String;II)V

    goto :goto_0
.end method

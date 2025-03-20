.class Lcom/dropbox/sync/android/CoreBackgroundProcessor;
.super Ljava/lang/Object;
.source "CoreBackgroundProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;,
        Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundRunner;,
        Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;,
        Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunServerInitiatedUnlink;,
        Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;
    }
.end annotation


# static fields
.field private static final NUM_THREADS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final sInitLock:Ljava/lang/Object;

.field private static sInstance:Lcom/dropbox/sync/android/CoreBackgroundProcessor;


# instance fields
.field private mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

.field private mContext:Landroid/content/Context;

.field private final mSched:Ljava/util/concurrent/ScheduledExecutorService;

.field mTaskCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->sInitLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mTaskCount:I

    .line 50
    const/4 v0, 0x1

    new-instance v1, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;

    invoke-direct {v1}, Lcom/dropbox/sync/android/CoreBackgroundProcessor$BackgroundThreadFactory;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mSched:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/sync/android/CoreBackgroundProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->incTaskCount()V

    return-void
.end method

.method static synthetic access$200(Lcom/dropbox/sync/android/CoreBackgroundProcessor;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mSched:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/sync/android/CoreBackgroundProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->decTaskCount()V

    return-void
.end method

.method private declared-synchronized decTaskCount()V
    .locals 2

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mTaskCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 285
    iget v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mTaskCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mTaskCount:I

    .line 286
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mTaskCount:I

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->IDLE:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->setState(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    monitor-exit p0

    return-void

    .line 284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private executeTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->incTaskCount()V

    .line 273
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mSched:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public static getInstance()Lcom/dropbox/sync/android/CoreBackgroundProcessor;
    .locals 2

    .prologue
    .line 41
    sget-object v1, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->sInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->sInstance:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->sInstance:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    .line 45
    :cond_0
    sget-object v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->sInstance:Lcom/dropbox/sync/android/CoreBackgroundProcessor;

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized incTaskCount()V
    .locals 2

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mTaskCount:I

    .line 278
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->FOREGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->setState(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method notifyServerOfLocalUnlink(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 1
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->isLinked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 97
    new-instance v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunNotifyServerOfLocalUnlink;-><init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/DbxAccount;)V

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->executeTask(Ljava/lang/Runnable;)V

    .line 98
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method processServerInitiatedUnlink(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 1
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 159
    new-instance v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunServerInitiatedUnlink;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunServerInitiatedUnlink;-><init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/DbxAccount;)V

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->executeTask(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method declared-synchronized setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateAccountInfo(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 1
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 188
    new-instance v0, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/sync/android/CoreBackgroundProcessor$RunAccountInfoUpdate;-><init>(Lcom/dropbox/sync/android/CoreBackgroundProcessor;Lcom/dropbox/sync/android/DbxAccount;)V

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/CoreBackgroundProcessor;->executeTask(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

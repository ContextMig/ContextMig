.class public Lcom/dropbox/sync/android/DbxSyncService;
.super Landroid/app/Service;
.source "DbxSyncService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxSyncService$1;,
        Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;,
        Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;,
        Lcom/dropbox/sync/android/DbxSyncService$LocalBinder;
    }
.end annotation


# static fields
.field static final EXTRA_START_COUNT_INCREMENT:Ljava/lang/String; = "start-count"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBindCount:I

.field private final mBinder:Lcom/dropbox/sync/android/DbxSyncService$LocalBinder;

.field private mLatestStartId:I

.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mNetworkReceiver:Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;

.field private mStartCount:I

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/dropbox/sync/android/DbxSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 37
    new-instance v0, Lcom/dropbox/sync/android/DbxSyncService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/dropbox/sync/android/DbxSyncService$LocalBinder;-><init>(Lcom/dropbox/sync/android/DbxSyncService;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBinder:Lcom/dropbox/sync/android/DbxSyncService$LocalBinder;

    .line 38
    new-instance v0, Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;-><init>(Lcom/dropbox/sync/android/DbxSyncService;Lcom/dropbox/sync/android/DbxSyncService$1;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mNetworkReceiver:Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;

    .line 43
    iput v2, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    .line 44
    iput v2, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStartCount:I

    .line 45
    iput-boolean v2, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStarted:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLatestStartId:I

    .line 354
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxSyncService;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/dropbox/sync/android/DbxSyncService;->makeIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private handleStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 304
    iput p3, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLatestStartId:I

    .line 309
    if-eqz p1, :cond_0

    and-int/lit8 v1, p2, 0x3

    if-nez v1, :cond_0

    .line 311
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStarted:Z

    .line 312
    const-string v1, "start-count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 313
    .local v0, "adjustment":I
    iget v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStartCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStartCount:I

    .line 314
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DbxSyncService.handleStartCommand("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): \tbc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \tsc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStartCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStartCount:I

    if-gez v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid start count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStartCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after handleStartCommand("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 322
    .end local v0    # "adjustment":I
    :cond_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxSyncService;->stopIfUnused()V

    .line 326
    const/4 v1, 0x2

    return v1
.end method

.method private static makeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/sync/android/DbxSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static makeIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startCountIncrement"    # I

    .prologue
    .line 349
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxSyncService;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 350
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "start-count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    return-object v0
.end method

.method private stopIfUnused()V
    .locals 5

    .prologue
    .line 335
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStarted:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStartCount:I

    if-nez v1, :cond_0

    .line 338
    iget v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLatestStartId:I

    invoke-virtual {p0, v1}, Lcom/dropbox/sync/android/DbxSyncService;->stopSelfResult(I)Z

    move-result v0

    .line 339
    .local v0, "stopping":Z
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DbxSyncService.stopSelfResult("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLatestStartId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStarted:Z

    .line 342
    .end local v0    # "stopping":Z
    :cond_0
    return-void

    .line 340
    .restart local v0    # "stopping":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 267
    iget v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    .line 268
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbxSyncService.onBind: \t\t\t\t\tbc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \tsc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStartCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBinder:Lcom/dropbox/sync/android/DbxSyncService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 252
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    const-string v2, "DbxSyncService starting."

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mNetworkReceiver:Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;->register()V

    .line 255
    invoke-static {}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getInstance()Lcom/dropbox/sync/android/CoreNetworkStatus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dropbox/sync/android/CoreNetworkStatus;->updateNetworkStatus(Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    const-string v2, "DbxSyncService stopping."

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mNetworkReceiver:Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxSyncService$NetworkReceiver;->unregister()V

    .line 262
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 263
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 274
    iget v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    .line 275
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbxSyncService.onRebind: \t\t\t\tbc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \tsc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStartCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbxSyncService.onStartCommand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", no-flags, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/dropbox/sync/android/DbxSyncService;->handleStartCommand(Landroid/content/Intent;II)I

    .line 295
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbxSyncService.onStartCommand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxSyncService;->handleStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 280
    iget v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    .line 281
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbxSyncService.onUnbind: \t\t\t\tbc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \tsc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dropbox/sync/android/DbxSyncService;->mStartCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    if-gez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxSyncService;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid bind count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/dropbox/sync/android/DbxSyncService;->mBindCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after onUnbind()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxSyncService;->stopIfUnused()V

    .line 288
    const/4 v0, 0x1

    return v0
.end method

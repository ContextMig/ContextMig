.class Lcom/dropbox/sync/android/NativeEnv;
.super Ljava/lang/Object;
.source "NativeEnv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;,
        Lcom/dropbox/sync/android/NativeEnv$Config;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final LOG_DEBUG:I = 0x0

.field public static final LOG_ERROR:I = 0x3

.field public static final LOG_INFO:I = 0x1

.field public static final LOG_WARNING:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/dropbox/sync/android/NativeEnv$Config;

.field private final mEnvHandle:J

.field private mExtras:Lcom/dropbox/sync/android/EnvExtras;

.field private mIsInitialized:Z

.field private final mLedger:Lcom/dropbox/ledger/android/Ledger;

.field private final mLib:Lcom/dropbox/sync/android/NativeLib;

.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mRefreshEnvCallbacks:Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/dropbox/sync/android/NativeEnv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/sync/android/NativeEnv;->$assertionsDisabled:Z

    .line 19
    const-class v0, Lcom/dropbox/sync/android/NativeEnv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/NativeEnv;->TAG:Ljava/lang/String;

    .line 388
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V

    .line 389
    invoke-static {}, Lcom/dropbox/sync/android/NativeEnv;->nativeClassInit()V

    .line 390
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/dropbox/sync/android/NativeLib;Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;)V
    .locals 6
    .param p1, "lib"    # Lcom/dropbox/sync/android/NativeLib;
    .param p2, "appContext"    # Landroid/content/Context;
    .param p3, "coreConfig"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p4, "ledger"    # Lcom/dropbox/ledger/android/Ledger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/NativeEnv;-><init>(Lcom/dropbox/sync/android/NativeLib;Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;)V

    .line 141
    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/NativeLib;Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;)V
    .locals 7
    .param p1, "lib"    # Lcom/dropbox/sync/android/NativeLib;
    .param p2, "appContext"    # Landroid/content/Context;
    .param p3, "coreConfig"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p4, "ledger"    # Lcom/dropbox/ledger/android/Ledger;
    .param p5, "refreshCallbacks"    # Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/sync/android/NativeEnv;-><init>(Lcom/dropbox/sync/android/NativeLib;Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;Lcom/dropbox/sync/android/PerfTracer;Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;)V

    .line 146
    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/NativeLib;Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;Lcom/dropbox/sync/android/PerfTracer;Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;)V
    .locals 2
    .param p1, "lib"    # Lcom/dropbox/sync/android/NativeLib;
    .param p2, "appContext"    # Landroid/content/Context;
    .param p3, "coreConfig"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p4, "ledger"    # Lcom/dropbox/ledger/android/Ledger;
    .param p5, "perfTracer"    # Lcom/dropbox/sync/android/PerfTracer;
    .param p6, "refreshCallbacks"    # Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeEnv;->mLib:Lcom/dropbox/sync/android/NativeLib;

    .line 164
    iput-object p4, p0, Lcom/dropbox/sync/android/NativeEnv;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    .line 165
    new-instance v0, Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreLogger;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 166
    new-instance v0, Lcom/dropbox/sync/android/NativeEnv$Config;

    iget-object v1, p0, Lcom/dropbox/sync/android/NativeEnv;->mLedger:Lcom/dropbox/ledger/android/Ledger;

    invoke-direct {v0, p2, p3, v1}, Lcom/dropbox/sync/android/NativeEnv$Config;-><init>(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mConfig:Lcom/dropbox/sync/android/NativeEnv$Config;

    .line 167
    iput-object p6, p0, Lcom/dropbox/sync/android/NativeEnv;->mRefreshEnvCallbacks:Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;

    .line 168
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mConfig:Lcom/dropbox/sync/android/NativeEnv$Config;

    invoke-direct {p0, v0, p5}, Lcom/dropbox/sync/android/NativeEnv;->doInitialize(Lcom/dropbox/sync/android/NativeEnv$Config;Lcom/dropbox/sync/android/PerfTracer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mEnvHandle:J

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mIsInitialized:Z

    .line 170
    return-void
.end method

.method static synthetic access$000(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/dropbox/sync/android/NativeEnv;->nativeInvokeFunction(JJ)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/sync/android/NativeEnv;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static createThread(Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # J
    .param p3, "arg"    # J

    .prologue
    .line 298
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dropbox/sync/android/NativeEnv$2;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/dropbox/sync/android/NativeEnv$2;-><init>(JJ)V

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 308
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 309
    new-instance v1, Lcom/dropbox/sync/android/NativeEnv$3;

    invoke-direct {v1}, Lcom/dropbox/sync/android/NativeEnv$3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 315
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 316
    return-void
.end method

.method private doInitialize(Lcom/dropbox/sync/android/NativeEnv$Config;Lcom/dropbox/sync/android/PerfTracer;)J
    .locals 6
    .param p1, "config"    # Lcom/dropbox/sync/android/NativeEnv$Config;
    .param p2, "perfTracer"    # Lcom/dropbox/sync/android/PerfTracer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/NativeEnv;->nativeInit(Lcom/dropbox/sync/android/NativeEnv$Config;)J

    move-result-wide v2

    .line 175
    .local v2, "envHandle":J
    sget-boolean v1, Lcom/dropbox/sync/android/NativeEnv;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v4, "Invalid native app handle."

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 177
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/dropbox/sync/android/NativeEnv;->nativeGetExtras(J)Lcom/dropbox/sync/android/EnvExtras;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/NativeEnv;->mExtras:Lcom/dropbox/sync/android/EnvExtras;

    .line 200
    new-instance v0, Lcom/dropbox/sync/android/NativeEnv$1;

    invoke-direct {v0, p0}, Lcom/dropbox/sync/android/NativeEnv$1;-><init>(Lcom/dropbox/sync/android/NativeEnv;)V

    .line 213
    .local v0, "availableBytesComputer":Lcom/dropbox/sync/android/DbxAvailableBytesComputer;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeEnv;->mExtras:Lcom/dropbox/sync/android/EnvExtras;

    invoke-virtual {v1, v0, p2}, Lcom/dropbox/sync/android/EnvExtras;->init(Lcom/dropbox/sync/android/DbxAvailableBytesComputer;Lcom/dropbox/sync/android/PerfTracer;)V

    .line 215
    return-wide v2
.end method

.method private static isMainThread()Z
    .locals 3

    .prologue
    .line 286
    :try_start_0
    invoke-static {}, Lcom/dropbox/sync/android/CoreAndroidUtil;->isUiThread()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 292
    :goto_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/NativeEnv;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 292
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 289
    :catch_1
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Error;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/NativeEnv;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeFree(J)V
.end method

.method private native nativeGetExtras(J)Lcom/dropbox/sync/android/EnvExtras;
.end method

.method private native nativeInit(Lcom/dropbox/sync/android/NativeEnv$Config;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeInvokeFunction(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeMakeLogUploader(J)Lcom/dropbox/sync/android/LogUploaderInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private refreshBatteryAndChargingStateCallback()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mRefreshEnvCallbacks:Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mRefreshEnvCallbacks:Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;

    invoke-interface {v0}, Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;->refreshBatteryAndChargingState()V

    .line 377
    :cond_0
    return-void
.end method

.method private refreshNetworkStateCallback()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mRefreshEnvCallbacks:Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mRefreshEnvCallbacks:Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;

    invoke-interface {v0}, Lcom/dropbox/sync/android/NativeEnv$RefreshEnvCallbacks;->refreshNetworkState()V

    .line 384
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/NativeEnv;->TAG:Ljava/lang/String;

    const-string v2, "NativeEnv finalized without being deinitialized."

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mEnvHandle:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeEnv;->nativeFree(J)V

    goto :goto_0
.end method

.method public getConfig()Lcom/dropbox/sync/android/NativeEnv$Config;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mConfig:Lcom/dropbox/sync/android/NativeEnv$Config;

    return-object v0
.end method

.method public getNativeHandle()J
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mEnvHandle:J

    return-wide v0
.end method

.method public makeLogUploader()Lcom/dropbox/sync/android/LogUploaderInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mEnvHandle:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeEnv;->nativeMakeLogUploader(J)Lcom/dropbox/sync/android/LogUploaderInterface;

    move-result-object v0

    return-object v0
.end method

.method public setBatteryChargingState(Lcom/dropbox/sync/android/DbxChargingState;)V
    .locals 1
    .param p1, "state"    # Lcom/dropbox/sync/android/DbxChargingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mExtras:Lcom/dropbox/sync/android/EnvExtras;

    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/EnvExtras;->setBatteryChargingState(Lcom/dropbox/sync/android/DbxChargingState;)V

    .line 333
    return-void
.end method

.method public setBatteryLevel(Lcom/dropbox/sync/android/DbxBatteryLevel;)V
    .locals 1
    .param p1, "level"    # Lcom/dropbox/sync/android/DbxBatteryLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mExtras:Lcom/dropbox/sync/android/EnvExtras;

    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/EnvExtras;->setBatteryLevel(Lcom/dropbox/sync/android/DbxBatteryLevel;)V

    .line 336
    return-void
.end method

.method public setNetworkStatus(Lcom/dropbox/sync/android/DbxNetworkStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/dropbox/sync/android/DbxNetworkStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeEnv;->mExtras:Lcom/dropbox/sync/android/EnvExtras;

    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/EnvExtras;->setNetworkStatus(Lcom/dropbox/sync/android/DbxNetworkStatus;)V

    .line 339
    return-void
.end method

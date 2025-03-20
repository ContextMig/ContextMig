.class abstract Lcom/dropbox/sync/android/NativeClientBase;
.super Ljava/lang/Object;
.source "NativeClientBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mApp:Lcom/dropbox/sync/android/NativeApp;

.field protected final mCliHandle:J

.field private final mConfig:Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;

.field private mIsInitialized:Z

.field protected final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mNativeThreads:Lcom/dropbox/sync/android/NativeThreads;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/dropbox/sync/android/NativeClientBase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/sync/android/NativeClientBase;->$assertionsDisabled:Z

    .line 11
    const-class v0, Lcom/dropbox/sync/android/NativeClientBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/NativeClientBase;->TAG:Ljava/lang/String;

    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/dropbox/sync/android/NativeApp;Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;J)V
    .locals 9
    .param p1, "app"    # Lcom/dropbox/sync/android/NativeApp;
    .param p2, "config"    # Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;
    .param p3, "nativeRunFuncs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v7, p0, Lcom/dropbox/sync/android/NativeClientBase;->mIsInitialized:Z

    .line 48
    new-instance v1, Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v1}, Lcom/dropbox/sync/android/CoreLogger;-><init>()V

    iput-object v1, p0, Lcom/dropbox/sync/android/NativeClientBase;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 49
    iput-object p2, p0, Lcom/dropbox/sync/android/NativeClientBase;->mConfig:Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;

    .line 50
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeClientBase;->mApp:Lcom/dropbox/sync/android/NativeApp;

    .line 51
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeClientBase;->mConfig:Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;

    invoke-direct {p0, p1, v1}, Lcom/dropbox/sync/android/NativeClientBase;->doInitialize(Lcom/dropbox/sync/android/NativeApp;Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/sync/android/NativeClientBase;->mCliHandle:J

    .line 53
    new-instance v1, Lcom/dropbox/sync/android/NativeThreads;

    iget-wide v4, p0, Lcom/dropbox/sync/android/NativeClientBase;->mCliHandle:J

    iget-object v6, p0, Lcom/dropbox/sync/android/NativeClientBase;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    move-wide v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/NativeThreads;-><init>(JJLcom/dropbox/sync/android/CoreLogger;)V

    iput-object v1, p0, Lcom/dropbox/sync/android/NativeClientBase;->mNativeThreads:Lcom/dropbox/sync/android/NativeThreads;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/sync/android/NativeClientBase;->mIsInitialized:Z

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "completed":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/NativeClientBase;->doPostClientInitialize()V

    .line 61
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeClientBase;->mNativeThreads:Lcom/dropbox/sync/android/NativeThreads;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/NativeThreads;->initThreads()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    const/4 v0, 0x1

    .line 64
    if-nez v0, :cond_0

    .line 65
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeClientBase;->mCliHandle:J

    invoke-virtual {p0, v2, v3, v7}, Lcom/dropbox/sync/android/NativeClientBase;->doNativeDeinitialize(JZ)V

    .line 68
    :cond_0
    return-void

    .line 64
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 65
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeClientBase;->mCliHandle:J

    invoke-virtual {p0, v2, v3, v7}, Lcom/dropbox/sync/android/NativeClientBase;->doNativeDeinitialize(JZ)V

    :cond_1
    throw v1
.end method

.method private doInitialize(Lcom/dropbox/sync/android/NativeApp;Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;)J
    .locals 7
    .param p1, "app"    # Lcom/dropbox/sync/android/NativeApp;
    .param p2, "config"    # Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;->cacheRoot:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "cacheRootDir":Ljava/io/File;
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreFileUtil;->prepCacheDirectory(Ljava/io/File;)V

    .line 75
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeClientBase;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v4, Lcom/dropbox/sync/android/NativeClientBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prepared cache dir \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;->cacheRoot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/sync/android/NativeClientBase;->doNativeInitialize(Lcom/dropbox/sync/android/NativeApp;Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;)J

    move-result-wide v2

    .line 79
    .local v2, "cliHandle":J
    sget-boolean v1, Lcom/dropbox/sync/android/NativeClientBase;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v4, "Invalid native client handle."

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 83
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public deinitialize(Z)V
    .locals 2
    .param p1, "unlinked"    # Z

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 118
    monitor-exit p0

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mIsInitialized:Z

    .line 121
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/NativeClientBase;->doClearStateOnDeinit(Z)V

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mNativeThreads:Lcom/dropbox/sync/android/NativeThreads;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeThreads;->interruptThreads()V

    .line 124
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mCliHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/dropbox/sync/android/NativeClientBase;->doNativeDeinitialize(JZ)V

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract doClearStateOnDeinit(Z)V
.end method

.method protected abstract doNativeDeinitialize(JZ)V
.end method

.method protected abstract doNativeFree(J)V
.end method

.method protected abstract doNativeInitialize(Lcom/dropbox/sync/android/NativeApp;Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method protected doPostClientInitialize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 103
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/NativeClientBase;->TAG:Ljava/lang/String;

    const-string v2, "NativeClient finalized without being deinitialized."

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mNativeThreads:Lcom/dropbox/sync/android/NativeThreads;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mNativeThreads:Lcom/dropbox/sync/android/NativeThreads;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeThreads;->joinThreads()V

    .line 153
    :cond_1
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mCliHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/sync/android/NativeClientBase;->doNativeFree(J)V

    goto :goto_0
.end method

.method public getApp()Lcom/dropbox/sync/android/NativeApp;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mApp:Lcom/dropbox/sync/android/NativeApp;

    return-object v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeClientBase;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class Lcom/dropbox/sync/android/NativeApp;
.super Ljava/lang/Object;
.source "NativeApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/NativeApp$AccountInfoBuilder;,
        Lcom/dropbox/sync/android/NativeApp$NeedAccountInfoUpdateListener;,
        Lcom/dropbox/sync/android/NativeApp$UnlinkListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppHandle:J

.field private final mEnv:Lcom/dropbox/sync/android/NativeEnv;

.field private mIsInitialized:Z

.field private final mLib:Lcom/dropbox/sync/android/NativeLib;

.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mUnlinkListener:Lcom/dropbox/sync/android/NativeApp$UnlinkListener;

.field private mUpdateAccountInfoListener:Lcom/dropbox/sync/android/NativeApp$NeedAccountInfoUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/dropbox/sync/android/NativeApp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/sync/android/NativeApp;->$assertionsDisabled:Z

    .line 12
    const-class v0, Lcom/dropbox/sync/android/NativeApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/NativeApp;->TAG:Ljava/lang/String;

    .line 222
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V

    .line 223
    invoke-static {}, Lcom/dropbox/sync/android/NativeApp;->nativeClassInit()V

    .line 224
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/dropbox/sync/android/NativeLib;Lcom/dropbox/sync/android/NativeEnv;Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;Lcom/dropbox/sync/android/NativeApp$UnlinkListener;Lcom/dropbox/sync/android/NativeApp$NeedAccountInfoUpdateListener;Ljava/io/File;)V
    .locals 9
    .param p1, "lib"    # Lcom/dropbox/sync/android/NativeLib;
    .param p2, "env"    # Lcom/dropbox/sync/android/NativeEnv;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "userToken"    # Lcom/dropbox/sync/android/DbxToken;
    .param p5, "l"    # Lcom/dropbox/sync/android/NativeApp$UnlinkListener;
    .param p6, "ul"    # Lcom/dropbox/sync/android/NativeApp$NeedAccountInfoUpdateListener;
    .param p7, "acctCacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p2}, Lcom/dropbox/sync/android/NativeEnv;->getConfig()Lcom/dropbox/sync/android/NativeEnv$Config;

    move-result-object v1

    iget-object v1, v1, Lcom/dropbox/sync/android/NativeEnv$Config;->appSecret:Ljava/lang/String;

    invoke-static {v1, p4}, Lcom/dropbox/sync/android/DbxAccount;->isTokenCompatible(Ljava/lang/String;Lcom/dropbox/sync/android/DbxToken;)Z

    move-result v1

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 66
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeApp;->mLib:Lcom/dropbox/sync/android/NativeLib;

    .line 67
    iput-object p2, p0, Lcom/dropbox/sync/android/NativeApp;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    .line 68
    new-instance v1, Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v1}, Lcom/dropbox/sync/android/CoreLogger;-><init>()V

    iput-object v1, p0, Lcom/dropbox/sync/android/NativeApp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 69
    iput-object p5, p0, Lcom/dropbox/sync/android/NativeApp;->mUnlinkListener:Lcom/dropbox/sync/android/NativeApp$UnlinkListener;

    .line 70
    iput-object p6, p0, Lcom/dropbox/sync/android/NativeApp;->mUpdateAccountInfoListener:Lcom/dropbox/sync/android/NativeApp$NeedAccountInfoUpdateListener;

    .line 72
    instance-of v1, p4, Lcom/dropbox/sync/android/DbxToken$OAuth1;

    if-eqz v1, :cond_0

    move-object v0, p4

    .line 73
    check-cast v0, Lcom/dropbox/sync/android/DbxToken$OAuth1;

    .line 74
    .local v0, "oa1":Lcom/dropbox/sync/android/DbxToken$OAuth1;
    invoke-virtual {p2}, Lcom/dropbox/sync/android/NativeEnv;->getNativeHandle()J

    move-result-wide v2

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->key:Ljava/lang/String;

    iget-object v5, v0, Lcom/dropbox/sync/android/DbxToken$OAuth1;->secret:Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/sync/android/NativeApp;->nativeInitOAuth1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/sync/android/NativeApp;->mAppHandle:J

    .line 81
    .end local v0    # "oa1":Lcom/dropbox/sync/android/DbxToken$OAuth1;
    :goto_0
    sget-boolean v1, Lcom/dropbox/sync/android/NativeApp;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeApp;->mAppHandle:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Invalid native app handle."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 75
    :cond_0
    instance-of v1, p4, Lcom/dropbox/sync/android/DbxToken$OAuth2;

    if-eqz v1, :cond_1

    move-object v8, p4

    .line 76
    check-cast v8, Lcom/dropbox/sync/android/DbxToken$OAuth2;

    .line 77
    .local v8, "oa2":Lcom/dropbox/sync/android/DbxToken$OAuth2;
    invoke-virtual {p2}, Lcom/dropbox/sync/android/NativeEnv;->getNativeHandle()J

    move-result-wide v2

    iget-object v4, v8, Lcom/dropbox/sync/android/DbxToken$OAuth2;->token:Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/NativeApp;->nativeInitOAuth2(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dropbox/sync/android/NativeApp;->mAppHandle:J

    goto :goto_0

    .line 79
    .end local v8    # "oa2":Lcom/dropbox/sync/android/DbxToken$OAuth2;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreAssert;->unimplemented(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    move-result-object v1

    throw v1

    .line 83
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/sync/android/NativeApp;->mIsInitialized:Z

    .line 84
    return-void
.end method

.method private native nativeAccountUpdateInfo(JLcom/dropbox/sync/android/DbxAccountInfo2;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDeinit(JZ)V
.end method

.method private native nativeFree(J)V
.end method

.method private native nativeGetAccountInfo(JLcom/dropbox/sync/android/NativeApp$AccountInfoBuilder;)Lcom/dropbox/sync/android/DbxAccountInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeInitOAuth1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeInitOAuth2(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private native nativeUnlinkAuth(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private onNeedAccountInfoUpdate()V
    .locals 3

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeApp;->mUpdateAccountInfoListener:Lcom/dropbox/sync/android/NativeApp$NeedAccountInfoUpdateListener;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeApp;->mUpdateAccountInfoListener:Lcom/dropbox/sync/android/NativeApp$NeedAccountInfoUpdateListener;

    invoke-interface {v1}, Lcom/dropbox/sync/android/NativeApp$NeedAccountInfoUpdateListener;->onNeedAccountInfoUpdate()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/NativeApp;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Error;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/NativeApp;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onUnlink()V
    .locals 3

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeApp;->mUnlinkListener:Lcom/dropbox/sync/android/NativeApp$UnlinkListener;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeApp;->mUnlinkListener:Lcom/dropbox/sync/android/NativeApp$UnlinkListener;

    invoke-interface {v1}, Lcom/dropbox/sync/android/NativeApp$UnlinkListener;->onUnlink()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/NativeApp;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Error;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/NativeApp;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public accountUpdateInfo(Lcom/dropbox/sync/android/DbxAccountInfo2;)V
    .locals 2
    .param p1, "info"    # Lcom/dropbox/sync/android/DbxAccountInfo2;

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeApp;->mAppHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/NativeApp;->nativeAccountUpdateInfo(JLcom/dropbox/sync/android/DbxAccountInfo2;)V

    .line 209
    return-void
.end method

.method public deinitialize(Z)V
    .locals 2
    .param p1, "unlinked"    # Z

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeApp;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 99
    monitor-exit p0

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/NativeApp;->mIsInitialized:Z

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeApp;->mAppHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/NativeApp;->nativeDeinit(JZ)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeApp;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeApp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/NativeApp;->TAG:Ljava/lang/String;

    const-string v2, "NativeApp finalized without being deinitialized."

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeApp;->mAppHandle:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeApp;->nativeFree(J)V

    goto :goto_0
.end method

.method public getAccountInfo()Lcom/dropbox/sync/android/DbxAccountInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeApp;->mAppHandle:J

    new-instance v2, Lcom/dropbox/sync/android/NativeApp$AccountInfoBuilder;

    invoke-direct {v2}, Lcom/dropbox/sync/android/NativeApp$AccountInfoBuilder;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/dropbox/sync/android/NativeApp;->nativeGetAccountInfo(JLcom/dropbox/sync/android/NativeApp$AccountInfoBuilder;)Lcom/dropbox/sync/android/DbxAccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNativeHandle()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeApp;->mAppHandle:J

    return-wide v0
.end method

.method public getNativeLib()Lcom/dropbox/sync/android/NativeLib;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeApp;->mLib:Lcom/dropbox/sync/android/NativeLib;

    return-object v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeApp;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unlinkAuth()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeApp;->mAppHandle:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeApp;->nativeUnlinkAuth(J)V

    .line 163
    return-void
.end method

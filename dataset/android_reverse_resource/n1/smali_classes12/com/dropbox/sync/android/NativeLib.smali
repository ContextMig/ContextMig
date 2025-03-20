.class Lcom/dropbox/sync/android/NativeLib;
.super Ljava/lang/Object;
.source "NativeLib.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mLoadLock:Ljava/lang/Object;

.field private static mLoaded:Z

.field private static final sInstance:Lcom/dropbox/sync/android/NativeLib;


# instance fields
.field private final mHttpKeepalive:Lcom/dropbox/sync/android/NativeHttp;

.field private mTempDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/dropbox/sync/android/NativeLib;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/NativeLib;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/NativeLib;->mLoadLock:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/sync/android/NativeLib;->mLoaded:Z

    .line 32
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V

    .line 33
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->nativeClassInit()V

    .line 37
    new-instance v0, Lcom/dropbox/sync/android/NativeLib;

    invoke-direct {v0}, Lcom/dropbox/sync/android/NativeLib;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/NativeLib;->sInstance:Lcom/dropbox/sync/android/NativeLib;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeLib;->mTempDir:Ljava/io/File;

    .line 50
    new-instance v0, Lcom/dropbox/sync/android/NativeHttp;

    invoke-direct {v0}, Lcom/dropbox/sync/android/NativeHttp;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeLib;->mHttpKeepalive:Lcom/dropbox/sync/android/NativeHttp;

    .line 51
    return-void
.end method

.method public static ensureLoaded()V
    .locals 4

    .prologue
    .line 59
    sget-object v3, Lcom/dropbox/sync/android/NativeLib;->mLoadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 60
    :try_start_0
    sget-boolean v2, Lcom/dropbox/sync/android/NativeLib;->mLoaded:Z

    if-nez v2, :cond_0

    .line 61
    invoke-static {}, Lcom/dropbox/sync/android/DbxNativeLibConfig;->shouldLoadLibrary()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :try_start_1
    const-string v2, "DropboxSync"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .local v0, "e1":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/4 v2, 0x1

    :try_start_2
    sput-boolean v2, Lcom/dropbox/sync/android/NativeLib;->mLoaded:Z

    .line 84
    :cond_0
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    return-void

    .line 71
    .end local v0    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 73
    .restart local v0    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :try_start_3
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->nativeLibIsLoaded()Z

    move-result v2

    invoke-static {v2}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 74
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e2":Ljava/lang/UnsatisfiedLinkError;
    :try_start_4
    throw v0

    .line 84
    .end local v1    # "e2":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 80
    .end local v0    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    :try_start_5
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->nativeLibIsLoaded()Z

    move-result v2

    invoke-static {v2}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 81
    const/4 v2, 0x1

    sput-boolean v2, Lcom/dropbox/sync/android/NativeLib;->mLoaded:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method static exceptionFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxThrowable;
    .locals 1
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "nativeErrCode"    # I
    .param p2, "nativeMessage"    # Ljava/lang/String;
    .param p3, "userError"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p1}, Lcom/dropbox/sync/android/DbxError;->fromNative(I)Lcom/dropbox/sync/android/DbxError;

    move-result-object v0

    invoke-static {v0, p0, p2, p3}, Lcom/dropbox/sync/android/DbxError;->exceptionFrom(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxThrowable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/dropbox/sync/android/NativeLib;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/dropbox/sync/android/NativeLib;->sInstance:Lcom/dropbox/sync/android/NativeLib;

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreatePath(Ljava/lang/String;)J
.end method

.method private native nativeGetCanonicalPath(J)Ljava/lang/String;
.end method

.method private native nativeGetHashedPath(J)Ljava/lang/String;
.end method

.method private native nativeGetOriginalPath(J)Ljava/lang/String;
.end method

.method private native nativeIncrementPathRef(J)J
.end method

.method private static native nativeLibIsLoaded()Z
.end method

.method private native nativeReleasePathRef(J)V
.end method

.method private native nativeSetup(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method static reportCrash()V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 202
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xa

    if-lt v7, v8, :cond_0

    .line 204
    new-instance v4, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    const-string v7, "Terminating due to exception in native code"

    invoke-direct {v4, v7}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;)V

    .line 205
    .local v4, "err":Ljava/lang/Throwable;
    new-instance v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v5, v4}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 207
    .local v5, "info":Landroid/app/ApplicationErrorReport$CrashInfo;
    const-string v7, "com.android.internal.os.RuntimeInit"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 208
    .local v6, "runtimeInit":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getApplicationObject"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 210
    .local v2, "app":Ljava/lang/Object;
    const-string v7, "android.app.ActivityManagerNative"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 211
    .local v0, "activityManagerNative":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getDefault"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 213
    .local v1, "am":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "handleApplicationCrash"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/os/IBinder;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-virtual {v7, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v0    # "activityManagerNative":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "am":Ljava/lang/Object;
    .end local v2    # "app":Ljava/lang/Object;
    .end local v4    # "err":Ljava/lang/Throwable;
    .end local v5    # "info":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v6    # "runtimeInit":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 216
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    sget-object v7, Lcom/dropbox/sync/android/NativeLib;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t force crash dialog on API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - just terminating instead."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v3

    .line 227
    .restart local v3    # "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/dropbox/sync/android/NativeLib;->TAG:Ljava/lang/String;

    const-string v8, "Exception trying to report crash"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static throwFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "nativeErrCode"    # I
    .param p2, "nativeMessage"    # Ljava/lang/String;
    .param p3, "userError"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;,
            Lcom/dropbox/sync/android/DbxRuntimeException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p0, p1, p2, p3}, Lcom/dropbox/sync/android/NativeLib;->exceptionFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxThrowable;

    move-result-object v0

    invoke-interface {v0}, Lcom/dropbox/sync/android/DbxThrowable;->rethrow()V

    .line 243
    return-void
.end method


# virtual methods
.method public createPath(Ljava/lang/String;)J
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/NativeLib;->nativeCreatePath(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCanonicalPath(J)Ljava/lang/String;
    .locals 1
    .param p1, "pathHandle"    # J

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/NativeLib;->nativeGetCanonicalPath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashedPath(J)Ljava/lang/String;
    .locals 1
    .param p1, "pathHandle"    # J

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/NativeLib;->nativeGetHashedPath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalPath(J)Ljava/lang/String;
    .locals 1
    .param p1, "pathHandle"    # J

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/NativeLib;->nativeGetOriginalPath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeLib;->mTempDir:Ljava/io/File;

    return-object v0
.end method

.method public incrementPathRef(J)V
    .locals 1
    .param p1, "pathHandle"    # J

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/NativeLib;->nativeIncrementPathRef(J)J

    .line 136
    return-void
.end method

.method public releasePathRef(J)V
    .locals 1
    .param p1, "pathHandle"    # J

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/NativeLib;->nativeReleasePathRef(J)V

    .line 147
    return-void
.end method

.method public native setLogDir(Ljava/lang/String;)V
.end method

.method public setTempDir(Ljava/io/File;)V
    .locals 1
    .param p1, "tempDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/NativeLib;->nativeSetup(Ljava/lang/String;)V

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeLib;->mTempDir:Ljava/io/File;

    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

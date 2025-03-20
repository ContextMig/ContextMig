.class Lcom/dropbox/sync/android/NativeDatastoreManager;
.super Ljava/lang/Object;
.source "NativeDatastoreManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mApp:Lcom/dropbox/sync/android/NativeApp;

.field private mIsInitialized:Z

.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mNativeHandle:J

.field private final mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dropbox/sync/android/DbxDatastoreManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/sync/android/NativeDatastoreManager;->$assertionsDisabled:Z

    .line 19
    const-class v0, Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/NativeDatastoreManager;->TAG:Ljava/lang/String;

    .line 247
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V

    .line 248
    invoke-static {}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeClassInit()V

    .line 249
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/dropbox/sync/android/NativeApp;Lcom/dropbox/sync/android/DbxDatastoreManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "app"    # Lcom/dropbox/sync/android/NativeApp;
    .param p2, "dsm"    # Lcom/dropbox/sync/android/DbxDatastoreManager;
    .param p3, "cacheFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "App must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mApp:Lcom/dropbox/sync/android/NativeApp;

    .line 41
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Owner must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mOwner:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance v0, Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreLogger;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 46
    invoke-virtual {p1}, Lcom/dropbox/sync/android/NativeApp;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeInit(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    .line 47
    sget-boolean v0, Lcom/dropbox/sync/android/NativeDatastoreManager;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid native DatastoreManager handle."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 48
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mIsInitialized:Z

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/NativeEnv;Lcom/dropbox/sync/android/DbxDatastoreManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "env"    # Lcom/dropbox/sync/android/NativeEnv;
    .param p2, "dsm"    # Lcom/dropbox/sync/android/DbxDatastoreManager;
    .param p3, "cacheFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "App must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mApp:Lcom/dropbox/sync/android/NativeApp;

    .line 64
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Owner must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mOwner:Ljava/lang/ref/WeakReference;

    .line 66
    new-instance v0, Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreLogger;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 69
    invoke-virtual {p1}, Lcom/dropbox/sync/android/NativeEnv;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeInitLocal(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    .line 70
    sget-boolean v0, Lcom/dropbox/sync/android/NativeDatastoreManager;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid native DatastoreManager handle."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 71
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mIsInitialized:Z

    .line 72
    return-void
.end method

.method private addDbInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .param p2, "dsid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mtime"    # J
    .param p6, "role"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxDatastoreInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dropbox/sync/android/DbxDatastoreInfo;>;"
    :try_start_0
    new-instance v1, Lcom/dropbox/sync/android/DbxDatastoreInfo;

    invoke-static {p6, p7}, Lcom/dropbox/sync/android/NativeDatastore;->fromNativeRole(J)Lcom/dropbox/sync/android/DbxDatastore$Role;

    move-result-object v6

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/DbxDatastoreInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/dropbox/sync/android/DbxDatastore$Role;)V

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/NativeDatastoreManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 238
    throw v0

    .line 239
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/NativeDatastoreManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 241
    throw v0
.end method

.method private listCallback()V
    .locals 4

    .prologue
    .line 204
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/DbxDatastoreManager;

    .line 205
    .local v1, "owner":Lcom/dropbox/sync/android/DbxDatastoreManager;
    if-eqz v1, :cond_0

    .line 207
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->listCallback(Lcom/dropbox/sync/android/NativeDatastoreManager;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/NativeDatastoreManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/NativeDatastoreManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native nativeAllDatastoresClosed(J)Z
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeDeleteDs(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeFree(J)V
.end method

.method private static native nativeGetSyncStatus(J)I
.end method

.method private native nativeInit(JLjava/lang/String;)J
.end method

.method private native nativeInitLocal(JLjava/lang/String;)J
.end method

.method private native nativeListDsInfo(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxDatastoreInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeOpenDs(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeOpenOrCreateDs(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeSetOrClearListCallback(JZ)V
.end method

.method private static native nativeShutDown(J)V
.end method

.method private static native nativeUncacheDs(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private statusCallback()V
    .locals 4

    .prologue
    .line 187
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/DbxDatastoreManager;

    .line 188
    .local v1, "owner":Lcom/dropbox/sync/android/DbxDatastoreManager;
    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->statusCallback(Lcom/dropbox/sync/android/NativeDatastoreManager;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/NativeDatastoreManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/NativeDatastoreManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public allDatastoresClosed()Z
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeAllDatastoresClosed(J)Z

    move-result v0

    return v0
.end method

.method public createDatastore()Lcom/dropbox/sync/android/NativeDatastore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/dropbox/sync/android/NativeDatastore;

    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeOpenOrCreateDs(JLjava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0, v2, v3, v1}, Lcom/dropbox/sync/android/NativeDatastore;-><init>(JLcom/dropbox/sync/android/CoreLogger;)V

    return-object v0
.end method

.method public deleteDatastore(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeDeleteDs(JLjava/lang/String;)V

    .line 155
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/NativeDatastoreManager;->TAG:Ljava/lang/String;

    const-string v2, "NativeDatastoreManager finalized without being deinitialized."

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeFree(J)V

    goto :goto_0
.end method

.method getActivityState()Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;
    .locals 4

    .prologue
    .line 172
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    invoke-static {v2, v3}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeGetSyncStatus(J)I

    move-result v0

    .line 173
    .local v0, "status":I
    and-int/lit8 v1, v0, 0x11

    if-eqz v1, :cond_0

    .line 174
    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->FOREGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    .line 178
    :goto_0
    return-object v1

    .line 175
    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    .line 176
    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->BACKGROUND:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    goto :goto_0

    .line 178
    :cond_1
    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->IDLE:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    goto :goto_0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public listDatastoreInfo()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxDatastoreInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "out_info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dropbox/sync/android/DbxDatastoreInfo;>;"
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    invoke-direct {p0, v2, v3, v0}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeListDsInfo(JLjava/util/Map;)V

    .line 126
    return-object v0
.end method

.method public openDatastore(Ljava/lang/String;)Lcom/dropbox/sync/android/NativeDatastore;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/dropbox/sync/android/NativeDatastore;

    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    invoke-static {v2, v3, p1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeOpenDs(JLjava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0, v2, v3, v1}, Lcom/dropbox/sync/android/NativeDatastore;-><init>(JLcom/dropbox/sync/android/CoreLogger;)V

    return-object v0
.end method

.method public openOrCreateDatastore(Ljava/lang/String;)Lcom/dropbox/sync/android/NativeDatastore;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/dropbox/sync/android/NativeDatastore;

    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    invoke-static {v2, v3, p1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeOpenOrCreateDs(JLjava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0, v2, v3, v1}, Lcom/dropbox/sync/android/NativeDatastore;-><init>(JLcom/dropbox/sync/android/CoreLogger;)V

    return-object v0
.end method

.method public setListCallbackEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeSetOrClearListCallback(JZ)V

    .line 166
    return-void
.end method

.method public shutDown(Z)V
    .locals 2
    .param p1, "unlinked"    # Z

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 106
    monitor-exit p0

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mIsInitialized:Z

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeShutDown(J)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public uncacheDatastore(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/dropbox/sync/android/NativeDatastoreManager;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->nativeUncacheDs(JLjava/lang/String;)V

    .line 162
    return-void
.end method

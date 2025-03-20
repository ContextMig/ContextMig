.class public Lcom/dropbox/sync/android/DbxDatastoreManager;
.super Lcom/dropbox/sync/android/CoreClient;
.source "DbxDatastoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;,
        Lcom/dropbox/sync/android/DbxDatastoreManager$ListListener;
    }
.end annotation


# static fields
.field private static DATASTORES_CACHE_TAG:Ljava/lang/String;

.field public static DEFAULT_DATASTORE_ID:Ljava/lang/String;

.field private static final FACTORY:Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

.field private mIsOpen:Z

.field private final mListListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/dropbox/sync/android/DbxDatastoreManager$ListListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

.field private final mStatusUpdateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lcom/dropbox/sync/android/DbxDatastoreManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/DbxDatastoreManager;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "datastores"

    sput-object v0, Lcom/dropbox/sync/android/DbxDatastoreManager;->DATASTORES_CACHE_TAG:Ljava/lang/String;

    .line 40
    const-string v0, "default"

    sput-object v0, Lcom/dropbox/sync/android/DbxDatastoreManager;->DEFAULT_DATASTORE_ID:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;-><init>(Lcom/dropbox/sync/android/DbxDatastoreManager$1;)V

    sput-object v0, Lcom/dropbox/sync/android/DbxDatastoreManager;->FACTORY:Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;)V
    .locals 3
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "app"    # Lcom/dropbox/sync/android/NativeApp;
    .param p3, "cacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p3}, Lcom/dropbox/sync/android/CoreClient;-><init>(Lcom/dropbox/sync/android/DbxAccount;Ljava/io/File;)V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mStatusUpdateLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mListListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mIsOpen:Z

    .line 121
    new-instance v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->getCoreAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreAccountManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    .line 122
    new-instance v0, Lcom/dropbox/sync/android/NativeDatastoreManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/datastoresv0.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p0, v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;-><init>(Lcom/dropbox/sync/android/NativeApp;Lcom/dropbox/sync/android/DbxDatastoreManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mIsOpen:Z

    .line 124
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->statusCallback(Lcom/dropbox/sync/android/NativeDatastoreManager;)V

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;Lcom/dropbox/sync/android/DbxDatastoreManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "x1"    # Lcom/dropbox/sync/android/NativeApp;
    .param p3, "x2"    # Ljava/io/File;
    .param p4, "x3"    # Lcom/dropbox/sync/android/DbxDatastoreManager$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxDatastoreManager;-><init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeEnv;Ljava/io/File;)V
    .locals 3
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "env"    # Lcom/dropbox/sync/android/NativeEnv;
    .param p3, "cacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1, p3}, Lcom/dropbox/sync/android/CoreClient;-><init>(Lcom/dropbox/sync/android/DbxAccount;Ljava/io/File;)V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mStatusUpdateLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mListListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mIsOpen:Z

    .line 129
    new-instance v0, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->getCoreAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreAccountManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    .line 130
    new-instance v0, Lcom/dropbox/sync/android/NativeDatastoreManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/datastoresv0.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p0, v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;-><init>(Lcom/dropbox/sync/android/NativeEnv;Lcom/dropbox/sync/android/DbxDatastoreManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mIsOpen:Z

    .line 132
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->statusCallback(Lcom/dropbox/sync/android/NativeDatastoreManager;)V

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeEnv;Ljava/io/File;Lcom/dropbox/sync/android/DbxDatastoreManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "x1"    # Lcom/dropbox/sync/android/NativeEnv;
    .param p3, "x2"    # Ljava/io/File;
    .param p4, "x3"    # Lcom/dropbox/sync/android/DbxDatastoreManager$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxDatastoreManager;-><init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeEnv;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/dropbox/sync/android/DbxDatastoreManager;->DATASTORES_CACHE_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static forAccount(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/sync/android/DbxDatastoreManager;
    .locals 1
    .param p0, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException$Unauthorized;
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/dropbox/sync/android/DbxDatastoreManager;->FACTORY:Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxAccount;->getClient(Lcom/dropbox/sync/android/CoreClient$Factory;)Lcom/dropbox/sync/android/CoreClient;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxDatastoreManager;

    return-object v0
.end method

.method public static localManager(Lcom/dropbox/sync/android/DbxAccountManager;)Lcom/dropbox/sync/android/DbxDatastoreManager;
    .locals 3
    .param p0, "acctMgr"    # Lcom/dropbox/sync/android/DbxAccountManager;

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxAccountManager;->getAccountManager()Lcom/dropbox/sync/android/CoreAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/sync/android/CoreAccountManager;->getLocalAccount()Lcom/dropbox/sync/android/DbxAccount;

    move-result-object v1

    .line 113
    .local v1, "localAccount":Lcom/dropbox/sync/android/DbxAccount;
    sget-object v2, Lcom/dropbox/sync/android/DbxDatastoreManager;->FACTORY:Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/DbxAccount;->getClient(Lcom/dropbox/sync/android/CoreClient$Factory;)Lcom/dropbox/sync/android/CoreClient;

    move-result-object v2

    check-cast v2, Lcom/dropbox/sync/android/DbxDatastoreManager;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException$Unauthorized; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 114
    .end local v1    # "localAccount":Lcom/dropbox/sync/android/DbxAccount;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lcom/dropbox/sync/android/DbxException$Unauthorized;
    const-string v2, "Local datastore manager is unauthorized."

    invoke-static {v2, v0}, Lcom/dropbox/sync/android/CoreAssert;->unrecoverable(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public declared-synchronized addListListener(Lcom/dropbox/sync/android/DbxDatastoreManager$ListListener;)V
    .locals 2
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxDatastoreManager$ListListener;

    .prologue
    .line 437
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 438
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mIsOpen:Z

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mListListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->setListCallbackEnabled(Z)V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mListListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public createDatastore()Lcom/dropbox/sync/android/DbxDatastore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->createDatastore()Lcom/dropbox/sync/android/NativeDatastore;

    move-result-object v0

    .line 377
    .local v0, "nds":Lcom/dropbox/sync/android/NativeDatastore;
    new-instance v1, Lcom/dropbox/sync/android/DbxDatastore;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastore;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/dropbox/sync/android/DbxDatastore;-><init>(Lcom/dropbox/sync/android/DbxDatastoreManager;Ljava/lang/String;Lcom/dropbox/sync/android/NativeDatastore;)V

    return-object v1
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
    .line 390
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxDatastore;->checkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->deleteDatastore(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->shutDown(Z)V

    .line 200
    return-void
.end method

.method public getAccount()Lcom/dropbox/sync/android/DbxAccount;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    goto :goto_0
.end method

.method getFactory()Lcom/dropbox/sync/android/CoreClient$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/sync/android/CoreClient$Factory",
            "<+",
            "Lcom/dropbox/sync/android/CoreClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    sget-object v0, Lcom/dropbox/sync/android/DbxDatastoreManager;->FACTORY:Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->isLocal()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isShutDown()Z
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastoreManager;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method listCallback(Lcom/dropbox/sync/android/NativeDatastoreManager;)V
    .locals 2
    .param p1, "ndsm"    # Lcom/dropbox/sync/android/NativeDatastoreManager;

    .prologue
    .line 481
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mListListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 482
    .local v0, "postListeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxDatastoreManager$ListListener;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    new-instance v1, Lcom/dropbox/sync/android/DbxDatastoreManager$1;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/sync/android/DbxDatastoreManager$1;-><init>(Lcom/dropbox/sync/android/DbxDatastoreManager;Ljava/util/Iterator;)V

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreAndroidUtil;->postUserCallback(Ljava/lang/Runnable;)V

    .line 492
    :cond_0
    return-void
.end method

.method public listDatastoreInfo()Ljava/util/Map;
    .locals 1
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
    .line 298
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastoreManager;->listDatastoreInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public listDatastores()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
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
    .line 281
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->listDatastoreInfo()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public migrateToAccount(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/sync/android/DbxDatastoreManager;
    .locals 4
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->isLocal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v3, "Current DbxDatastoreManager must be local to migrate."

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 166
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->isLocal()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAccount;->isLinked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 167
    :cond_1
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v3, "Migration requires a linked target account"

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v2, p1}, Lcom/dropbox/sync/android/DbxAccount;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v3, "Cannot migrate to the same account."

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_3
    sget-object v2, Lcom/dropbox/sync/android/DbxDatastoreManager;->FACTORY:Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;

    invoke-virtual {p1, v2}, Lcom/dropbox/sync/android/DbxAccount;->hasClient(Lcom/dropbox/sync/android/CoreClient$Factory;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 173
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v3, "Can\'t link to an account with an active datastore manager."

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/NativeDatastoreManager;->allDatastoresClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 176
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v3, "Can\'t migrate datastore manager when datastores are open."

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_5
    sget-object v2, Lcom/dropbox/sync/android/DbxDatastoreManager;->DATASTORES_CACHE_TAG:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/dropbox/sync/android/DbxAccount;->getCacheDirForLocalClient(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 181
    .local v0, "localRoot":Ljava/io/File;
    sget-object v2, Lcom/dropbox/sync/android/DbxDatastoreManager;->DATASTORES_CACHE_TAG:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/dropbox/sync/android/DbxAccount;->getCacheDirForClient(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 182
    .local v1, "targetRoot":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    invoke-static {v1}, Lcom/dropbox/sync/android/CoreFileUtil;->recursiveDelete(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 184
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v3, "Unable to delete Datastore cache before migration."

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_6
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 189
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v3, "Unable to migrate Datastore cache."

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_7
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->shutDown()V

    .line 193
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    invoke-static {p1}, Lcom/dropbox/sync/android/DbxDatastoreManager;->forAccount(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/sync/android/DbxDatastoreManager;

    move-result-object v2

    return-object v2
.end method

.method public openDatastore(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxDatastore;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lcom/dropbox/sync/android/DbxDatastore;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxDatastore;->checkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/NativeDatastoreManager;->openDatastore(Ljava/lang/String;)Lcom/dropbox/sync/android/NativeDatastore;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/dropbox/sync/android/DbxDatastore;-><init>(Lcom/dropbox/sync/android/DbxDatastoreManager;Ljava/lang/String;Lcom/dropbox/sync/android/NativeDatastore;)V

    return-object v0
.end method

.method public openDefaultDatastore()Lcom/dropbox/sync/android/DbxDatastore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lcom/dropbox/sync/android/DbxDatastoreManager;->DEFAULT_DATASTORE_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->openOrCreateDatastore(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxDatastore;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatastore(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxDatastore;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lcom/dropbox/sync/android/DbxDatastore;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxDatastore;->checkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/NativeDatastoreManager;->openOrCreateDatastore(Ljava/lang/String;)Lcom/dropbox/sync/android/NativeDatastore;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/dropbox/sync/android/DbxDatastore;-><init>(Lcom/dropbox/sync/android/DbxDatastoreManager;Ljava/lang/String;Lcom/dropbox/sync/android/NativeDatastore;)V

    return-object v0
.end method

.method public declared-synchronized removeListListener(Lcom/dropbox/sync/android/DbxDatastoreManager$ListListener;)V
    .locals 3
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxDatastoreManager$ListListener;

    .prologue
    .line 457
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Listener must be non-null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 458
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mIsOpen:Z

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mListListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    .line 460
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mListListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 461
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mListListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/NativeDatastoreManager;->setListCallbackEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    .end local v0    # "wasEmpty":Z
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->shutDown(Z)V

    .line 229
    return-void
.end method

.method shutDown(Z)V
    .locals 4
    .param p1, "unlinked"    # Z

    .prologue
    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 235
    monitor-exit p0

    .line 248
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mIsOpen:Z

    .line 238
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAccount;->getLogger()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/DbxDatastoreManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "local "

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DbxDatastoreManager for uid=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->setListCallbackEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mListListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 242
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->shutDown(Z)V

    .line 243
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    invoke-virtual {v0, p0}, Lcom/dropbox/sync/android/DbxAccount;->onClientStopped(Lcom/dropbox/sync/android/CoreClient;)V

    .line 244
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    sget-object v1, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;->IDLE:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->setState(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;)V

    goto :goto_0

    .line 238
    :cond_1
    :try_start_1
    const-string v0, ""

    goto :goto_1

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method statusCallback(Lcom/dropbox/sync/android/NativeDatastoreManager;)V
    .locals 3
    .param p1, "ndsm"    # Lcom/dropbox/sync/android/NativeDatastoreManager;

    .prologue
    .line 471
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mStatusUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mActivityTracker:Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->getActivityState()Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker;->setState(Lcom/dropbox/sync/android/DbxSyncService$ActivityTracker$State;)V

    .line 473
    monitor-exit v1

    .line 474
    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 410
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreManager;->mNativeDatastoreManager:Lcom/dropbox/sync/android/NativeDatastoreManager;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxDatastore;->checkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/NativeDatastoreManager;->uncacheDatastore(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.class public Lcom/fsck/k9/mailstore/LockableDatabase;
.super Ljava/lang/Object;
.source "LockableDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;,
        Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
        Lcom/fsck/k9/mailstore/LockableDatabase$SchemaDefinition;,
        Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inTransaction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mReadLock:Ljava/util/concurrent/locks/Lock;

.field private mSchemaDefinition:Lcom/fsck/k9/mailstore/LockableDatabase$SchemaDefinition;

.field private final mStorageListener:Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;

.field private mStorageProviderId:Ljava/lang/String;

.field private final mWriteLock:Ljava/util/concurrent/locks/Lock;

.field private uUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/fsck/k9/mailstore/LockableDatabase$SchemaDefinition;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uUid"    # Ljava/lang/String;
    .param p3, "schemaDefinition"    # Lcom/fsck/k9/mailstore/LockableDatabase$SchemaDefinition;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 123
    .local v0, "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 124
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 127
    new-instance v1, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/fsck/k9/mailstore/LockableDatabase$1;)V

    iput-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageListener:Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;

    .line 137
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/ThreadLocal;

    .line 152
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->uUid:Ljava/lang/String;

    .line 154
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Lcom/fsck/k9/mailstore/LockableDatabase$SchemaDefinition;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mailstore/LockableDatabase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LockableDatabase;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/mailstore/LockableDatabase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LockableDatabase;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->uUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/mailstore/LockableDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LockableDatabase;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mailstore/LockableDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LockableDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->openOrCreateDataspace()V

    return-void
.end method

.method private delete(Z)V
    .locals 12
    .param p1, "recreate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->lockWrite()V

    .line 460
    :try_start_0
    iget-object v8, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mailstore/StorageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 466
    .local v6, "storageManager":Lcom/fsck/k9/mailstore/StorageManager;
    :try_start_2
    iget-object v8, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->uUid:Ljava/lang/String;

    iget-object v9, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/fsck/k9/mailstore/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 467
    .local v1, "attachmentDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 468
    .local v4, "attachments":[Ljava/io/File;
    array-length v8, v4

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v0, v4, v7

    .line 469
    .local v0, "attachment":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 471
    .local v3, "attachmentWasDeleted":Z
    if-nez v3, :cond_0

    .line 472
    const-string v9, "Attachment was not deleted!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    .end local v3    # "attachmentWasDeleted":Z
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 461
    .end local v0    # "attachment":Ljava/io/File;
    .end local v1    # "attachmentDirectory":Ljava/io/File;
    .end local v4    # "attachments":[Ljava/io/File;
    .end local v6    # "storageManager":Lcom/fsck/k9/mailstore/StorageManager;
    :catch_0
    move-exception v5

    .line 462
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "Exception caught in DB close: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 498
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    throw v7

    .line 476
    .restart local v1    # "attachmentDirectory":Ljava/io/File;
    .restart local v4    # "attachments":[Ljava/io/File;
    .restart local v6    # "storageManager":Lcom/fsck/k9/mailstore/StorageManager;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 477
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 478
    .local v2, "attachmentDirectoryWasDeleted":Z
    if-nez v2, :cond_2

    .line 479
    const-string v7, "Attachment directory was not deleted!"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 486
    .end local v1    # "attachmentDirectory":Ljava/io/File;
    .end local v2    # "attachmentDirectoryWasDeleted":Z
    .end local v4    # "attachments":[Ljava/io/File;
    :cond_2
    :goto_2
    :try_start_5
    iget-object v7, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->uUid:Ljava/lang/String;

    iget-object v8, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/fsck/k9/mailstore/StorageManager;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/fsck/k9/mailstore/LockableDatabase;->deleteDatabase(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 491
    :goto_3
    if-eqz p1, :cond_3

    .line 492
    :try_start_6
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->openOrCreateDataspace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 498
    :goto_4
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    .line 500
    return-void

    .line 482
    :catch_1
    move-exception v5

    .line 483
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v7, "Exception caught in clearing attachments: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 487
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 488
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v7, "LockableDatabase: delete(): Unable to delete backing DB file"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Ltimber/log/Timber;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 495
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageListener:Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;

    invoke-virtual {v7, v8}, Lcom/fsck/k9/mailstore/StorageManager;->removeListener(Lcom/fsck/k9/mailstore/StorageManager$StorageListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method private deleteDatabase(Ljava/io/File;)V
    .locals 4
    .param p1, "database"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 505
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 506
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    .line 511
    .local v0, "deleted":Z
    :goto_0
    if-nez v0, :cond_0

    .line 512
    const-string v1, "LockableDatabase: deleteDatabase(): No files deleted."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :cond_0
    return-void

    .line 508
    .end local v0    # "deleted":Z
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 509
    .restart local v0    # "deleted":Z
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private doOpenOrCreateDb(Ljava/io/File;)V
    .locals 4
    .param p1, "databaseFile"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 390
    const-string v0, "InternalStorage"

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-static {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method private getStorageManager()Lcom/fsck/k9/mailstore/StorageManager;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v0

    return-object v0
.end method

.method private openOrCreateDataspace()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->lockWrite()V

    .line 370
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->prepareStorage(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 372
    .local v0, "databaseFile":Ljava/io/File;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->doOpenOrCreateDb(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Lcom/fsck/k9/mailstore/LockableDatabase$SchemaDefinition;

    invoke-interface {v3}, Lcom/fsck/k9/mailstore/LockableDatabase$SchemaDefinition;->getVersion()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 382
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Lcom/fsck/k9/mailstore/LockableDatabase$SchemaDefinition;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase$SchemaDefinition;->doDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    .line 387
    return-void

    .line 373
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v2, "Unable to open DB %s - removing file and retrying"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 377
    const-string v2, "Failed to remove %s that couldn\'t be opened"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :cond_1
    invoke-direct {p0, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->doOpenOrCreateDb(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 385
    .end local v0    # "databaseFile":Ljava/io/File;
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    throw v2
.end method


# virtual methods
.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->delete(Z)V

    .line 445
    return-void
.end method

.method public execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    .locals 13
    .param p1, "transactional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;, "Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback<TT;>;"
    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 265
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->lockRead()V

    .line 266
    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 268
    .local v3, "doTransaction":Z
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v2

    .line 269
    .local v2, "debug":Z
    if-eqz v3, :cond_0

    .line 270
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/ThreadLocal;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 271
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2, v5}, Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object v4

    .line 275
    .local v4, "result":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1

    .line 276
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :cond_1
    if-eqz v3, :cond_2

    .line 282
    if-eqz v2, :cond_5

    .line 283
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 288
    .local v0, "begin":J
    :goto_1
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 289
    if-eqz v2, :cond_2

    .line 290
    const-string v5, "LockableDatabase: Transaction ended, took %d ms / %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    .line 292
    invoke-virtual {v8}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 290
    invoke-static {v5, v6}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    .end local v0    # "begin":J
    :cond_2
    if-eqz v3, :cond_3

    .line 298
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 300
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockRead()V

    .line 278
    return-object v4

    .end local v2    # "debug":Z
    .end local v3    # "doTransaction":Z
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :cond_4
    move v3, v5

    .line 266
    goto :goto_0

    .line 285
    .restart local v2    # "debug":Z
    .restart local v3    # "doTransaction":Z
    .restart local v4    # "result":Ljava/lang/Object;, "TT;"
    :cond_5
    const-wide/16 v0, 0x0

    .restart local v0    # "begin":J
    goto :goto_1

    .line 280
    .end local v0    # "begin":J
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_6

    .line 282
    if-eqz v2, :cond_8

    .line 283
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 288
    .restart local v0    # "begin":J
    :goto_2
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 289
    if-eqz v2, :cond_6

    .line 290
    const-string v6, "LockableDatabase: Transaction ended, took %d ms / %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    .line 292
    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    .line 290
    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    .end local v0    # "begin":J
    :cond_6
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 297
    .end local v2    # "debug":Z
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_7

    .line 298
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 300
    :cond_7
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockRead()V

    throw v5

    .line 285
    .restart local v2    # "debug":Z
    :cond_8
    const-wide/16 v0, 0x0

    .restart local v0    # "begin":J
    goto :goto_2
.end method

.method public getStorageProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    return-object v0
.end method

.method protected lockRead()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/StorageManager;->lockProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 187
    throw v0

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected lockWrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->lockWrite(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method protected lockWrite(Ljava/lang/String;)V
    .locals 2
    .param p1, "providerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fsck/k9/mailstore/StorageManager;->lockProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 233
    throw v0

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->lockWrite()V

    .line 355
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->openOrCreateDataspace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    .line 359
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageListener:Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/StorageManager;->addListener(Lcom/fsck/k9/mailstore/StorageManager$StorageListener;)V

    .line 360
    return-void

    .line 357
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    throw v0
.end method

.method protected prepareStorage(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p1, "providerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v4

    .line 409
    .local v4, "storageManager":Lcom/fsck/k9/mailstore/StorageManager;
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/fsck/k9/mailstore/StorageManager;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 410
    .local v2, "databaseFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 411
    .local v3, "databaseParentDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 414
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 416
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 417
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 419
    new-instance v5, Lcom/fsck/k9/mailstore/UnavailableStorageException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to access: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fsck/k9/mailstore/UnavailableStorageException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 421
    :cond_1
    const-string v5, ".nomedia"

    invoke-static {v3, v5}, Lcom/fsck/k9/helper/FileHelper;->touchFile(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    :cond_2
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/fsck/k9/mailstore/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 425
    .local v0, "attachmentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 426
    .local v1, "attachmentParentDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 428
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 429
    const-string v5, ".nomedia"

    invoke-static {v1, v5}, Lcom/fsck/k9/helper/FileHelper;->touchFile(Ljava/io/File;Ljava/lang/String;)V

    .line 431
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 435
    :cond_4
    return-object v2
.end method

.method public recreate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 448
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->delete(Z)V

    .line 449
    return-void
.end method

.method public setStorageProviderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStorageProviderId"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public switchProvider(Ljava/lang/String;)V
    .locals 7
    .param p1, "newProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 310
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    const-string v4, "LockableDatabase: Ignoring provider switch request as they are equal: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    .line 316
    .local v2, "oldProviderId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->lockWrite(Ljava/lang/String;)V

    .line 318
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LockableDatabase;->lockWrite(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    :try_start_1
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v3

    .line 327
    .local v3, "storageManager":Lcom/fsck/k9/mailstore/StorageManager;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/fsck/k9/mailstore/StorageManager;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 330
    .local v1, "oldDatabase":Ljava/io/File;
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LockableDatabase;->prepareStorage(Ljava/lang/String;)Ljava/io/File;

    .line 333
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/fsck/k9/mailstore/StorageManager;->getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fsck/k9/helper/FileHelper;->moveRecursive(Ljava/io/File;Ljava/io/File;)V

    .line 335
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->uUid:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/fsck/k9/mailstore/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->uUid:Ljava/lang/String;

    .line 336
    invoke-virtual {v3, v5, p1}, Lcom/fsck/k9/mailstore/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 335
    invoke-static {v4, v5}, Lcom/fsck/k9/helper/FileHelper;->moveRecursive(Ljava/io/File;Ljava/io/File;)V

    .line 338
    invoke-direct {p0, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->deleteDatabase(Ljava/io/File;)V

    .line 340
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    .line 343
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->openOrCreateDataspace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 348
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v1    # "oldDatabase":Ljava/io/File;
    .end local v3    # "storageManager":Lcom/fsck/k9/mailstore/StorageManager;
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "Unable to close DB on local store migration"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 348
    :catchall_1
    move-exception v4

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite(Ljava/lang/String;)V

    throw v4
.end method

.method protected unlockRead()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/StorageManager;->unlockProvider(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 194
    return-void
.end method

.method protected unlockWrite()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mStorageProviderId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method protected unlockWrite(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageManager()Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/StorageManager;->unlockProvider(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 244
    return-void
.end method

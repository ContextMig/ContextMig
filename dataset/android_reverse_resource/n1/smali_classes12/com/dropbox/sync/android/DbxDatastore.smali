.class public Lcom/dropbox/sync/android/DbxDatastore;
.super Ljava/lang/Object;
.source "DbxDatastore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxDatastore$SyncStatusListener;,
        Lcom/dropbox/sync/android/DbxDatastore$Role;
    }
.end annotation


# static fields
.field public static BASE_CHANGE_SIZE:J

.field public static BASE_DATASTORE_SIZE:J

.field public static BASE_UNSYNCED_CHANGES_SIZE:J

.field public static DATASTORE_SIZE_LIMIT:J

.field public static RECORD_COUNT_LIMIT:J

.field public static UNSYNCED_CHANGES_SIZE_LIMIT:J


# instance fields
.field private final mId:Ljava/lang/String;

.field private mIsOpen:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxDatastore$SyncStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/dropbox/sync/android/DbxDatastoreManager;

.field private final mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x64

    .line 47
    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/dropbox/sync/android/DbxDatastore;->DATASTORE_SIZE_LIMIT:J

    .line 52
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/dropbox/sync/android/DbxDatastore;->UNSYNCED_CHANGES_SIZE_LIMIT:J

    .line 57
    const-wide/32 v0, 0x186a0

    sput-wide v0, Lcom/dropbox/sync/android/DbxDatastore;->RECORD_COUNT_LIMIT:J

    .line 66
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/dropbox/sync/android/DbxDatastore;->BASE_DATASTORE_SIZE:J

    .line 75
    sput-wide v2, Lcom/dropbox/sync/android/DbxDatastore;->BASE_UNSYNCED_CHANGES_SIZE:J

    .line 84
    sput-wide v2, Lcom/dropbox/sync/android/DbxDatastore;->BASE_CHANGE_SIZE:J

    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/DbxDatastoreManager;Ljava/lang/String;Lcom/dropbox/sync/android/NativeDatastore;)V
    .locals 2
    .param p1, "mgr"    # Lcom/dropbox/sync/android/DbxDatastoreManager;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "ds"    # Lcom/dropbox/sync/android/NativeDatastore;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mListeners:Ljava/util/Set;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mIsOpen:Z

    .line 175
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Manager can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxDatastore;->mManager:Lcom/dropbox/sync/android/DbxDatastoreManager;

    .line 177
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxDatastore;->checkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mId:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    .line 179
    invoke-virtual {p3, p0}, Lcom/dropbox/sync/android/NativeDatastore;->setOwner(Lcom/dropbox/sync/android/DbxDatastore;)V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mIsOpen:Z

    .line 181
    return-void
.end method

.method static checkId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxDatastore;->isValidId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal datastore ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    return-object p0
.end method

.method private checkShareable(Ljava/lang/String;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxDatastore;->isShareable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a shareable datastore."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    return-void
.end method

.method static isValidId(Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 520
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ID can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    invoke-static {p0}, Lcom/dropbox/sync/android/NativeDatastore;->nativeIsValidId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static openDefault(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/sync/android/DbxDatastore;
    .locals 1
    .param p0, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->forAccount(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/sync/android/DbxDatastoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->openDefaultDatastore()Lcom/dropbox/sync/android/DbxDatastore;

    move-result-object v0

    return-object v0
.end method

.method public static openDefaultLocal(Lcom/dropbox/sync/android/DbxAccountManager;)Lcom/dropbox/sync/android/DbxDatastore;
    .locals 1
    .param p0, "acctMgr"    # Lcom/dropbox/sync/android/DbxAccountManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->localManager(Lcom/dropbox/sync/android/DbxAccountManager;)Lcom/dropbox/sync/android/DbxDatastoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxDatastoreManager;->openDefaultDatastore()Lcom/dropbox/sync/android/DbxDatastore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSyncStatusListener(Lcom/dropbox/sync/android/DbxDatastore$SyncStatusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxDatastore$SyncStatusListener;

    .prologue
    .line 484
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener should not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mIsOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mIsOpen:Z

    .line 219
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastore;->close()V

    .line 220
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteRole(Lcom/dropbox/sync/android/DbxPrincipal;)V
    .locals 2
    .param p1, "principal"    # Lcom/dropbox/sync/android/DbxPrincipal;

    .prologue
    .line 329
    const-string v0, "deleteRole"

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxDatastore;->checkShareable(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPrincipal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->deleteRole(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 557
    if-ne p0, p1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v1

    .line 558
    :cond_1
    instance-of v3, p1, Lcom/dropbox/sync/android/DbxDatastore;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 559
    check-cast v0, Lcom/dropbox/sync/android/DbxDatastore;

    .line 561
    .local v0, "ods":Lcom/dropbox/sync/android/DbxDatastore;
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxDatastore;->mManager:Lcom/dropbox/sync/android/DbxDatastoreManager;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxDatastore;->mManager:Lcom/dropbox/sync/android/DbxDatastoreManager;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxDatastore;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxDatastore;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v1, "DbxDatastore was finalized without being closed."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    return-void
.end method

.method public getEffectiveRole()Lcom/dropbox/sync/android/DbxDatastore$Role;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mId:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->OWNER:Lcom/dropbox/sync/android/DbxDatastore$Role;

    .line 253
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastore;->getEffectiveRole()Lcom/dropbox/sync/android/DbxDatastore$Role;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getManager()Lcom/dropbox/sync/android/DbxDatastoreManager;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mManager:Lcom/dropbox/sync/android/DbxDatastoreManager;

    return-object v0
.end method

.method public getMtime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastore;->getMtime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getRecordCount()J
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastore;->getRecordCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRole(Lcom/dropbox/sync/android/DbxPrincipal;)Lcom/dropbox/sync/android/DbxDatastore$Role;
    .locals 2
    .param p1, "principal"    # Lcom/dropbox/sync/android/DbxPrincipal;

    .prologue
    .line 303
    const-string v0, "getRole"

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxDatastore;->checkShareable(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPrincipal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->getRole(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->fromNativeRole(J)Lcom/dropbox/sync/android/DbxDatastore$Role;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastore;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncStatus()Lcom/dropbox/sync/android/DbxDatastoreStatus;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastore;->getStatus()Lcom/dropbox/sync/android/DbxDatastoreStatus;

    move-result-object v0

    return-object v0
.end method

.method public getTable(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxTable;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxTable;->checkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/sync/android/NativeDatastore;->getTable(Lcom/dropbox/sync/android/DbxDatastore;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxTable;

    move-result-object v0

    return-object v0
.end method

.method public getTables()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxTable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0, p0}, Lcom/dropbox/sync/android/NativeDatastore;->getTables(Lcom/dropbox/sync/android/DbxDatastore;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastore;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsyncedChangesSize()J
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/NativeDatastore;->getUnsyncedChangesSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 567
    const/16 v0, 0x1f

    .line 568
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 569
    .local v1, "result":I
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxDatastore;->mManager:Lcom/dropbox/sync/android/DbxDatastoreManager;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 570
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxDatastore;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 571
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mIsOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShareable()Z
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mId:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxDatastore;->getEffectiveRole()Lcom/dropbox/sync/android/DbxDatastore$Role;

    move-result-object v0

    sget-object v1, Lcom/dropbox/sync/android/DbxDatastore$Role;->OWNER:Lcom/dropbox/sync/android/DbxDatastore$Role;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxDatastore;->getEffectiveRole()Lcom/dropbox/sync/android/DbxDatastore$Role;

    move-result-object v0

    sget-object v1, Lcom/dropbox/sync/android/DbxDatastore$Role;->EDITOR:Lcom/dropbox/sync/android/DbxDatastore$Role;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listRoles()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/dropbox/sync/android/DbxPrincipal;",
            "Lcom/dropbox/sync/android/DbxDatastore$Role;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    const-string v10, "listRoles"

    invoke-direct {p0, v10}, Lcom/dropbox/sync/android/DbxDatastore;->checkShareable(Ljava/lang/String;)V

    .line 267
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v6, "res":Ljava/util/Map;, "Ljava/util/Map<Lcom/dropbox/sync/android/DbxPrincipal;Lcom/dropbox/sync/android/DbxDatastore$Role;>;"
    const-string v10, ":acl"

    invoke-virtual {p0, v10}, Lcom/dropbox/sync/android/DbxDatastore;->getTable(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxTable;

    move-result-object v7

    .line 271
    .local v7, "tab":Lcom/dropbox/sync/android/DbxTable;
    :try_start_0
    invoke-virtual {v7}, Lcom/dropbox/sync/android/DbxTable;->query()Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 275
    .local v4, "qr":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxTable$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dropbox/sync/android/DbxRecord;

    .line 279
    .local v5, "rec":Lcom/dropbox/sync/android/DbxRecord;
    :try_start_1
    const-string v10, "role"

    invoke-virtual {v5, v10}, Lcom/dropbox/sync/android/DbxRecord;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/dropbox/sync/android/DbxRuntimeException$BadType; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v8

    .line 287
    .local v8, "role":J
    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxRecord;->getId()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "prin":Ljava/lang/String;
    invoke-static {v3}, Lcom/dropbox/sync/android/DbxPrincipal;->get(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxPrincipal;

    move-result-object v2

    .line 290
    .local v2, "p":Lcom/dropbox/sync/android/DbxPrincipal;
    if-eqz v2, :cond_0

    .line 291
    invoke-static {v8, v9}, Lcom/dropbox/sync/android/NativeDatastore;->fromNativeRole(J)Lcom/dropbox/sync/android/DbxDatastore$Role;

    move-result-object v10

    invoke-interface {v6, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lcom/dropbox/sync/android/DbxPrincipal;
    .end local v3    # "prin":Ljava/lang/String;
    .end local v4    # "qr":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .end local v5    # "rec":Lcom/dropbox/sync/android/DbxRecord;
    .end local v8    # "role":J
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    new-instance v10, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    const-string v11, "Failed to query :acl table"

    invoke-direct {v10, v11}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;)V

    throw v10

    .line 280
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "qr":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .restart local v5    # "rec":Lcom/dropbox/sync/android/DbxRecord;
    :catch_1
    move-exception v0

    .line 282
    .local v0, "e":Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;
    goto :goto_0

    .line 283
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;
    :catch_2
    move-exception v0

    .line 285
    .local v0, "e":Lcom/dropbox/sync/android/DbxRuntimeException$BadType;
    goto :goto_0

    .line 294
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxRuntimeException$BadType;
    .end local v5    # "rec":Lcom/dropbox/sync/android/DbxRecord;
    :cond_1
    return-object v6
.end method

.method public removeSyncStatusListener(Lcom/dropbox/sync/android/DbxDatastore$SyncStatusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxDatastore$SyncStatusListener;

    .prologue
    .line 498
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener should not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 500
    return-void
.end method

.method public setRole(Lcom/dropbox/sync/android/DbxPrincipal;Lcom/dropbox/sync/android/DbxDatastore$Role;)V
    .locals 4
    .param p1, "principal"    # Lcom/dropbox/sync/android/DbxPrincipal;
    .param p2, "role"    # Lcom/dropbox/sync/android/DbxDatastore$Role;

    .prologue
    .line 314
    const-string v0, "setRole"

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxDatastore;->checkShareable(Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/dropbox/sync/android/DbxDatastore$Role;->NONE:Lcom/dropbox/sync/android/DbxDatastore$Role;

    if-ne p2, v0, :cond_0

    .line 316
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxDatastore;->deleteRole(Lcom/dropbox/sync/android/DbxPrincipal;)V

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxPrincipal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/dropbox/sync/android/NativeDatastore;->toNativeRole(Lcom/dropbox/sync/android/DbxDatastore$Role;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/sync/android/NativeDatastore;->setRole(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/NativeDatastore;->setTitle(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method statusCallback()V
    .locals 2

    .prologue
    .line 544
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastore;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 545
    .local v0, "postListeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxDatastore$SyncStatusListener;>;"
    new-instance v1, Lcom/dropbox/sync/android/DbxDatastore$1;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/sync/android/DbxDatastore$1;-><init>(Lcom/dropbox/sync/android/DbxDatastore;Ljava/util/Iterator;)V

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreAndroidUtil;->postUserCallback(Ljava/lang/Runnable;)V

    .line 553
    return-void
.end method

.method public sync()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxRecord;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastore;->mNativeDatastore:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-virtual {v0, p0}, Lcom/dropbox/sync/android/NativeDatastore;->sync(Lcom/dropbox/sync/android/DbxDatastore;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<DbxDatastore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastore;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

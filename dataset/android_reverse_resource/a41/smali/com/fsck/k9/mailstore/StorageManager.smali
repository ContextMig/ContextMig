.class public Lcom/fsck/k9/mailstore/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;,
        Lcom/fsck/k9/mailstore/StorageManager$SamsungGalaxySStorageProvider;,
        Lcom/fsck/k9/mailstore/StorageManager$HtcIncredibleStorageProvider;,
        Lcom/fsck/k9/mailstore/StorageManager$ExternalStorageProvider;,
        Lcom/fsck/k9/mailstore/StorageManager$InternalStorageProvider;,
        Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;,
        Lcom/fsck/k9/mailstore/StorageManager$StorageListener;,
        Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    }
.end annotation


# static fields
.field private static transient instance:Lcom/fsck/k9/mailstore/StorageManager;


# instance fields
.field protected final context:Landroid/content/Context;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/StorageManager$StorageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;",
            "Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviders:Ljava/util/Map;

    .line 486
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v2, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviderLocks:Ljava/util/Map;

    .line 493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/fsck/k9/mailstore/StorageManager;->mListeners:Ljava/util/List;

    .line 526
    if-nez p1, :cond_0

    .line 527
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "No Context given"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 530
    :cond_0
    iput-object p1, p0, Lcom/fsck/k9/mailstore/StorageManager;->context:Landroid/content/Context;

    .line 545
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    const/4 v3, 0x0

    new-instance v4, Lcom/fsck/k9/mailstore/StorageManager$InternalStorageProvider;

    invoke-direct {v4}, Lcom/fsck/k9/mailstore/StorageManager$InternalStorageProvider;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/fsck/k9/mailstore/StorageManager$ExternalStorageProvider;

    invoke-direct {v4}, Lcom/fsck/k9/mailstore/StorageManager$ExternalStorageProvider;-><init>()V

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 547
    .local v0, "allProviders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    .line 549
    .local v1, "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    invoke-interface {v1, p1}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->isSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    invoke-interface {v1, p1}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->init(Landroid/content/Context;)V

    .line 553
    iget-object v3, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviders:Ljava/util/Map;

    invoke-interface {v1}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v3, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviderLocks:Ljava/util/Map;

    new-instance v4, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;

    invoke-direct {v4}, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 558
    .end local v1    # "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 498
    const-class v1, Lcom/fsck/k9/mailstore/StorageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/mailstore/StorageManager;->instance:Lcom/fsck/k9/mailstore/StorageManager;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lcom/fsck/k9/mailstore/StorageManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/fsck/k9/mailstore/StorageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fsck/k9/mailstore/StorageManager;->instance:Lcom/fsck/k9/mailstore/StorageManager;

    .line 501
    :cond_0
    sget-object v0, Lcom/fsck/k9/mailstore/StorageManager;->instance:Lcom/fsck/k9/mailstore/StorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isMountPoint(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 511
    invoke-static {}, Ljava/io/File;->listRoots()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 512
    .local v0, "root":Ljava/io/File;
    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 513
    const/4 v1, 0x1

    .line 516
    .end local v0    # "root":Ljava/io/File;
    :cond_0
    return v1

    .line 511
    .restart local v0    # "root":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/fsck/k9/mailstore/StorageManager$StorageListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/fsck/k9/mailstore/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    return-void
.end method

.method public getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "providerId"    # Ljava/lang/String;

    .prologue
    .line 598
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mailstore/StorageManager;->getProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    move-result-object v0

    .line 600
    .local v0, "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    iget-object v1, p0, Lcom/fsck/k9/mailstore/StorageManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->getAttachmentDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public getAvailableProviders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 625
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 626
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    iget-object v5, p0, Lcom/fsck/k9/mailstore/StorageManager;->context:Landroid/content/Context;

    invoke-interface {v2, v5}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 628
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;>;"
    :cond_0
    return-object v1
.end method

.method public getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "providerId"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mailstore/StorageManager;->getProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    move-result-object v0

    .line 587
    .local v0, "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    iget-object v1, p0, Lcom/fsck/k9/mailstore/StorageManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    .locals 1
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    return-object v0
.end method

.method public isReady(Ljava/lang/String;)Z
    .locals 4
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 609
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/StorageManager;->getProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    move-result-object v0

    .line 610
    .local v0, "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    if-nez v0, :cond_0

    .line 611
    const-string v2, "Storage-Provider \"%s\" does not exist"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/StorageManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->isReady(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method public lockProvider(Ljava/lang/String;)V
    .locals 6
    .param p1, "providerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/StorageManager;->getProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    move-result-object v1

    .line 729
    .local v1, "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    if-nez v1, :cond_0

    .line 730
    new-instance v3, Lcom/fsck/k9/mailstore/UnavailableStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StorageProvider not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fsck/k9/mailstore/UnavailableStorageException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 733
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviderLocks:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;

    .line 734
    .local v2, "sync":Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;
    iget-object v3, v2, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    .line 735
    .local v0, "locked":Z
    if-eqz v0, :cond_1

    if-eqz v0, :cond_3

    iget-boolean v3, v2, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->unmounting:Z

    if-eqz v3, :cond_3

    .line 736
    :cond_1
    if-eqz v0, :cond_2

    .line 737
    iget-object v3, v2, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 739
    :cond_2
    new-instance v3, Lcom/fsck/k9/mailstore/UnavailableStorageException;

    const-string v4, "StorageProvider is unmounting"

    invoke-direct {v3, v4}, Lcom/fsck/k9/mailstore/UnavailableStorageException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 740
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/fsck/k9/mailstore/StorageManager;->context:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->isReady(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 741
    iget-object v3, v2, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 742
    new-instance v3, Lcom/fsck/k9/mailstore/UnavailableStorageException;

    const-string v4, "StorageProvider not ready"

    invoke-direct {v3, v4}, Lcom/fsck/k9/mailstore/UnavailableStorageException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 744
    :cond_4
    return-void
.end method

.method public onAfterUnmount(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 654
    const-string v2, "storage path \"%s\" unmounted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/StorageManager;->resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    move-result-object v0

    .line 656
    .local v0, "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviderLocks:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/StorageManager;->resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;

    .line 660
    .local v1, "sync":Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;
    iget-object v2, v1, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 661
    iput-boolean v4, v1, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->unmounting:Z

    .line 662
    iget-object v2, v1, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 664
    iget-object v2, p0, Lcom/fsck/k9/mailstore/StorageManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onBeforeUnmount(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 635
    const-string v4, "storage path \"%s\" unmounting"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/StorageManager;->resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    move-result-object v2

    .line 637
    .local v2, "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    if-nez v2, :cond_0

    .line 651
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/mailstore/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

    .line 642
    .local v1, "listener":Lcom/fsck/k9/mailstore/StorageManager$StorageListener;
    :try_start_0
    invoke-interface {v2}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/fsck/k9/mailstore/StorageManager$StorageListener;->onUnmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error while notifying StorageListener"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/fsck/k9/mailstore/StorageManager$StorageListener;
    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviderLocks:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/StorageManager;->resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;

    .line 648
    .local v3, "sync":Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;
    iget-object v4, v3, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 649
    iput-boolean v8, v3, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->unmounting:Z

    .line 650
    iget-object v4, v3, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public onMount(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readOnly"    # Z

    .prologue
    const/4 v7, 0x0

    .line 672
    const-string v3, "storage path \"%s\" mounted readOnly=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    if-eqz p2, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/StorageManager;->resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    move-result-object v2

    .line 678
    .local v2, "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    if-eqz v2, :cond_0

    .line 681
    iget-object v3, p0, Lcom/fsck/k9/mailstore/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

    .line 683
    .local v1, "listener":Lcom/fsck/k9/mailstore/StorageManager$StorageListener;
    :try_start_0
    invoke-interface {v2}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/fsck/k9/mailstore/StorageManager$StorageListener;->onMount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error while notifying StorageListener"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 690
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/fsck/k9/mailstore/StorageManager$StorageListener;
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/mailstore/StorageManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/fsck/k9/mailstore/StorageManager$StorageListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/mailstore/StorageManager$StorageListener;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/fsck/k9/mailstore/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 713
    return-void
.end method

.method protected resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 699
    iget-object v1, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    .line 700
    .local v0, "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    iget-object v2, p0, Lcom/fsck/k9/mailstore/StorageManager;->context:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;->getRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    .end local v0    # "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlockProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 747
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/StorageManager;->getProvider(Ljava/lang/String;)Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;

    move-result-object v0

    .line 748
    .local v0, "provider":Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;
    iget-object v2, p0, Lcom/fsck/k9/mailstore/StorageManager;->mProviderLocks:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;

    .line 749
    .local v1, "sync":Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;
    iget-object v2, v1, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 750
    return-void
.end method

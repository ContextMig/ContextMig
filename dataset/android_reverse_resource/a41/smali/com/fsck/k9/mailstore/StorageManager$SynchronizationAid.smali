.class public Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizationAid"
.end annotation


# instance fields
.field public final readLock:Ljava/util/concurrent/locks/Lock;

.field public unmounting:Z

.field public final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->unmounting:Z

    .line 472
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 473
    .local v0, "readWriteLock":Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 474
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mailstore/StorageManager$SynchronizationAid;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 475
    return-void
.end method

.class Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;
.super Ljava/lang/Object;
.source "LockableDatabase.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/StorageManager$StorageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/LockableDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LockableDatabase;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/mailstore/LockableDatabase;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/fsck/k9/mailstore/LockableDatabase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/mailstore/LockableDatabase;
    .param p2, "x1"    # Lcom/fsck/k9/mailstore/LockableDatabase$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;)V

    return-void
.end method


# virtual methods
.method public onMount(Ljava/lang/String;)V
    .locals 5
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 94
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-static {v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->access$000(Lcom/fsck/k9/mailstore/LockableDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v1, "LockableDatabase: Opening DB %s due to mount event on StorageProvider: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-static {v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->access$100(Lcom/fsck/k9/mailstore/LockableDatabase;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-static {v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->access$300(Lcom/fsck/k9/mailstore/LockableDatabase;)V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    const-string v1, "Unable to open DB on mount"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onUnmount(Ljava/lang/String;)V
    .locals 5
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-static {v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->access$000(Lcom/fsck/k9/mailstore/LockableDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v1, "LockableDatabase: Closing DB %s due to unmount event on StorageProvider: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-static {v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->access$100(Lcom/fsck/k9/mailstore/LockableDatabase;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->lockWrite()V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-static {v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->access$200(Lcom/fsck/k9/mailstore/LockableDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V
    :try_end_2
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    const-string v1, "Unable to writelock on unmount"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    .end local v0    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    throw v1
    :try_end_3
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.class public abstract Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;
.super Ljava/lang/Object;
.source "StorageManager.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/StorageManager$StorageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FixedStorageProviderBase"
.end annotation


# instance fields
.field private mApplicationDir:Ljava/io/File;

.field private mRoot:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract computeRoot(Landroid/content/Context;)Ljava/io/File;
.end method

.method public getAttachmentDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 224
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->mApplicationDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db_att"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDatabase(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->mApplicationDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->computeRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    const-string v2, "k9"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->mApplicationDir:Ljava/io/File;

    .line 190
    return-void
.end method

.method public isReady(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 203
    :try_start_0
    iget-object v4, p0, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 204
    .local v1, "root":Ljava/io/File;
    invoke-static {v1}, Lcom/fsck/k9/mailstore/StorageManager;->isMountPoint(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "mounted"

    .line 205
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    .end local v1    # "root":Ljava/io/File;
    :goto_0
    return v2

    .restart local v1    # "root":Ljava/io/File;
    :cond_0
    move v2, v3

    .line 205
    goto :goto_0

    .line 206
    .end local v1    # "root":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Specified root isn\'t ready: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    aput-object v5, v2, v3

    invoke-static {v0, v4, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 208
    goto :goto_0
.end method

.method public final isSupported(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/StorageManager$FixedStorageProviderBase;->supportsVendor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract supportsVendor()Z
.end method

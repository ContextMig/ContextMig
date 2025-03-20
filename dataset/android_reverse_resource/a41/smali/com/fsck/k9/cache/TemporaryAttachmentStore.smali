.class public Lcom/fsck/k9/cache/TemporaryAttachmentStore;
.super Ljava/lang/Object;
.source "TemporaryAttachmentStore.java"


# static fields
.field private static MAX_FILE_AGE:J

.field private static TEMPORARY_ATTACHMENT_DIRECTORY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "attachments"

    sput-object v0, Lcom/fsck/k9/cache/TemporaryAttachmentStore;->TEMPORARY_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    .line 15
    const-wide/32 v0, 0x2932e00

    sput-wide v0, Lcom/fsck/k9/cache/TemporaryAttachmentStore;->MAX_FILE_AGE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanOldFiles(Ljava/io/File;)V
    .locals 11
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 47
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_1

    .line 61
    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/fsck/k9/cache/TemporaryAttachmentStore;->MAX_FILE_AGE:J

    sub-long v0, v6, v8

    .line 52
    .local v0, "cutOffTime":J
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v3, v4

    .line 53
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v7, v8, v0

    if-gez v7, :cond_2

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    const-string v7, "Deleted from temporary attachment store: %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_3
    const-string v7, "Couldn\'t delete from temporary attachment store: %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static createOrCleanAttachmentDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p0}, Lcom/fsck/k9/cache/TemporaryAttachmentStore;->getTemporaryAttachmentDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 31
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-static {v0}, Lcom/fsck/k9/cache/TemporaryAttachmentStore;->cleanOldFiles(Ljava/io/File;)V

    .line 38
    :cond_0
    return-object v0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t create temporary attachment store: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachmentName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/fsck/k9/cache/TemporaryAttachmentStore;->getTemporaryAttachmentDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 19
    .local v0, "directory":Ljava/io/File;
    invoke-static {p1}, Lcom/fsck/k9/helper/FileHelper;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getFileForWriting(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachmentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lcom/fsck/k9/cache/TemporaryAttachmentStore;->createOrCleanAttachmentDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 25
    .local v0, "directory":Ljava/io/File;
    invoke-static {p1}, Lcom/fsck/k9/helper/FileHelper;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getTemporaryAttachmentDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/fsck/k9/cache/TemporaryAttachmentStore;->TEMPORARY_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

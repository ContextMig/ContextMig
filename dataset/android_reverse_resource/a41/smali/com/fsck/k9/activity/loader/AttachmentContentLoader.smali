.class public Lcom/fsck/k9/activity/loader/AttachmentContentLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AttachmentContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/fsck/k9/activity/misc/Attachment;",
        ">;"
    }
.end annotation


# static fields
.field private static final FILENAME_PREFIX:Ljava/lang/String; = "attachment"


# instance fields
.field private cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

.field private final sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attachment"    # Lcom/fsck/k9/activity/misc/Attachment;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 34
    iget-object v0, p2, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-eq v0, v1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attachment provided to content loader must be in METADATA state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p2, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 39
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/fsck/k9/activity/misc/Attachment;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    const-string v6, "attachment"

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 58
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 60
    const-string v6, "Saving attachment to %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {v0}, Lde/cketti/safecontentresolver/SafeContentResolverCompat;->newInstance(Landroid/content/Context;)Lde/cketti/safecontentresolver/SafeContentResolver;

    move-result-object v5

    .line 63
    .local v5, "safeContentResolver":Lde/cketti/safecontentresolver/SafeContentResolver;
    iget-object v6, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    iget-object v6, v6, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lde/cketti/safecontentresolver/SafeContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 65
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v3, v4}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 75
    iget-object v6, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fsck/k9/activity/misc/Attachment;->deriveWithLoadComplete(Ljava/lang/String;)Lcom/fsck/k9/activity/misc/Attachment;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 76
    iget-object v6, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "safeContentResolver":Lde/cketti/safecontentresolver/SafeContentResolver;
    :goto_0
    return-object v6

    .line 69
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "safeContentResolver":Lde/cketti/safecontentresolver/SafeContentResolver;
    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 72
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 77
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "safeContentResolver":Lde/cketti/safecontentresolver/SafeContentResolver;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Error saving attachment!"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v6, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    invoke-virtual {v6}, Lcom/fsck/k9/activity/misc/Attachment;->deriveWithLoadCancelled()Lcom/fsck/k9/activity/misc/Attachment;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 82
    iget-object v6, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->loadInBackground()Lcom/fsck/k9/activity/misc/Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->deliverResult(Ljava/lang/Object;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    if-nez v0, :cond_2

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;->forceLoad()V

    .line 50
    :cond_2
    return-void
.end method

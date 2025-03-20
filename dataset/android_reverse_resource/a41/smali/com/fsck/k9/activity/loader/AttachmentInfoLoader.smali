.class public Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AttachmentInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/fsck/k9/activity/misc/Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

.field private final sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attachment"    # Lcom/fsck/k9/activity/misc/Attachment;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 27
    iget-object v0, p2, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-eq v0, v1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attachment provided to metadata loader must be in URI_ONLY state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p2, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 32
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/fsck/k9/activity/misc/Attachment;
    .locals 14

    .prologue
    .line 47
    iget-object v2, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    iget-object v1, v2, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 48
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    iget-object v6, v2, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 50
    .local v6, "contentType":Ljava/lang/String;
    const-wide/16 v10, -0x1

    .line 51
    .local v10, "size":J
    const/4 v9, 0x0

    .line 53
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 62
    .local v8, "metadataCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 64
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 66
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v10, v2

    .line 69
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_1
    if-nez v9, :cond_2

    .line 74
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 77
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, "usableContentType":Ljava/lang/String;
    if-nez v13, :cond_3

    if-eqz v6, :cond_3

    const/16 v2, 0x2a

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 79
    move-object v13, v6

    .line 82
    :cond_3
    if-nez v13, :cond_4

    .line 83
    invoke-static {v9}, Lcom/fsck/k9/mail/internet/MimeUtility;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 86
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gtz v2, :cond_6

    .line 87
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, "uriString":Ljava/lang/String;
    const-string v2, "file://"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    new-instance v7, Ljava/io/File;

    const-string v2, "file://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 97
    .end local v7    # "f":Ljava/io/File;
    .end local v12    # "uriString":Ljava/lang/String;
    :goto_0
    const-string v2, "new attachment.size: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v2, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    invoke-virtual {v2, v13, v9, v10, v11}, Lcom/fsck/k9/activity/misc/Attachment;->deriveWithMetadataLoaded(Ljava/lang/String;Ljava/lang/String;J)Lcom/fsck/k9/activity/misc/Attachment;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 100
    iget-object v2, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    return-object v2

    .line 69
    .end local v13    # "usableContentType":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 92
    .restart local v12    # "uriString":Ljava/lang/String;
    .restart local v13    # "usableContentType":Ljava/lang/String;
    :cond_5
    const-string v2, "Not a file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v12    # "uriString":Ljava/lang/String;
    :cond_6
    const-string v2, "old attachment.size: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->loadInBackground()Lcom/fsck/k9/activity/misc/Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->deliverResult(Ljava/lang/Object;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    if-nez v0, :cond_2

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->forceLoad()V

    .line 43
    :cond_2
    return-void
.end method

.class public Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;
.super Ljava/lang/Object;
.source "AttachmentInfoExtractor.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private extractAttachmentInfo(Lcom/fsck/k9/mail/Part;Landroid/net/Uri;JZ)Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .locals 15
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # J
    .param p5, "isContentAvailable"    # Z
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v9, 0x0

    .line 118
    .local v9, "inlineAttachment":Z
    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "mimeType":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, "contentTypeHeader":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "contentDisposition":Ljava/lang/String;
    const-string v3, "filename"

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 124
    const-string v3, "name"

    invoke-static {v12, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    :cond_0
    if-nez v5, :cond_2

    .line 128
    const/4 v13, 0x0

    .line 129
    .local v13, "extension":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 130
    invoke-static {v4}, Lcom/fsck/k9/mail/internet/MimeUtility;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 132
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noname"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v13, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    .end local v13    # "extension":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 138
    invoke-static {v2, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "^(?i:inline)"

    invoke-virtual {v3, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Content-ID"

    .line 139
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    if-eqz v4, :cond_3

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "image/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    const/4 v9, 0x1

    .line 144
    :cond_3
    move-wide/from16 v0, p3

    invoke-direct {p0, v2, v0, v1}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentSize(Ljava/lang/String;J)J

    move-result-wide v6

    .line 146
    .local v6, "attachmentSize":J
    new-instance v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-object/from16 v8, p2

    move-object/from16 v10, p1

    move/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/fsck/k9/mailstore/AttachmentViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;ZLcom/fsck/k9/mail/Part;Z)V

    return-object v3

    .line 132
    .end local v6    # "attachmentSize":J
    .restart local v13    # "extension":Ljava/lang/String;
    :cond_4
    const-string v3, ""

    goto :goto_0
.end method

.method private extractAttachmentSize(Ljava/lang/String;J)J
    .locals 6
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "size"    # J
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 151
    const-wide/16 v4, -0x1

    cmp-long v3, p2, v4

    if-eqz v3, :cond_0

    .line 163
    .end local p2    # "size":J
    :goto_0
    return-wide p2

    .line 155
    .restart local p2    # "size":J
    :cond_0
    const-wide/16 v0, -0x1

    .line 156
    .local v0, "result":J
    const-string v3, "size"

    invoke-static {p1, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "sizeParam":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 159
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v0, v3

    :cond_1
    :goto_1
    move-wide p2, v0

    .line 163
    goto :goto_0

    .line 160
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getInstance()Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/fsck/k9/Globals;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    invoke-direct {v1, v0}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;-><init>(Landroid/content/Context;)V

    return-object v1
.end method


# virtual methods
.method public extractAttachmentInfo(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .locals 14
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 64
    instance-of v2, p1, Lcom/fsck/k9/mailstore/LocalPart;

    if-eqz v2, :cond_1

    move-object v10, p1

    .line 65
    check-cast v10, Lcom/fsck/k9/mailstore/LocalPart;

    .line 66
    .local v10, "localPart":Lcom/fsck/k9/mailstore/LocalPart;
    invoke-interface {v10}, Lcom/fsck/k9/mailstore/LocalPart;->getAccountUuid()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-interface {v10}, Lcom/fsck/k9/mailstore/LocalPart;->getPartId()J

    move-result-wide v12

    .line 68
    .local v12, "messagePartId":J
    invoke-interface {v10}, Lcom/fsck/k9/mailstore/LocalPart;->getSize()J

    move-result-wide v4

    .line 69
    .local v4, "size":J
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    .local v6, "isContentAvailable":Z
    :goto_0
    invoke-static {v0, v12, v13}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .end local v0    # "accountUuid":Ljava/lang/String;
    .end local v10    # "localPart":Lcom/fsck/k9/mailstore/LocalPart;
    .end local v12    # "messagePartId":J
    .local v3, "uri":Landroid/net/Uri;
    :goto_1
    move-object v1, p0

    move-object v2, p1

    .line 90
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentInfo(Lcom/fsck/k9/mail/Part;Landroid/net/Uri;JZ)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v1

    return-object v1

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "isContentAvailable":Z
    .restart local v0    # "accountUuid":Ljava/lang/String;
    .restart local v10    # "localPart":Lcom/fsck/k9/mailstore/LocalPart;
    .restart local v12    # "messagePartId":J
    :cond_0
    move v6, v1

    .line 69
    goto :goto_0

    .line 71
    .end local v0    # "accountUuid":Ljava/lang/String;
    .end local v4    # "size":J
    .end local v10    # "localPart":Lcom/fsck/k9/mailstore/LocalPart;
    .end local v12    # "messagePartId":J
    :cond_1
    instance-of v2, p1, Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v2, :cond_3

    move-object v9, p1

    .line 72
    check-cast v9, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 73
    .local v9, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalMessage;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0    # "accountUuid":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalMessage;->getMessagePartId()J

    move-result-wide v12

    .line 75
    .restart local v12    # "messagePartId":J
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalMessage;->getSize()J

    move-result-wide v4

    .line 76
    .restart local v4    # "size":J
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 77
    .restart local v6    # "isContentAvailable":Z
    :goto_2
    invoke-static {v0, v12, v13}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 78
    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_1

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "isContentAvailable":Z
    :cond_2
    move v6, v1

    .line 76
    goto :goto_2

    .line 79
    .end local v0    # "accountUuid":Ljava/lang/String;
    .end local v4    # "size":J
    .end local v9    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v12    # "messagePartId":J
    :cond_3
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v7

    .line 80
    .local v7, "body":Lcom/fsck/k9/mail/Body;
    instance-of v1, v7, Lcom/fsck/k9/mailstore/DeferredFileBody;

    if-eqz v1, :cond_4

    move-object v8, v7

    .line 81
    check-cast v8, Lcom/fsck/k9/mailstore/DeferredFileBody;

    .line 82
    .local v8, "decryptedTempFileBody":Lcom/fsck/k9/mailstore/DeferredFileBody;
    invoke-virtual {v8}, Lcom/fsck/k9/mailstore/DeferredFileBody;->getSize()J

    move-result-wide v4

    .line 83
    .restart local v4    # "size":J
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v8, v1}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->getDecryptedFileProviderUri(Lcom/fsck/k9/mailstore/DeferredFileBody;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 84
    .restart local v3    # "uri":Landroid/net/Uri;
    const/4 v6, 0x1

    .line 85
    .restart local v6    # "isContentAvailable":Z
    goto :goto_1

    .line 86
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "size":J
    .end local v6    # "isContentAvailable":Z
    .end local v8    # "decryptedTempFileBody":Lcom/fsck/k9/mailstore/DeferredFileBody;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported part type provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public extractAttachmentInfoForDatabase(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .locals 7
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    .line 110
    .local v6, "isContentAvailable":Z
    :goto_0
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentInfo(Lcom/fsck/k9/mail/Part;Landroid/net/Uri;JZ)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v0

    return-object v0

    .line 109
    .end local v6    # "isContentAvailable":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public extractAttachmentInfoForView(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/AttachmentViewInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "attachmentParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/AttachmentViewInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 51
    .local v2, "part":Lcom/fsck/k9/mail/Part;
    invoke-virtual {p0, v2}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentInfo(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v0

    .line 52
    .local v0, "attachmentViewInfo":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v0    # "attachmentViewInfo":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .end local v2    # "part":Lcom/fsck/k9/mail/Part;
    :cond_0
    return-object v1
.end method

.method protected getDecryptedFileProviderUri(Lcom/fsck/k9/mailstore/DeferredFileBody;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "decryptedTempFileBody"    # Lcom/fsck/k9/mailstore/DeferredFileBody;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/DeferredFileBody;->getFile()Ljava/io/File;

    move-result-object v1

    .line 99
    .local v1, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->context:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/DeferredFileBody;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-static {v3, v1, v4, p2}, Lcom/fsck/k9/provider/DecryptedFileProvider;->getUriForProvidedFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 105
    .end local v1    # "file":Ljava/io/File;
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 101
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Decrypted temp file (no longer?) exists!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const/4 v2, 0x0

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

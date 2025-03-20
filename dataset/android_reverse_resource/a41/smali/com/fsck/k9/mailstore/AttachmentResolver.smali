.class public Lcom/fsck/k9/mailstore/AttachmentResolver;
.super Ljava/lang/Object;
.source "AttachmentResolver.java"


# instance fields
.field contentIdToAttachmentUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "contentIdToAttachmentUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/fsck/k9/mailstore/AttachmentResolver;->contentIdToAttachmentUriMap:Ljava/util/Map;

    .line 35
    return-void
.end method

.method static buildCidToAttachmentUriMap(Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;Lcom/fsck/k9/mail/Part;)Ljava/util/Map;
    .locals 11
    .param p0, "attachmentInfoExtractor"    # Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;
    .param p1, "rootPart"    # Lcom/fsck/k9/mail/Part;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;",
            "Lcom/fsck/k9/mail/Part;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v8, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/Uri;>;"
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 55
    .local v7, "partsToCheck":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/fsck/k9/mail/Part;>;"
    invoke-virtual {v7, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 58
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/Part;

    .line 60
    .local v6, "part":Lcom/fsck/k9/mail/Part;
    invoke-interface {v6}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v1

    .line 61
    .local v1, "body":Lcom/fsck/k9/mail/Body;
    instance-of v9, v1, Lcom/fsck/k9/mail/Multipart;

    if-eqz v9, :cond_1

    move-object v5, v1

    .line 62
    check-cast v5, Lcom/fsck/k9/mail/Multipart;

    .line 63
    .local v5, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 64
    .local v2, "bodyPart":Lcom/fsck/k9/mail/Part;
    invoke-virtual {v7, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 68
    .end local v2    # "bodyPart":Lcom/fsck/k9/mail/Part;
    .end local v5    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_1
    :try_start_0
    invoke-interface {v6}, Lcom/fsck/k9/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "contentId":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {p0, v6}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentInfo(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v0

    .line 71
    .local v0, "attachmentInfo":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    iget-object v9, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    invoke-virtual {v8, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v0    # "attachmentInfo":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .end local v3    # "contentId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 74
    .local v4, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v9, "Error extracting attachment info"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    .end local v1    # "body":Lcom/fsck/k9/mail/Body;
    .end local v4    # "e":Lcom/fsck/k9/mail/MessagingException;
    .end local v6    # "part":Lcom/fsck/k9/mail/Part;
    :cond_2
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    return-object v9
.end method

.method public static createFromPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentResolver;
    .locals 3
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->getInstance()Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    move-result-object v0

    .line 45
    .local v0, "attachmentInfoExtractor":Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;
    invoke-static {v0, p0}, Lcom/fsck/k9/mailstore/AttachmentResolver;->buildCidToAttachmentUriMap(Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;Lcom/fsck/k9/mail/Part;)Ljava/util/Map;

    move-result-object v1

    .line 46
    .local v1, "contentIdToAttachmentUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    new-instance v2, Lcom/fsck/k9/mailstore/AttachmentResolver;

    invoke-direct {v2, v1}, Lcom/fsck/k9/mailstore/AttachmentResolver;-><init>(Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public getAttachmentUriForContentId(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fsck/k9/mailstore/AttachmentResolver;->contentIdToAttachmentUriMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.class Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
.super Lcom/fsck/k9/mail/Folder;
.source "WebDavFolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fsck/k9/mail/Folder",
        "<",
        "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private mFolderUrl:Ljava/lang/String;

.field private mIsOpen:Z

.field private mMessageCount:I

.field private mName:Ljava/lang/String;

.field private mUnreadMessageCount:I

.field private store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/webdav/WebDavStore;Ljava/lang/String;)V
    .locals 1
    .param p1, "nStore"    # Lcom/fsck/k9/mail/store/webdav/WebDavStore;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/fsck/k9/mail/Folder;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mIsOpen:Z

    .line 46
    iput v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mMessageCount:I

    .line 47
    iput v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mUnreadMessageCount:I

    .line 56
    iput-object p1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    .line 57
    iput-object p2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mName:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->buildFolderUrl()V

    .line 59
    return-void
.end method

.method private buildFolderUrl()V
    .locals 7

    .prologue
    .line 63
    iget-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mName:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "urlParts":[Ljava/lang/String;
    const-string v3, ""

    .line 65
    .local v3, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v4

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 66
    if-eqz v2, :cond_0

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    aget-object v5, v4, v2

    invoke-static {v5}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 72
    :cond_1
    move-object v1, v3

    .line 74
    .local v1, "encodedName":Ljava/lang/String;
    const-string v5, "\\+"

    const-string v6, "%20"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    .line 77
    iget-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    .line 80
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private deleteServerMessages([Ljava/lang/String;)V
    .locals 11
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 605
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 607
    .local v8, "uidToUrl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v10, p1

    move v9, v5

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v7, p1, v9

    .line 608
    .local v7, "uid":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 609
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 610
    .local v1, "url":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->generateDeleteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 615
    .local v6, "destinationUrl":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    const-string v0, "Brief"

    const-string v2, "t"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    const-string v2, "DELETE"

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/fsck/k9/mail/store/webdav/DataSet;

    .line 607
    :goto_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 619
    :cond_0
    const-string v0, "Destination"

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->generateDeleteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v0, "Brief"

    const-string v2, "t"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    const-string v2, "MOVE"

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/fsck/k9/mail/store/webdav/DataSet;

    goto :goto_1

    .line 624
    .end local v1    # "url":Ljava/lang/String;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "destinationUrl":Ljava/lang/String;
    .end local v7    # "uid":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private fetchEnvelope(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
            ">;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "startMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    .local p2, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 516
    .local v10, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    if-eqz p1, :cond_0

    .line 517
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 567
    :cond_0
    return-void

    .line 521
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    const/16 v14, 0xa

    if-le v13, v14, :cond_4

    .line 522
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0xa

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    .local v11, "newMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 524
    const/16 v13, 0xa

    if-ge v7, v13, :cond_2

    .line 525
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v10, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 523
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 527
    :cond_2
    add-int/lit8 v13, v7, -0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 531
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->fetchEnvelope(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 536
    .end local v2    # "count":I
    .end local v7    # "i":I
    .end local v11    # "newMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v12, v13, [Ljava/lang/String;

    .line 538
    .local v12, "uids":[Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "count":I
    :goto_3
    if-ge v7, v2, :cond_5

    .line 539
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v7

    .line 538
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 533
    .end local v2    # "count":I
    .end local v7    # "i":I
    .end local v12    # "uids":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 542
    .restart local v2    # "count":I
    .restart local v7    # "i":I
    .restart local v12    # "uids":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v13, v12}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getMessageEnvelopeXml([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 543
    .local v9, "messageBody":Ljava/lang/String;
    const-string v13, "Brief"

    const-string v14, "t"

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v15, "SEARCH"

    invoke-virtual {v13, v14, v15, v9, v6}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/mail/store/webdav/DataSet;

    move-result-object v3

    .line 546
    .local v3, "dataset":Lcom/fsck/k9/mail/store/webdav/DataSet;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/webdav/DataSet;->getMessageEnvelopes()Ljava/util/Map;

    move-result-object v5

    .line 548
    .local v5, "envelopes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fsck/k9/mail/store/webdav/ParsedMessageEnvelope;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 549
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v7, v13, -0x1

    :goto_4
    if-ltz v7, :cond_0

    .line 550
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    .line 551
    .local v8, "message":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    if-eqz p2, :cond_6

    .line 552
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v7, v2}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 555
    :cond_6
    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/webdav/ParsedMessageEnvelope;

    .line 556
    .local v4, "envelope":Lcom/fsck/k9/mail/store/webdav/ParsedMessageEnvelope;
    if-eqz v4, :cond_8

    .line 557
    invoke-virtual {v8, v4}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->setNewHeaders(Lcom/fsck/k9/mail/store/webdav/ParsedMessageEnvelope;)V

    .line 558
    sget-object v13, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/webdav/ParsedMessageEnvelope;->getReadStatus()Z

    move-result v14

    invoke-virtual {v8, v13, v14}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 563
    :goto_5
    if-eqz p2, :cond_7

    .line 564
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/mail/Message;

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v7, v2}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    .line 549
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 560
    :cond_8
    const-string v13, "Asked to get metadata for a non-existent message: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private fetchFlags(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
            ">;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "startMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    .local p2, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 449
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    const/16 v12, 0x14

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 452
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    if-eqz p1, :cond_0

    .line 453
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 502
    :cond_0
    return-void

    .line 457
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_4

    .line 458
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x14

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    .local v8, "newMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 460
    const/16 v12, 0x14

    if-ge v5, v12, :cond_2

    .line 461
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 463
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 467
    :cond_3
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->fetchFlags(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 472
    .end local v1    # "count":I
    .end local v5    # "i":I
    .end local v8    # "newMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    new-array v10, v12, [Ljava/lang/String;

    .line 474
    .local v10, "uids":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "count":I
    :goto_3
    if-ge v5, v1, :cond_5

    .line 475
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/mail/Message;

    invoke-virtual {v12}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v5

    .line 474
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 469
    .end local v1    # "count":I
    .end local v5    # "i":I
    .end local v10    # "uids":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 478
    .restart local v1    # "count":I
    .restart local v5    # "i":I
    .restart local v10    # "uids":[Ljava/lang/String;
    :cond_5
    iget-object v12, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v12, v10}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getMessageFlagsXml([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 479
    .local v6, "messageBody":Ljava/lang/String;
    const-string v12, "Brief"

    const-string v13, "t"

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v12, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    iget-object v13, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v14, "SEARCH"

    invoke-virtual {v12, v13, v14, v6, v4}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/mail/store/webdav/DataSet;

    move-result-object v2

    .line 482
    .local v2, "dataset":Lcom/fsck/k9/mail/store/webdav/DataSet;
    if-nez v2, :cond_6

    .line 483
    new-instance v12, Lcom/fsck/k9/mail/MessagingException;

    const-string v13, "Data Set from request was null"

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 486
    :cond_6
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/webdav/DataSet;->getUidToRead()Ljava/util/Map;

    move-result-object v9

    .line 488
    .local v9, "uidToReadStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    if-ge v5, v1, :cond_0

    .line 489
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    if-nez v12, :cond_7

    .line 490
    new-instance v12, Lcom/fsck/k9/mail/MessagingException;

    const-string v13, "WebDavStore fetch called with non-WebDavMessage"

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 492
    :cond_7
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    .line 495
    .local v11, "wdMessage":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    :try_start_0
    sget-object v13, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v11, v13, v12}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 496
    :catch_0
    move-exception v3

    .line 497
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v12, "Under some weird circumstances, setting the read status when syncing from webdav threw an NPE. Skipping."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v3, v12, v13}, Ltimber/log/Timber;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private fetchMessages(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V
    .locals 26
    .param p3, "lines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
            ">;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    .local p2, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    move-result-object v7

    .line 341
    .local v7, "httpclient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v9, v4, :cond_9

    .line 342
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    .line 343
    .local v21, "wdMessage":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    const/16 v18, 0x0

    .line 345
    .local v18, "statusCode":I
    if-eqz p2, :cond_0

    .line 346
    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v9, v4}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 353
    :cond_0
    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 354
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->setUrl(Ljava/lang/String;)V

    .line 355
    const-string v22, "Fetching messages with UID = \'%s\', URL = \'%s\'"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 357
    new-instance v22, Lcom/fsck/k9/mail/MessagingException;

    const-string v23, "Unable to get URL for message"

    invoke-direct/range {v22 .. v23}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 362
    :cond_1
    :try_start_0
    const-string v22, "Fetching message with UID = \'%s\', URL = \'%s\'"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    new-instance v22, Ljava/net/URI;

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 367
    .local v8, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const-string v22, "translate"

    const-string v23, "f"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getAuthentication()S

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 369
    const-string v22, "Authorization"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getAuthString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v8, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 373
    .local v16, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 375
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 377
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    const/16 v22, 0xc8

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    const/16 v22, 0x12c

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 379
    :cond_3
    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error during with code "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " during fetch: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 380
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 424
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v10

    .line 425
    .local v10, "iae":Ljava/lang/IllegalArgumentException;
    const-string v22, "IllegalArgumentException caught"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v10, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    new-instance v22, Lcom/fsck/k9/mail/MessagingException;

    const-string v23, "IllegalArgumentException caught"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 383
    .end local v10    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    if-eqz v6, :cond_8

    .line 384
    const/4 v12, 0x0

    .line 385
    .local v12, "istream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 388
    .local v3, "buffer":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 389
    .local v14, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 392
    .local v5, "currentLines":I
    :try_start_2
    invoke-static {v6}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v12

    .line 394
    const/16 v22, -0x1

    move/from16 v0, p3

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 397
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v23, 0x2000

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v15, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .local v15, "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .local v19, "tempText":Ljava/lang/String;
    if-eqz v19, :cond_5

    move/from16 v0, p3

    if-ge v5, v0, :cond_5

    .line 401
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 405
    :cond_5
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 407
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 408
    .local v17, "resultText":Ljava/lang/String;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    const-string v22, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v12    # "istream":Ljava/io/InputStream;
    .local v13, "istream":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    move-object v12, v13

    .line 411
    .end local v13    # "istream":Ljava/io/InputStream;
    .end local v17    # "resultText":Ljava/lang/String;
    .end local v19    # "tempText":Ljava/lang/String;
    .restart local v12    # "istream":Ljava/io/InputStream;
    :cond_6
    :try_start_4
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->parse(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 417
    :try_start_5
    invoke-static {v14}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 418
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 436
    .end local v3    # "buffer":Ljava/lang/StringBuilder;
    .end local v5    # "currentLines":I
    .end local v12    # "istream":Ljava/io/InputStream;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    :goto_2
    if-eqz p2, :cond_7

    .line 437
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v9, v4}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    .line 341
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 413
    .restart local v3    # "buffer":Ljava/lang/StringBuilder;
    .restart local v5    # "currentLines":I
    .restart local v12    # "istream":Ljava/io/InputStream;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v11

    .line 414
    .local v11, "ioe":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v22, "IOException during message parsing"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v11, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    new-instance v22, Lcom/fsck/k9/mail/MessagingException;

    const-string v23, "I/O Error"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 417
    .end local v11    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    :goto_4
    :try_start_7
    invoke-static {v14}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 418
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v22
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 427
    .end local v3    # "buffer":Ljava/lang/StringBuilder;
    .end local v5    # "currentLines":I
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "istream":Ljava/io/InputStream;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v20

    .line 428
    .local v20, "use":Ljava/net/URISyntaxException;
    const-string v22, "URISyntaxException caught"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    new-instance v22, Lcom/fsck/k9/mail/MessagingException;

    const-string v23, "URISyntaxException caught"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 421
    .end local v20    # "use":Ljava/net/URISyntaxException;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    :cond_8
    :try_start_8
    const-string v22, "Empty response"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 430
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v11

    .line 431
    .restart local v11    # "ioe":Ljava/io/IOException;
    const-string v22, "Non-success response code loading message, response code was %d, URL: %s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 432
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 431
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v11, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    new-instance v22, Lcom/fsck/k9/mail/MessagingException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failure code "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 440
    .end local v11    # "ioe":Ljava/io/IOException;
    .end local v18    # "statusCode":I
    .end local v21    # "wdMessage":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    :cond_9
    return-void

    .line 417
    .restart local v3    # "buffer":Ljava/lang/StringBuilder;
    .restart local v5    # "currentLines":I
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "istream":Ljava/io/InputStream;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "statusCode":I
    .restart local v21    # "wdMessage":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    :catchall_1
    move-exception v22

    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 413
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v11

    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method private generateDeleteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "startUrl"    # Ljava/lang/String;

    .prologue
    .line 627
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "urlParts":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 630
    .local v0, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Deleted%20Items/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getMessageCount(Z)I
    .locals 9
    .param p1, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v4, 0x0

    .line 146
    .local v4, "messageCount":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 150
    const-string v2, "True"

    .line 155
    .local v2, "isRead":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v5, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getMessageCountXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "messageBody":Ljava/lang/String;
    const-string v5, "Brief"

    const-string v6, "t"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v7, "SEARCH"

    invoke-virtual {v5, v6, v7, v3, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/mail/store/webdav/DataSet;

    move-result-object v0

    .line 158
    .local v0, "dataset":Lcom/fsck/k9/mail/store/webdav/DataSet;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/webdav/DataSet;->getMessageCount()I

    move-result v4

    .line 161
    :cond_0
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_WEBDAV:Z

    if-eqz v5, :cond_1

    .line 162
    const-string v5, "Counted messages and webdav returned: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_1
    return v4

    .line 152
    .end local v0    # "dataset":Lcom/fsck/k9/mail/store/webdav/DataSet;
    .end local v2    # "isRead":Ljava/lang/String;
    .end local v3    # "messageBody":Ljava/lang/String;
    :cond_2
    const-string v2, "False"

    .restart local v2    # "isRead":Ljava/lang/String;
    goto :goto_0
.end method

.method private getMessageUrls([Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v3, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getMessageUrlsXml([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "messageBody":Ljava/lang/String;
    const-string v3, "Brief"

    const-string v4, "t"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v5, "SEARCH"

    invoke-virtual {v3, v4, v5, v2, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/mail/store/webdav/DataSet;

    move-result-object v0

    .line 293
    .local v0, "dataset":Lcom/fsck/k9/mail/store/webdav/DataSet;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/webdav/DataSet;->getUidToUrl()Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method private markServerMessagesRead([Ljava/lang/String;Z)V
    .locals 10
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 590
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 591
    .local v8, "uidToUrl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v0, p1

    new-array v9, v0, [Ljava/lang/String;

    .line 593
    .local v9, "urls":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v6, p1

    .local v6, "count":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 594
    aget-object v0, p1, v7

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v9, v7

    .line 593
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v0, v9, p2}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getMarkMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "messageBody":Ljava/lang/String;
    const-string v0, "Brief"

    const-string v1, "t"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v0, "If-Match"

    const-string v1, "*"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v2, "BPROPPATCH"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/fsck/k9/mail/store/webdav/DataSet;

    .line 602
    return-void
.end method

.method private moveOrCopyMessages(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 15
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "isMove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;

    .line 116
    .local v11, "uids":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "count":I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 117
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Message;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v9

    .line 116
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 120
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v11}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 122
    .local v10, "uidToUrl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v1, v11

    new-array v12, v1, [Ljava/lang/String;

    .line 124
    .local v12, "urls":[Ljava/lang/String;
    const/4 v9, 0x0

    array-length v7, v11

    :goto_1
    if-ge v9, v7, :cond_2

    .line 125
    aget-object v1, v11, v9

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v12, v9

    .line 126
    aget-object v1, v12, v9

    if-nez v1, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    if-eqz v1, :cond_1

    .line 127
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    .line 128
    .local v13, "wdMessage":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v9

    .line 124
    .end local v13    # "wdMessage":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    move/from16 v0, p3

    invoke-virtual {v1, v12, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getMoveOrCopyMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "messageBody":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    move-result-object v8

    .line 134
    .local v8, "destFolder":Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    const-string v1, "Destination"

    iget-object v2, v8, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "Brief"

    const-string v2, "t"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "If-Match"

    const-string v2, "*"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    if-eqz p3, :cond_3

    const-string v3, "BMOVE"

    .line 138
    .local v3, "action":Ljava/lang/String;
    :goto_2
    const-string v1, "Moving %d messages to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v6

    const/4 v6, 0x1

    iget-object v14, v8, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    aput-object v14, v2, v6

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/fsck/k9/mail/store/webdav/DataSet;

    .line 141
    return-void

    .line 137
    .end local v3    # "action":Ljava/lang/String;
    :cond_3
    const-string v3, "BCOPY"

    goto :goto_2
.end method


# virtual methods
.method public appendMessages(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 635
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->appendWebDavMessages(Ljava/util/List;)Ljava/util/List;

    .line 636
    const/4 v0, 0x0

    return-object v0
.end method

.method public appendWebDavMessages(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 642
    .local v14, "retMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    move-result-object v9

    .line 644
    .local v9, "httpclient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fsck/k9/mail/Message;

    .line 653
    .local v10, "message":Lcom/fsck/k9/mail/Message;
    :try_start_0
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getSize()J

    move-result-wide v16

    .line 654
    .local v16, "size":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v16, v6

    if-lez v2, :cond_0

    .line 655
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "message size > Integer.MAX_VALUE!"

    invoke-direct {v2, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v16    # "size":J
    :catch_0
    move-exception v8

    .line 683
    .local v8, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Unable to append"

    invoke-direct {v2, v4, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 657
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v16    # "size":J
    :cond_0
    :try_start_1
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    move-wide/from16 v0, v16

    long-to-int v2, v0

    invoke-direct {v12, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 659
    .local v12, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->open(I)V

    .line 660
    new-instance v11, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x400

    invoke-direct {v2, v12, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v11, v2}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 662
    .local v11, "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 663
    invoke-virtual {v11}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->flush()V

    .line 665
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-direct {v5, v2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .local v5, "bodyEntity":Lorg/apache/http/entity/StringEntity;
    const-string v2, "message/rfc822"

    invoke-virtual {v5, v2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    .line 669
    .local v3, "messageURL":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 672
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".eml"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 674
    const-string v2, "Uploading message as %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    const-string v4, "PUT"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/Map;Z)Ljava/io/InputStream;

    .line 678
    new-instance v13, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v13, v2, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 680
    .local v13, "retMessage":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    invoke-virtual {v13, v3}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->setUrl(Ljava/lang/String;)V

    .line 681
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 686
    .end local v3    # "messageURL":Ljava/lang/String;
    .end local v5    # "bodyEntity":Lorg/apache/http/entity/StringEntity;
    .end local v10    # "message":Lcom/fsck/k9/mail/Message;
    .end local v11    # "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    .end local v12    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "retMessage":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    .end local v16    # "size":J
    :cond_2
    return-object v14
.end method

.method public areMoreMessagesAvailable(ILjava/util/Date;)Z
    .locals 1
    .param p1, "indexOfOldestMessage"    # I
    .param p2, "earliestDate"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x1

    .line 280
    if-le p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mMessageCount:I

    .line 210
    iput v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mUnreadMessageCount:I

    .line 211
    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mIsOpen:Z

    .line 212
    return-void
.end method

.method public copyMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
    .locals 2
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mail/Folder;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->moveOrCopyMessages(Ljava/util/List;Ljava/lang/String;Z)V

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .locals 1
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public delete(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->moveOrCopyMessages(Ljava/util/List;Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method public delete(Z)V
    .locals 2
    .param p1, "recursive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/lang/Error;

    const-string v1, "WebDavFolder.delete() not implemeneted"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 691
    instance-of v0, p1, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    if-eqz v0, :cond_0

    .line 692
    check-cast p1, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 694
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .locals 3
    .param p2, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
            ">;",
            "Lcom/fsck/k9/mail/FetchProfile;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    .local p3, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    const/4 v2, -0x1

    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    sget-object v1, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    invoke-direct {p0, p1, p3}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->fetchEnvelope(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 313
    :cond_2
    sget-object v1, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    invoke-direct {p0, p1, p3}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->fetchFlags(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 317
    :cond_3
    sget-object v1, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 318
    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/StoreConfig;->getMaximumAutoDownloadMessageSize()I

    move-result v0

    .line 319
    .local v0, "maximumAutoDownloadSize":I
    if-lez v0, :cond_5

    .line 320
    div-int/lit8 v1, v0, 0x4c

    invoke-direct {p0, p1, p3, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->fetchMessages(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V

    .line 325
    .end local v0    # "maximumAutoDownloadSize":I
    :cond_4
    :goto_1
    sget-object v1, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-direct {p0, p1, p3, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->fetchMessages(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V

    goto :goto_0

    .line 322
    .restart local v0    # "maximumAutoDownloadSize":I
    :cond_5
    invoke-direct {p0, p1, p3, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->fetchMessages(Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V

    goto :goto_1
.end method

.method public getFlaggedMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    invoke-direct {v0, p1, p0}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->open(I)V

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->getMessageCount(Z)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mMessageCount:I

    .line 172
    iget v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILjava/util/Date;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
    .locals 18
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "earliestDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Date;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/webdav/WebDavMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 232
    .local p4, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/webdav/WebDavMessage;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v8, p1

    .line 241
    .local v8, "prevStart":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mMessageCount:I

    sub-int p1, v12, p2

    .line 242
    sub-int v12, p2, v8

    add-int p2, p1, v12

    .line 244
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 245
    :cond_0
    new-instance v12, Lcom/fsck/k9/mail/MessagingException;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "Invalid message set %d %d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 248
    :cond_1
    if-nez p1, :cond_2

    const/16 v12, 0xa

    move/from16 v0, p2

    if-ge v0, v12, :cond_2

    .line 249
    const/16 p2, 0xa

    .line 253
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getMessagesXml()Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "messageBody":Ljava/lang/String;
    const-string v12, "Brief"

    const-string v13, "t"

    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v12, "Range"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "rows="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v14, "SEARCH"

    invoke-virtual {v12, v13, v14, v6, v3}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/mail/store/webdav/DataSet;

    move-result-object v2

    .line 258
    .local v2, "dataset":Lcom/fsck/k9/mail/store/webdav/DataSet;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/webdav/DataSet;->getUids()[Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, "uids":[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/webdav/DataSet;->getUidToUrl()Ljava/util/Map;

    move-result-object v9

    .line 260
    .local v9, "uidToUrl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v11, v10

    .line 262
    .local v11, "uidsLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_5

    .line 263
    if-eqz p4, :cond_3

    .line 264
    aget-object v12, v10, v4

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v4, v11}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 266
    :cond_3
    new-instance v5, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;

    aget-object v12, v10, v4

    move-object/from16 v0, p0

    invoke-direct {v5, v12, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 267
    .local v5, "message":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    aget-object v12, v10, v4

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->setUrl(Ljava/lang/String;)V

    .line 268
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    if-eqz p4, :cond_4

    .line 271
    move-object/from16 v0, p4

    invoke-interface {v0, v5, v4, v11}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    .line 262
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 275
    .end local v5    # "message":Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
    :cond_5
    return-object v7
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getStore()Lcom/fsck/k9/mail/store/webdav/WebDavStore;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    return-object v0
.end method

.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 699
    const-string v0, "Unimplemented method getUidFromMessageId in WebDavStore.WebDavFolder could lead to duplicate messages  being uploaded to the Sent folder"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->open(I)V

    .line 178
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->getMessageCount(Z)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mUnreadMessageCount:I

    .line 179
    iget v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mUnreadMessageCount:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mIsOpen:Z

    return v0
.end method

.method public moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
    .locals 2
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mail/Folder;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->moveOrCopyMessages(Ljava/util/List;Ljava/lang/String;Z)V

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mIsOpen:Z

    .line 93
    return-void
.end method

.method public setFlags(Ljava/util/List;Ljava/util/Set;Z)V
    .locals 6
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 572
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    .local p2, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 574
    .local v3, "uids":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 575
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/Message;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Flag;

    .line 579
    .local v1, "flag":Lcom/fsck/k9/mail/Flag;
    sget-object v5, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    if-ne v1, v5, :cond_2

    .line 580
    invoke-direct {p0, v3, p3}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->markServerMessagesRead([Ljava/lang/String;Z)V

    goto :goto_1

    .line 581
    :cond_2
    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    if-ne v1, v5, :cond_1

    .line 582
    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->deleteServerMessages([Ljava/lang/String;)V

    goto :goto_1

    .line 585
    .end local v1    # "flag":Lcom/fsck/k9/mail/Flag;
    :cond_3
    return-void
.end method

.method public setFlags(Ljava/util/Set;Z)V
    .locals 2
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    const-string v0, "Unimplemented method setFlags(Set<Flag>, boolean) breaks markAllMessagesAsRead and EmptyTrash"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->mFolderUrl:Ljava/lang/String;

    .line 87
    :cond_0
    return-void
.end method

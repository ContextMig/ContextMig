.class public Lcom/fsck/k9/mailstore/LocalMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "LocalMessage.java"


# instance fields
.field private attachmentCount:I

.field private databaseId:J

.field private headerNeedsUpdating:Z

.field private final localStore:Lcom/fsck/k9/mailstore/LocalStore;

.field private messagePartId:J

.field private messageReference:Lcom/fsck/k9/activity/MessageReference;

.field private mimeType:Ljava/lang/String;

.field private preview:Ljava/lang/String;

.field private previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

.field private rootId:J

.field private subject:Ljava/lang/String;

.field private threadId:J


# direct methods
.method private constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;)V
    .locals 1
    .param p1, "localStore"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 46
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    .locals 1
    .param p1, "localStore"    # Lcom/fsck/k9/mailstore/LocalStore;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "folder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 50
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 51
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mUid:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->delete()V

    return-void
.end method

.method static synthetic access$101(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p1, "x1"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/mailstore/LocalMessage;)J
    .locals 2
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mailstore/LocalMessage;)J
    .locals 2
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/mail/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/mail/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    return-object v0
.end method

.method private delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/fsck/k9/mailstore/LocalMessage$2;

    invoke-direct {v3, p0}, Lcom/fsck/k9/mailstore/LocalMessage$2;-><init>(Lcom/fsck/k9/mailstore/LocalMessage;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 331
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method private getAccountUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setReplyTo([Lcom/fsck/k9/mail/Address;)V

    .line 436
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    invoke-super {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 437
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    invoke-super {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 438
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    invoke-super {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 440
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    aget-object v0, v0, v2

    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mMessageId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mMessageId:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 448
    :cond_1
    iput-boolean v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 449
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/fsck/k9/mail/Message;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->clone()Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/fsck/k9/mail/internet/MimeMessage;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->clone()Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 4

    .prologue
    .line 378
    new-instance v0, Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-direct {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    .line 379
    .local v0, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->copy(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 381
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    iput-object v1, v0, Lcom/fsck/k9/mailstore/LocalMessage;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 382
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    iput-wide v2, v0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 383
    iget v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->attachmentCount:I

    iput v1, v0, Lcom/fsck/k9/mailstore/LocalMessage;->attachmentCount:I

    .line 384
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    iput-object v1, v0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 385
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    iput-object v1, v0, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    .line 386
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->threadId:J

    iput-wide v2, v0, Lcom/fsck/k9/mailstore/LocalMessage;->threadId:J

    .line 387
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->rootId:J

    iput-wide v2, v0, Lcom/fsck/k9/mailstore/LocalMessage;->rootId:J

    .line 388
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    iput-wide v2, v0, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    .line 389
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/fsck/k9/mailstore/LocalMessage;->mimeType:Ljava/lang/String;

    .line 390
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    iput-object v1, v0, Lcom/fsck/k9/mailstore/LocalMessage;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    .line 391
    iget-boolean v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    iput-boolean v1, v0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 393
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->clone()Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v0

    return-object v0
.end method

.method public debugClearLocalData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "method must only be used in debug build!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fsck/k9/mailstore/LocalFolder;->destroyMessage(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 374
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 453
    if-ne p0, p1, :cond_1

    .line 466
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 456
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_3

    :cond_2
    move v2, v3

    .line 457
    goto :goto_0

    .line 459
    :cond_3
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 460
    goto :goto_0

    .line 464
    :cond_4
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getAccountUuid()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "thisAccountUuid":Ljava/lang/String;
    check-cast p1, Lcom/fsck/k9/mailstore/LocalMessage;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getAccountUuid()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "thatAccountUuid":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public getAccount()Lcom/fsck/k9/Account;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    return-object v0
.end method

.method getAttachmentCount()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->attachmentCount:I

    return v0
.end method

.method public getDatabaseId()J
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    return-wide v0
.end method

.method public bridge synthetic getFolder()Lcom/fsck/k9/mail/Folder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v0

    return-object v0
.end method

.method public getFolder()Lcom/fsck/k9/mailstore/LocalFolder;
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/LocalFolder;

    return-object v0
.end method

.method public getMessagePartId()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewType()Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    return-object v0
.end method

.method public getRootId()J
    .locals 2

    .prologue
    .line 401
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->rootId:J

    return-wide v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->threadId:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://messages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttachments()Z
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->attachmentCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 471
    invoke-super {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->hashCode()I

    move-result v0

    .line 472
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getAccountUuid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getAccountUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 473
    return v0

    .line 472
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeMessageReference()Lcom/fsck/k9/activity/MessageReference;
    .locals 5

    .prologue
    .line 409
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccountUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mUid:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/activity/MessageReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    return-object v0
.end method

.method populateFromGetMessageCursor(Landroid/database/Cursor;)V
    .locals 24
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 58
    .local v18, "subject":Ljava/lang/String;
    if-nez v18, :cond_0

    const-string v18, ""

    .end local v18    # "subject":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setSubject(Ljava/lang/String;)V

    .line 60
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v14

    .line 61
    .local v14, "from":[Lcom/fsck/k9/mail/Address;
    array-length v0, v14

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 62
    const/16 v19, 0x0

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    .line 64
    :cond_1
    new-instance v19, Ljava/util/Date;

    const/16 v20, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-direct/range {v19 .. v21}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setInternalSentDate(Ljava/util/Date;)V

    .line 65
    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setUid(Ljava/lang/String;)V

    .line 66
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, "flagList":Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 68
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "flags":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-object v9, v12, v19

    .line 72
    .local v9, "flag":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_2
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v7

    .line 76
    .local v7, "e":Ljava/lang/Exception;
    const-string v21, "X_BAD_FLAG"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 77
    const-string v21, "Unable to parse flag %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v9, v22, v23

    invoke-static/range {v21 .. v22}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 82
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "flag":Ljava/lang/String;
    .end local v12    # "flags":[Ljava/lang/String;
    :cond_3
    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 83
    sget-object v19, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    const/16 v20, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 84
    sget-object v19, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    const/16 v20, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 85
    sget-object v19, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    const/16 v20, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 86
    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setReplyTo([Lcom/fsck/k9/mail/Address;)V

    .line 88
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fsck/k9/mailstore/LocalMessage;->attachmentCount:I

    .line 89
    new-instance v19, Ljava/util/Date;

    const/16 v20, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-direct/range {v19 .. v21}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setInternalDate(Ljava/util/Date;)V

    .line 90
    const/16 v19, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setMessageId(Ljava/lang/String;)V

    .line 92
    const/16 v19, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 93
    .local v16, "previewTypeString":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/mailstore/DatabasePreviewType;->fromDatabaseValue(Ljava/lang/String;)Lcom/fsck/k9/mailstore/DatabasePreviewType;

    move-result-object v5

    .line 94
    .local v5, "databasePreviewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/DatabasePreviewType;->getPreviewType()Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mailstore/LocalMessage;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalMessage;->previewType:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    move-object/from16 v19, v0

    sget-object v20, Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;->TEXT:Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 96
    const/16 v19, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    .line 101
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 102
    new-instance v8, Lcom/fsck/k9/mailstore/LocalFolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    move-object/from16 v19, v0

    const/16 v20, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-direct {v8, v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 103
    .local v8, "f":Lcom/fsck/k9/mailstore/LocalFolder;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 104
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 107
    .end local v8    # "f":Lcom/fsck/k9/mailstore/LocalFolder;
    :cond_4
    const/16 v19, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_6

    const-wide/16 v20, -0x1

    :goto_3
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fsck/k9/mailstore/LocalMessage;->threadId:J

    .line 108
    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_7

    const-wide/16 v20, -0x1

    :goto_4
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fsck/k9/mailstore/LocalMessage;->rootId:J

    .line 110
    const/16 v19, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/4 v6, 0x1

    .line 111
    .local v6, "deleted":Z
    :goto_5
    const/16 v19, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    .line 112
    .local v17, "read":Z
    :goto_6
    const/16 v19, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/4 v11, 0x1

    .line 113
    .local v11, "flagged":Z
    :goto_7
    const/16 v19, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const/4 v4, 0x1

    .line 114
    .local v4, "answered":Z
    :goto_8
    const/16 v19, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const/4 v13, 0x1

    .line 116
    .local v13, "forwarded":Z
    :goto_9
    sget-object v19, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 117
    sget-object v19, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 118
    sget-object v19, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 119
    sget-object v19, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 120
    sget-object v19, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 122
    const/16 v19, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->setMessagePartId(J)V

    .line 123
    const/16 v19, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mailstore/LocalMessage;->mimeType:Ljava/lang/String;

    .line 125
    const/16 v19, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 126
    .local v15, "header":[B
    if-eqz v15, :cond_d

    .line 127
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/message/MessageHeaderParser;->parse(Lcom/fsck/k9/mail/Part;Ljava/io/InputStream;)V

    .line 132
    :goto_a
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 133
    return-void

    .line 98
    .end local v4    # "answered":Z
    .end local v6    # "deleted":Z
    .end local v11    # "flagged":Z
    .end local v13    # "forwarded":Z
    .end local v15    # "header":[B
    .end local v17    # "read":Z
    :cond_5
    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    goto/16 :goto_2

    .line 107
    :cond_6
    const/16 v19, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    goto/16 :goto_3

    .line 108
    :cond_7
    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    goto/16 :goto_4

    .line 110
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 111
    .restart local v6    # "deleted":Z
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 112
    .restart local v17    # "read":Z
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 113
    .restart local v11    # "flagged":Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 114
    .restart local v4    # "answered":Z
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 129
    .restart local v13    # "forwarded":Z
    .restart local v15    # "header":[B
    :cond_d
    const-string v19, "No headers available for this message!"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 4
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/fsck/k9/mailstore/LocalMessage$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalMessage$1;-><init>(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 289
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 247
    return-void
.end method

.method public setFrom(Lcom/fsck/k9/mail/Address;)V
    .locals 3
    .param p1, "from"    # Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v2, 0x1

    .line 197
    new-array v0, v2, [Lcom/fsck/k9/mail/Address;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 198
    iput-boolean v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 199
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mMessageId:Ljava/lang/String;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 178
    return-void
.end method

.method setMessagePartId(J)V
    .locals 1
    .param p1, "messagePartId"    # J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    .line 138
    return-void
.end method

.method public setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "type"    # Lcom/fsck/k9/mail/Message$RecipientType;
    .param p2, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v1, 0x0

    .line 220
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    .line 221
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 222
    :cond_0
    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 242
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 243
    return-void

    .line 224
    :cond_1
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 226
    :cond_2
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 227
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_4

    .line 228
    :cond_3
    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 230
    :cond_4
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 232
    :cond_5
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_8

    .line 233
    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_7

    .line 234
    :cond_6
    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 236
    :cond_7
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 239
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReplyTo([Lcom/fsck/k9/mail/Address;)V
    .locals 1
    .param p1, "replyTo"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 204
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 210
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 211
    return-void

    .line 207
    :cond_1
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 171
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 184
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalMessage;->updateHeader()V

    .line 430
    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 431
    return-void
.end method

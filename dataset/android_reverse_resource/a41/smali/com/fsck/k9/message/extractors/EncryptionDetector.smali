.class Lcom/fsck/k9/message/extractors/EncryptionDetector;
.super Ljava/lang/Object;
.source "EncryptionDetector.java"


# instance fields
.field private final textPartFinder:Lcom/fsck/k9/message/extractors/TextPartFinder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/message/extractors/TextPartFinder;)V
    .locals 0
    .param p1, "textPartFinder"    # Lcom/fsck/k9/message/extractors/TextPartFinder;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fsck/k9/message/extractors/EncryptionDetector;->textPartFinder:Lcom/fsck/k9/message/extractors/TextPartFinder;

    .line 22
    return-void
.end method

.method private containsInlinePgpEncryptedText(Lcom/fsck/k9/mail/Message;)Z
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/fsck/k9/message/extractors/EncryptionDetector;->textPartFinder:Lcom/fsck/k9/message/extractors/TextPartFinder;

    invoke-virtual {v1, p1}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    move-result-object v0

    .line 34
    .local v0, "textPart":Lcom/fsck/k9/mail/Part;
    invoke-static {v0}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartPgpInlineEncrypted(Lcom/fsck/k9/mail/Part;)Z

    move-result v1

    return v1
.end method

.method private varargs containsPartWithMimeType(Lcom/fsck/k9/mail/Part;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .param p2, "wantedMimeTypes"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 38
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "mimeType":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/fsck/k9/message/extractors/EncryptionDetector;->isMimeTypeAnyOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    :goto_0
    return v4

    .line 43
    :cond_0
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 44
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v5, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v5, :cond_2

    move-object v3, v0

    .line 45
    check-cast v3, Lcom/fsck/k9/mail/Multipart;

    .line 46
    .local v3, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/BodyPart;

    .line 47
    .local v1, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-direct {p0, v1, p2}, Lcom/fsck/k9/message/extractors/EncryptionDetector;->containsPartWithMimeType(Lcom/fsck/k9/mail/Part;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 53
    .end local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v3    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private varargs isMimeTypeAnyOf(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "wantedMimeTypes"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 57
    array-length v3, p2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 58
    .local v0, "wantedMimeType":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    const/4 v1, 0x1

    .line 63
    .end local v0    # "wantedMimeType":Ljava/lang/String;
    :cond_0
    return v1

    .line 57
    .restart local v0    # "wantedMimeType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isPgpMimeOrSMimeEncrypted(Lcom/fsck/k9/mail/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "multipart/encrypted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/pkcs7-mime"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/message/extractors/EncryptionDetector;->containsPartWithMimeType(Lcom/fsck/k9/mail/Part;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isEncrypted(Lcom/fsck/k9/mail/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/fsck/k9/message/extractors/EncryptionDetector;->isPgpMimeOrSMimeEncrypted(Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fsck/k9/message/extractors/EncryptionDetector;->containsInlinePgpEncryptedText(Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

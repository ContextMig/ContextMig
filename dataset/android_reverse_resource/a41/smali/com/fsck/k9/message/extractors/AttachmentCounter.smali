.class public Lcom/fsck/k9/message/extractors/AttachmentCounter;
.super Ljava/lang/Object;
.source "AttachmentCounter.java"


# instance fields
.field private final encryptionDetector:Lcom/fsck/k9/message/extractors/EncryptionDetector;


# direct methods
.method constructor <init>(Lcom/fsck/k9/message/extractors/EncryptionDetector;)V
    .locals 0
    .param p1, "encryptionDetector"    # Lcom/fsck/k9/message/extractors/EncryptionDetector;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fsck/k9/message/extractors/AttachmentCounter;->encryptionDetector:Lcom/fsck/k9/message/extractors/EncryptionDetector;

    .line 19
    return-void
.end method

.method public static newInstance()Lcom/fsck/k9/message/extractors/AttachmentCounter;
    .locals 3

    .prologue
    .line 22
    new-instance v1, Lcom/fsck/k9/message/extractors/TextPartFinder;

    invoke-direct {v1}, Lcom/fsck/k9/message/extractors/TextPartFinder;-><init>()V

    .line 23
    .local v1, "textPartFinder":Lcom/fsck/k9/message/extractors/TextPartFinder;
    new-instance v0, Lcom/fsck/k9/message/extractors/EncryptionDetector;

    invoke-direct {v0, v1}, Lcom/fsck/k9/message/extractors/EncryptionDetector;-><init>(Lcom/fsck/k9/message/extractors/TextPartFinder;)V

    .line 24
    .local v0, "encryptionDetector":Lcom/fsck/k9/message/extractors/EncryptionDetector;
    new-instance v2, Lcom/fsck/k9/message/extractors/AttachmentCounter;

    invoke-direct {v2, v0}, Lcom/fsck/k9/message/extractors/AttachmentCounter;-><init>(Lcom/fsck/k9/message/extractors/EncryptionDetector;)V

    return-object v2
.end method


# virtual methods
.method public getAttachmentCount(Lcom/fsck/k9/mail/Message;)I
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v1, p0, Lcom/fsck/k9/message/extractors/AttachmentCounter;->encryptionDetector:Lcom/fsck/k9/message/extractors/EncryptionDetector;

    invoke-virtual {v1, p1}, Lcom/fsck/k9/message/extractors/EncryptionDetector;->isEncrypted(Lcom/fsck/k9/mail/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return v1

    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "attachmentParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/List;)V

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

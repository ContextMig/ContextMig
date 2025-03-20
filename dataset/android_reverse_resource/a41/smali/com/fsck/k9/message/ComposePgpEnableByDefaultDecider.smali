.class public Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;
.super Ljava/lang/Object;
.source "ComposePgpEnableByDefaultDecider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private messageIsEncrypted(Lcom/fsck/k9/mail/Message;)Z
    .locals 2
    .param p1, "localMessage"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 17
    invoke-static {p1}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->findMultipartEncryptedParts(Lcom/fsck/k9/mail/Part;)Ljava/util/List;

    move-result-object v0

    .line 18
    .local v0, "encryptedParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public shouldEncryptByDefault(Lcom/fsck/k9/mail/Message;)Z
    .locals 1
    .param p1, "localMessage"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;->messageIsEncrypted(Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    return v0
.end method

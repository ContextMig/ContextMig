.class public Lcom/fsck/k9/mailstore/MessageViewInfo;
.super Ljava/lang/Object;
.source "MessageViewInfo.java"


# instance fields
.field public final attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

.field public final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/AttachmentViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

.field public final extraAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/AttachmentViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final extraText:Ljava/lang/String;

.field public final isMessageIncomplete:Z

.field public final message:Lcom/fsck/k9/mail/Message;

.field public final rootPart:Lcom/fsck/k9/mail/Part;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/Message;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "isMessageIncomplete"    # Z
    .param p3, "rootPart"    # Lcom/fsck/k9/mail/Part;
    .param p4, "text"    # Ljava/lang/String;
    .param p6, "cryptoResultAnnotation"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .param p7, "attachmentResolver"    # Lcom/fsck/k9/mailstore/AttachmentResolver;
    .param p8, "extraText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Message;",
            "Z",
            "Lcom/fsck/k9/mail/Part;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/AttachmentViewInfo;",
            ">;",
            "Lcom/fsck/k9/mailstore/CryptoResultAnnotation;",
            "Lcom/fsck/k9/mailstore/AttachmentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/AttachmentViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p5, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/AttachmentViewInfo;>;"
    .local p9, "extraAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/AttachmentViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    .line 30
    iput-boolean p2, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->isMessageIncomplete:Z

    .line 31
    iput-object p3, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    .line 32
    iput-object p4, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->text:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 34
    iput-object p7, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 35
    iput-object p5, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    .line 36
    iput-object p8, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraText:Ljava/lang/String;

    .line 37
    iput-object p9, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraAttachments:Ljava/util/List;

    .line 38
    return-void
.end method

.method public static createWithErrorState(Lcom/fsck/k9/mail/Message;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 10
    .param p0, "message"    # Lcom/fsck/k9/mail/Message;
    .param p1, "isMessageIncomplete"    # Z

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-object v1, p0

    move v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/mailstore/MessageViewInfo;-><init>(Lcom/fsck/k9/mail/Message;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method static createWithExtractedContent(Lcom/fsck/k9/mail/Message;ZLjava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/AttachmentResolver;)Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 10
    .param p0, "message"    # Lcom/fsck/k9/mail/Message;
    .param p1, "isMessageIncomplete"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p4, "attachmentResolver"    # Lcom/fsck/k9/mailstore/AttachmentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Message;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/AttachmentViewInfo;",
            ">;",
            "Lcom/fsck/k9/mailstore/AttachmentResolver;",
            ")",
            "Lcom/fsck/k9/mailstore/MessageViewInfo;"
        }
    .end annotation

    .prologue
    .local p3, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/AttachmentViewInfo;>;"
    const/4 v6, 0x0

    .line 42
    new-instance v0, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object v1, p0

    move v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/mailstore/MessageViewInfo;-><init>(Lcom/fsck/k9/mail/Message;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method withCryptoData(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Ljava/lang/String;Ljava/util/List;)Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 10
    .param p1, "rootPartAnnotation"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .param p2, "extraViewableText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mailstore/CryptoResultAnnotation;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/AttachmentViewInfo;",
            ">;)",
            "Lcom/fsck/k9/mailstore/MessageViewInfo;"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "extraAttachmentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/AttachmentViewInfo;>;"
    new-instance v0, Lcom/fsck/k9/mailstore/MessageViewInfo;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    iget-boolean v2, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->isMessageIncomplete:Z

    iget-object v3, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    iget-object v4, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    iget-object v7, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/mailstore/MessageViewInfo;-><init>(Lcom/fsck/k9/mail/Message;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

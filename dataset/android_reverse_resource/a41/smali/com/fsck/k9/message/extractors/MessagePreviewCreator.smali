.class public Lcom/fsck/k9/message/extractors/MessagePreviewCreator;
.super Ljava/lang/Object;
.source "MessagePreviewCreator.java"


# instance fields
.field private final encryptionDetector:Lcom/fsck/k9/message/extractors/EncryptionDetector;

.field private final previewTextExtractor:Lcom/fsck/k9/message/extractors/PreviewTextExtractor;

.field private final textPartFinder:Lcom/fsck/k9/message/extractors/TextPartFinder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/message/extractors/TextPartFinder;Lcom/fsck/k9/message/extractors/PreviewTextExtractor;Lcom/fsck/k9/message/extractors/EncryptionDetector;)V
    .locals 0
    .param p1, "textPartFinder"    # Lcom/fsck/k9/message/extractors/TextPartFinder;
    .param p2, "previewTextExtractor"    # Lcom/fsck/k9/message/extractors/PreviewTextExtractor;
    .param p3, "encryptionDetector"    # Lcom/fsck/k9/message/extractors/EncryptionDetector;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;->textPartFinder:Lcom/fsck/k9/message/extractors/TextPartFinder;

    .line 19
    iput-object p2, p0, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;->previewTextExtractor:Lcom/fsck/k9/message/extractors/PreviewTextExtractor;

    .line 20
    iput-object p3, p0, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;->encryptionDetector:Lcom/fsck/k9/message/extractors/EncryptionDetector;

    .line 21
    return-void
.end method

.method private extractText(Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/message/extractors/PreviewResult;
    .locals 4
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 39
    iget-object v3, p0, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;->textPartFinder:Lcom/fsck/k9/message/extractors/TextPartFinder;

    invoke-virtual {v3, p1}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    move-result-object v2

    .line 40
    .local v2, "textPart":Lcom/fsck/k9/mail/Part;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;->hasEmptyBody(Lcom/fsck/k9/mail/Part;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/fsck/k9/message/extractors/PreviewResult;->none()Lcom/fsck/k9/message/extractors/PreviewResult;

    move-result-object v3

    .line 48
    :goto_0
    return-object v3

    .line 45
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;->previewTextExtractor:Lcom/fsck/k9/message/extractors/PreviewTextExtractor;

    invoke-virtual {v3, v2}, Lcom/fsck/k9/message/extractors/PreviewTextExtractor;->extractPreview(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "previewText":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/message/extractors/PreviewResult;->text(Ljava/lang/String;)Lcom/fsck/k9/message/extractors/PreviewResult;
    :try_end_0
    .catch Lcom/fsck/k9/message/extractors/PreviewExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 47
    .end local v1    # "previewText":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lcom/fsck/k9/message/extractors/PreviewExtractionException;
    invoke-static {}, Lcom/fsck/k9/message/extractors/PreviewResult;->error()Lcom/fsck/k9/message/extractors/PreviewResult;

    move-result-object v3

    goto :goto_0
.end method

.method private hasEmptyBody(Lcom/fsck/k9/mail/Part;)Z
    .locals 1
    .param p1, "textPart"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance()Lcom/fsck/k9/message/extractors/MessagePreviewCreator;
    .locals 4

    .prologue
    .line 24
    new-instance v2, Lcom/fsck/k9/message/extractors/TextPartFinder;

    invoke-direct {v2}, Lcom/fsck/k9/message/extractors/TextPartFinder;-><init>()V

    .line 25
    .local v2, "textPartFinder":Lcom/fsck/k9/message/extractors/TextPartFinder;
    new-instance v1, Lcom/fsck/k9/message/extractors/PreviewTextExtractor;

    invoke-direct {v1}, Lcom/fsck/k9/message/extractors/PreviewTextExtractor;-><init>()V

    .line 26
    .local v1, "previewTextExtractor":Lcom/fsck/k9/message/extractors/PreviewTextExtractor;
    new-instance v0, Lcom/fsck/k9/message/extractors/EncryptionDetector;

    invoke-direct {v0, v2}, Lcom/fsck/k9/message/extractors/EncryptionDetector;-><init>(Lcom/fsck/k9/message/extractors/TextPartFinder;)V

    .line 27
    .local v0, "encryptionDetector":Lcom/fsck/k9/message/extractors/EncryptionDetector;
    new-instance v3, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;

    invoke-direct {v3, v2, v1, v0}, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;-><init>(Lcom/fsck/k9/message/extractors/TextPartFinder;Lcom/fsck/k9/message/extractors/PreviewTextExtractor;Lcom/fsck/k9/message/extractors/EncryptionDetector;)V

    return-object v3
.end method


# virtual methods
.method public createPreview(Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/message/extractors/PreviewResult;
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;->encryptionDetector:Lcom/fsck/k9/message/extractors/EncryptionDetector;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/message/extractors/EncryptionDetector;->isEncrypted(Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/fsck/k9/message/extractors/PreviewResult;->encrypted()Lcom/fsck/k9/message/extractors/PreviewResult;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;->extractText(Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/message/extractors/PreviewResult;

    move-result-object v0

    goto :goto_0
.end method

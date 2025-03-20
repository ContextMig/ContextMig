.class public Lcom/fsck/k9/message/extractors/MessageFulltextCreator;
.super Ljava/lang/Object;
.source "MessageFulltextCreator.java"


# static fields
.field private static final MAX_CHARACTERS_CHECKED_FOR_FTS:I = 0x32000


# instance fields
.field private final encryptionDetector:Lcom/fsck/k9/message/extractors/EncryptionDetector;

.field private final textPartFinder:Lcom/fsck/k9/message/extractors/TextPartFinder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/message/extractors/TextPartFinder;Lcom/fsck/k9/message/extractors/EncryptionDetector;)V
    .locals 0
    .param p1, "textPartFinder"    # Lcom/fsck/k9/message/extractors/TextPartFinder;
    .param p2, "encryptionDetector"    # Lcom/fsck/k9/message/extractors/EncryptionDetector;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;->textPartFinder:Lcom/fsck/k9/message/extractors/TextPartFinder;

    .line 23
    iput-object p2, p0, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;->encryptionDetector:Lcom/fsck/k9/message/extractors/EncryptionDetector;

    .line 24
    return-void
.end method

.method private extractText(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 41
    iget-object v3, p0, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;->textPartFinder:Lcom/fsck/k9/message/extractors/TextPartFinder;

    invoke-virtual {v3, p1}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    move-result-object v2

    .line 42
    .local v2, "textPart":Lcom/fsck/k9/mail/Part;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;->hasEmptyBody(Lcom/fsck/k9/mail/Part;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 52
    :cond_1
    :goto_0
    return-object v1

    .line 46
    :cond_2
    const-wide/32 v4, 0x32000

    invoke-static {v2, v4, v5}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "text":Ljava/lang/String;
    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "mimeType":Ljava/lang/String;
    const-string v3, "text/html"

    invoke-static {v0, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-static {v1}, Lcom/fsck/k9/message/html/HtmlConverter;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hasEmptyBody(Lcom/fsck/k9/mail/Part;)Z
    .locals 1
    .param p1, "textPart"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 56
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

.method public static newInstance()Lcom/fsck/k9/message/extractors/MessageFulltextCreator;
    .locals 3

    .prologue
    .line 27
    new-instance v1, Lcom/fsck/k9/message/extractors/TextPartFinder;

    invoke-direct {v1}, Lcom/fsck/k9/message/extractors/TextPartFinder;-><init>()V

    .line 28
    .local v1, "textPartFinder":Lcom/fsck/k9/message/extractors/TextPartFinder;
    new-instance v0, Lcom/fsck/k9/message/extractors/EncryptionDetector;

    invoke-direct {v0, v1}, Lcom/fsck/k9/message/extractors/EncryptionDetector;-><init>(Lcom/fsck/k9/message/extractors/TextPartFinder;)V

    .line 29
    .local v0, "encryptionDetector":Lcom/fsck/k9/message/extractors/EncryptionDetector;
    new-instance v2, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;

    invoke-direct {v2, v1, v0}, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;-><init>(Lcom/fsck/k9/message/extractors/TextPartFinder;Lcom/fsck/k9/message/extractors/EncryptionDetector;)V

    return-object v2
.end method


# virtual methods
.method public createFulltext(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;->encryptionDetector:Lcom/fsck/k9/message/extractors/EncryptionDetector;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/message/extractors/EncryptionDetector;->isEncrypted(Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;->extractText(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

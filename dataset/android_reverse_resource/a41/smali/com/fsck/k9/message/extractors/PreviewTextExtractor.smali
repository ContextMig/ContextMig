.class Lcom/fsck/k9/message/extractors/PreviewTextExtractor;
.super Ljava/lang/Object;
.source "PreviewTextExtractor.java"


# static fields
.field private static final MAX_CHARACTERS_CHECKED_FOR_PREVIEW:I = 0x2000

.field private static final MAX_PREVIEW_LENGTH:I = 0x200


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertFromHtmlIfNecessary(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "textPart"    # Lcom/fsck/k9/mail/Part;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "text/html"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    .end local p2    # "text":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Lcom/fsck/k9/message/html/HtmlConverter;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private stripTextForPreview(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    const-string v0, ""

    .line 67
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const-string v0, "(?ms)^-- [\\r\\n]+.*"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    const-string v0, "(?m)^----.*?$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    const-string v0, "(?m)^[#>].*$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    const-string v0, "(?m)^On .*wrote.?$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    const-string v0, "(?m)^.*\\w+:$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    const-string v0, "\\s*([-=_]{30,}+)\\s*"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string v0, "https?://\\S+"

    const-string v1, "..."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    const-string v0, "(\\r|\\n)+"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1ff

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public extractPreview(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
    .locals 4
    .param p1, "textPart"    # Lcom/fsck/k9/mail/Part;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/message/extractors/PreviewExtractionException;
        }
    .end annotation

    .prologue
    .line 20
    const-wide/16 v2, 0x2000

    invoke-static {p1, v2, v3}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 22
    new-instance v2, Lcom/fsck/k9/message/extractors/PreviewExtractionException;

    const-string v3, "Couldn\'t get text from part"

    invoke-direct {v2, v3}, Lcom/fsck/k9/message/extractors/PreviewExtractionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 25
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/message/extractors/PreviewTextExtractor;->convertFromHtmlIfNecessary(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "plainText":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fsck/k9/message/extractors/PreviewTextExtractor;->stripTextForPreview(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

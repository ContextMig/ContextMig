.class public Lcom/fsck/k9/message/html/HtmlProcessor;
.super Ljava/lang/Object;
.source "HtmlProcessor.java"


# instance fields
.field private final htmlSanitizer:Lcom/fsck/k9/message/html/HtmlSanitizer;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/message/html/HtmlSanitizer;)V
    .locals 0
    .param p1, "htmlSanitizer"    # Lcom/fsck/k9/message/html/HtmlSanitizer;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/fsck/k9/message/html/HtmlProcessor;->htmlSanitizer:Lcom/fsck/k9/message/html/HtmlSanitizer;

    .line 18
    return-void
.end method

.method private addCustomHeadContents(Lorg/jsoup/nodes/Document;)V
    .locals 3
    .param p1, "document"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 28
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<meta name=\"viewport\" content=\"width=device-width\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    invoke-static {}, Lcom/fsck/k9/message/html/HtmlConverter;->cssStyleTheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    invoke-static {}, Lcom/fsck/k9/message/html/HtmlConverter;->cssStylePre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->append(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 31
    return-void
.end method

.method public static newInstance()Lcom/fsck/k9/message/html/HtmlProcessor;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/fsck/k9/message/html/HtmlSanitizer;

    invoke-direct {v0}, Lcom/fsck/k9/message/html/HtmlSanitizer;-><init>()V

    .line 13
    .local v0, "htmlSanitizer":Lcom/fsck/k9/message/html/HtmlSanitizer;
    new-instance v1, Lcom/fsck/k9/message/html/HtmlProcessor;

    invoke-direct {v1, v0}, Lcom/fsck/k9/message/html/HtmlProcessor;-><init>(Lcom/fsck/k9/message/html/HtmlSanitizer;)V

    return-object v1
.end method

.method public static toCompactString(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 2
    .param p0, "document"    # Lorg/jsoup/nodes/Document;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint(Z)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount(I)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 38
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public processForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v1, p0, Lcom/fsck/k9/message/html/HtmlProcessor;->htmlSanitizer:Lcom/fsck/k9/message/html/HtmlSanitizer;

    invoke-virtual {v1, p1}, Lcom/fsck/k9/message/html/HtmlSanitizer;->sanitize(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 22
    .local v0, "document":Lorg/jsoup/nodes/Document;
    invoke-direct {p0, v0}, Lcom/fsck/k9/message/html/HtmlProcessor;->addCustomHeadContents(Lorg/jsoup/nodes/Document;)V

    .line 24
    invoke-static {v0}, Lcom/fsck/k9/message/html/HtmlProcessor;->toCompactString(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

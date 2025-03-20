.class public Lcom/fsck/k9/message/html/HtmlSanitizer;
.super Ljava/lang/Object;
.source "HtmlSanitizer.java"


# instance fields
.field private final cleaner:Lorg/jsoup/safety/Cleaner;

.field private final headCleaner:Lcom/fsck/k9/message/html/HeadCleaner;


# direct methods
.method constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lorg/jsoup/safety/Whitelist;->relaxed()Lorg/jsoup/safety/Whitelist;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "font"

    aput-object v3, v2, v6

    const-string v3, "hr"

    aput-object v3, v2, v7

    const-string v3, "ins"

    aput-object v3, v2, v8

    const-string v3, "del"

    aput-object v3, v2, v9

    .line 16
    invoke-virtual {v1, v2}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v1

    const-string v2, "font"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "color"

    aput-object v4, v3, v6

    const-string v4, "face"

    aput-object v4, v3, v7

    const-string v4, "size"

    aput-object v4, v3, v8

    .line 17
    invoke-virtual {v1, v2, v3}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v1

    const-string v2, "table"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "align"

    aput-object v4, v3, v6

    const-string v4, "background"

    aput-object v4, v3, v7

    const-string v4, "bgcolor"

    aput-object v4, v3, v8

    const-string v4, "border"

    aput-object v4, v3, v9

    const-string v4, "cellpadding"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "cellspacing"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "width"

    aput-object v5, v3, v4

    .line 18
    invoke-virtual {v1, v2, v3}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v1

    const-string v2, "tr"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "align"

    aput-object v4, v3, v6

    const-string v4, "bgcolor"

    aput-object v4, v3, v7

    const-string v4, "valign"

    aput-object v4, v3, v8

    .line 20
    invoke-virtual {v1, v2, v3}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v1

    const-string v2, "th"

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "align"

    aput-object v4, v3, v6

    const-string v4, "bgcolor"

    aput-object v4, v3, v7

    const-string v4, "colspan"

    aput-object v4, v3, v8

    const-string v4, "headers"

    aput-object v4, v3, v9

    const-string v4, "height"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "nowrap"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "rowspan"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "scope"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "sorted"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "valign"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "width"

    aput-object v5, v3, v4

    .line 21
    invoke-virtual {v1, v2, v3}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v1

    const-string v2, "td"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "align"

    aput-object v4, v3, v6

    const-string v4, "bgcolor"

    aput-object v4, v3, v7

    const-string v4, "colspan"

    aput-object v4, v3, v8

    const-string v4, "headers"

    aput-object v4, v3, v9

    const-string v4, "height"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "nowrap"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "rowspan"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "scope"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "valign"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "width"

    aput-object v5, v3, v4

    .line 24
    invoke-virtual {v1, v2, v3}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v1

    const-string v2, ":all"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "class"

    aput-object v4, v3, v6

    const-string v4, "style"

    aput-object v4, v3, v7

    const-string v4, "id"

    aput-object v4, v3, v8

    .line 27
    invoke-virtual {v1, v2, v3}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v1

    const-string v2, "img"

    const-string v3, "src"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "http"

    aput-object v5, v4, v6

    const-string v5, "https"

    aput-object v5, v4, v7

    const-string v5, "cid"

    aput-object v5, v4, v8

    const-string v5, "data"

    aput-object v5, v4, v9

    .line 28
    invoke-virtual {v1, v2, v3, v4}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    .line 30
    .local v0, "whitelist":Lorg/jsoup/safety/Whitelist;
    new-instance v1, Lorg/jsoup/safety/Cleaner;

    invoke-direct {v1, v0}, Lorg/jsoup/safety/Cleaner;-><init>(Lorg/jsoup/safety/Whitelist;)V

    iput-object v1, p0, Lcom/fsck/k9/message/html/HtmlSanitizer;->cleaner:Lorg/jsoup/safety/Cleaner;

    .line 31
    new-instance v1, Lcom/fsck/k9/message/html/HeadCleaner;

    invoke-direct {v1}, Lcom/fsck/k9/message/html/HeadCleaner;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/message/html/HtmlSanitizer;->headCleaner:Lcom/fsck/k9/message/html/HeadCleaner;

    .line 32
    return-void
.end method


# virtual methods
.method public sanitize(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 36
    .local v1, "dirtyDocument":Lorg/jsoup/nodes/Document;
    iget-object v2, p0, Lcom/fsck/k9/message/html/HtmlSanitizer;->cleaner:Lorg/jsoup/safety/Cleaner;

    invoke-virtual {v2, v1}, Lorg/jsoup/safety/Cleaner;->clean(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 37
    .local v0, "cleanedDocument":Lorg/jsoup/nodes/Document;
    iget-object v2, p0, Lcom/fsck/k9/message/html/HtmlSanitizer;->headCleaner:Lcom/fsck/k9/message/html/HeadCleaner;

    invoke-virtual {v2, v1, v0}, Lcom/fsck/k9/message/html/HeadCleaner;->clean(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Document;)V

    .line 38
    return-object v0
.end method

.class public Lcom/fsck/k9/message/html/UriLinkifier;
.super Ljava/lang/Object;
.source "UriLinkifier.java"


# static fields
.field private static final ALLOWED_SEPARATORS_PATTERN:Ljava/lang/String; = "(?:^|[ (\\n>])"

.field private static final SCHEME_SEPARATORS:Ljava/lang/String; = " (\\n>"

.field private static final SUPPORTED_URIS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/message/html/UriParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final URI_SCHEME:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/fsck/k9/message/html/UriLinkifier;->SUPPORTED_URIS:Ljava/util/Map;

    .line 21
    sget-object v3, Lcom/fsck/k9/message/html/UriLinkifier;->SUPPORTED_URIS:Ljava/util/Map;

    const-string v4, "ethereum:"

    new-instance v5, Lcom/fsck/k9/message/html/EthereumUriParser;

    invoke-direct {v5}, Lcom/fsck/k9/message/html/EthereumUriParser;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v3, Lcom/fsck/k9/message/html/UriLinkifier;->SUPPORTED_URIS:Ljava/util/Map;

    const-string v4, "bitcoin:"

    new-instance v5, Lcom/fsck/k9/message/html/BitcoinUriParser;

    invoke-direct {v5}, Lcom/fsck/k9/message/html/BitcoinUriParser;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/fsck/k9/message/html/HttpUriParser;

    invoke-direct {v1}, Lcom/fsck/k9/message/html/HttpUriParser;-><init>()V

    .line 24
    .local v1, "httpParser":Lcom/fsck/k9/message/html/UriParser;
    sget-object v3, Lcom/fsck/k9/message/html/UriLinkifier;->SUPPORTED_URIS:Ljava/util/Map;

    const-string v4, "http:"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v3, Lcom/fsck/k9/message/html/UriLinkifier;->SUPPORTED_URIS:Ljava/util/Map;

    const-string v4, "https:"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v3, Lcom/fsck/k9/message/html/UriLinkifier;->SUPPORTED_URIS:Ljava/util/Map;

    const-string v4, "rtsp:"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v3, "|"

    sget-object v4, Lcom/fsck/k9/message/html/UriLinkifier;->SUPPORTED_URIS:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "allSchemes":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?:^|[ (\\n>])("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "pattern":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/fsck/k9/message/html/UriLinkifier;->URI_SCHEME:Ljava/util/regex/Pattern;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static linkifyText(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "outputBuffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v9, 0x1

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "currentPos":I
    sget-object v10, Lcom/fsck/k9/message/html/UriLinkifier;->URI_SCHEME:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 38
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 39
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    .line 41
    .local v5, "startPos":I
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "textBeforeMatch":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "scheme":Ljava/lang/String;
    sget-object v10, Lcom/fsck/k9/message/html/UriLinkifier;->SUPPORTED_URIS:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/message/html/UriParser;

    .line 46
    .local v3, "parser":Lcom/fsck/k9/message/html/UriParser;
    invoke-interface {v3, p0, v5, p1}, Lcom/fsck/k9/message/html/UriParser;->linkifyUri(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v2

    .line 48
    .local v2, "newPos":I
    if-gt v2, v5, :cond_2

    move v8, v9

    .line 49
    .local v8, "uriWasNotLinkified":Z
    :goto_0
    if-eqz v8, :cond_3

    .line 50
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51
    add-int/lit8 v0, v5, 0x1

    .line 56
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v0, v10, :cond_0

    .line 61
    .end local v2    # "newPos":I
    .end local v3    # "parser":Lcom/fsck/k9/message/html/UriParser;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "startPos":I
    .end local v7    # "textBeforeMatch":Ljava/lang/String;
    .end local v8    # "uriWasNotLinkified":Z
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "textAfterLastMatch":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    return-void

    .line 48
    .end local v6    # "textAfterLastMatch":Ljava/lang/String;
    .restart local v2    # "newPos":I
    .restart local v3    # "parser":Lcom/fsck/k9/message/html/UriParser;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "startPos":I
    .restart local v7    # "textBeforeMatch":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 53
    .restart local v8    # "uriWasNotLinkified":Z
    :cond_3
    if-le v2, v0, :cond_4

    move v0, v2

    :goto_2
    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

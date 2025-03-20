.class public Lcom/fsck/k9/mail/message/MessageHeaderParser;
.super Ljava/lang/Object;
.source "MessageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/message/MessageHeaderParser$MessageHeaderParserContentHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMimeStreamParser()Lorg/apache/james/mime4j/parser/MimeStreamParser;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 33
    new-instance v1, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    invoke-direct {v1}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;-><init>()V

    .line 34
    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setMaxHeaderLen(I)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setMaxLineLen(I)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setMaxHeaderCount(I)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->build()Lorg/apache/james/mime4j/stream/MimeConfig;

    move-result-object v0

    .line 39
    .local v0, "parserConfig":Lorg/apache/james/mime4j/stream/MimeConfig;
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V

    return-object v1
.end method

.method public static parse(Lcom/fsck/k9/mail/Part;Ljava/io/InputStream;)V
    .locals 5
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .param p1, "headerInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/fsck/k9/mail/message/MessageHeaderParser;->getMimeStreamParser()Lorg/apache/james/mime4j/parser/MimeStreamParser;

    move-result-object v2

    .line 21
    .local v2, "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    new-instance v3, Lcom/fsck/k9/mail/message/MessageHeaderParser$MessageHeaderParserContentHandler;

    invoke-direct {v3, p0}, Lcom/fsck/k9/mail/message/MessageHeaderParser$MessageHeaderParserContentHandler;-><init>(Lcom/fsck/k9/mail/Part;)V

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 24
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    return-void

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "me":Lorg/apache/james/mime4j/MimeException;
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Error parsing headers"

    invoke-direct {v3, v4, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 27
    .end local v1    # "me":Lorg/apache/james/mime4j/MimeException;
    :catch_1
    move-exception v0

    .line 28
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "I/O error parsing headers"

    invoke-direct {v3, v4, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

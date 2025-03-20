.class public Lcom/fsck/k9/mailstore/MimePartStreamParser;
.super Ljava/lang/Object;
.source "MimePartStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;Ljava/lang/String;Lcom/fsck/k9/mailstore/util/FileFactory;)Lcom/fsck/k9/mail/Body;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/fsck/k9/mailstore/util/FileFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/fsck/k9/mailstore/MimePartStreamParser;->createBody(Ljava/io/InputStream;Ljava/lang/String;Lcom/fsck/k9/mailstore/util/FileFactory;)Lcom/fsck/k9/mail/Body;

    move-result-object v0

    return-object v0
.end method

.method private static createBody(Ljava/io/InputStream;Ljava/lang/String;Lcom/fsck/k9/mailstore/util/FileFactory;)Lcom/fsck/k9/mail/Body;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "transferEncoding"    # Ljava/lang/String;
    .param p2, "fileFactory"    # Lcom/fsck/k9/mailstore/util/FileFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/fsck/k9/mailstore/DeferredFileBody;

    invoke-direct {v0, p2, p1}, Lcom/fsck/k9/mailstore/DeferredFileBody;-><init>(Lcom/fsck/k9/mailstore/util/FileFactory;Ljava/lang/String;)V

    .line 57
    .local v0, "body":Lcom/fsck/k9/mailstore/DeferredFileBody;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/DeferredFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 59
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 64
    return-object v0

    .line 61
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method public static parse(Lcom/fsck/k9/mailstore/util/FileFactory;Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 6
    .param p0, "fileFactory"    # Lcom/fsck/k9/mailstore/util/FileFactory;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 33
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-direct {v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>()V

    .line 35
    .local v1, "parsedRootPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    new-instance v4, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    invoke-direct {v4}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;-><init>()V

    .line 36
    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setMaxHeaderLen(I)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v4

    .line 37
    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setMaxLineLen(I)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v4

    .line 38
    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setMaxHeaderCount(I)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->build()Lorg/apache/james/mime4j/stream/MimeConfig;

    move-result-object v3

    .line 41
    .local v3, "parserConfig":Lorg/apache/james/mime4j/stream/MimeConfig;
    new-instance v2, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 42
    .local v2, "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    new-instance v4, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;

    invoke-direct {v4, p0, v1}, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;-><init>(Lcom/fsck/k9/mailstore/util/FileFactory;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 43
    invoke-virtual {v2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setRecurse()V

    .line 46
    :try_start_0
    new-instance v4, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;

    invoke-direct {v4, p1}, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/apache/james/mime4j/MimeException;
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "Failed to parse decrypted content"

    invoke-direct {v4, v5, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

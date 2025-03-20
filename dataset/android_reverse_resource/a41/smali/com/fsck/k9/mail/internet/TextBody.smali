.class public Lcom/fsck/k9/mail/internet/TextBody;
.super Ljava/lang/Object;
.source "TextBody.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;
.implements Lcom/fsck/k9/mail/internet/SizeAware;


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private charset:Ljava/lang/String;

.field private composedMessageLength:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private composedMessageOffset:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private encoding:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/fsck/k9/mail/internet/TextBody;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/TextBody;->charset:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/TextBody;->text:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private getLengthWhenQuotedPrintableEncoded([B)J
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/fsck/k9/mail/filter/CountingOutputStream;

    invoke-direct {v0}, Lcom/fsck/k9/mail/filter/CountingOutputStream;-><init>()V

    .line 127
    .local v0, "countingOutputStream":Lcom/fsck/k9/mail/filter/CountingOutputStream;
    invoke-direct {p0, v0, p1}, Lcom/fsck/k9/mail/internet/TextBody;->writeSignSafeQuotedPrintable(Ljava/io/OutputStream;[B)V

    .line 128
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/CountingOutputStream;->getCount()J

    move-result-wide v2

    return-wide v2
.end method

.method private writeSignSafeQuotedPrintable(Ljava/io/OutputStream;[B)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;

    invoke-direct {v0, p1}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 134
    .local v0, "signSafeOutputStream":Lcom/fsck/k9/mail/filter/SignSafeOutputStream;
    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    .local v1, "signSafeQuotedPrintableOutputStream":Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
    :try_start_1
    invoke-virtual {v1, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->close()V

    .line 144
    return-void

    .line 139
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    .end local v1    # "signSafeQuotedPrintableOutputStream":Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream;->close()V

    throw v2
.end method


# virtual methods
.method public getComposedMessageLength()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getComposedMessageOffset()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/TextBody;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/TextBody;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/TextBody;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/TextBody;->charset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 68
    .local v0, "b":[B
    :goto_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 71
    .end local v0    # "b":[B
    :goto_1
    return-object v2

    .line 66
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/internet/TextBody;->EMPTY_BYTE_ARRAY:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "b":[B
    goto :goto_0

    .line 69
    .end local v0    # "b":[B
    :catch_0
    move-exception v1

    .line 70
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Unsupported charset: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/mail/internet/TextBody;->charset:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getRawText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/TextBody;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/TextBody;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/TextBody;->charset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 113
    .local v0, "bytes":[B
    const-string v2, "quoted-printable"

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/TextBody;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/TextBody;->getLengthWhenQuotedPrintableEncoded([B)J

    move-result-wide v2

    .line 116
    :goto_0
    return-wide v2

    .line 115
    :cond_0
    const-string v2, "8bit"

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/TextBody;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    array-length v2, v0

    int-to-long v2, v2

    goto :goto_0

    .line 118
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get size for encoding!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t get body size"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/TextBody;->charset:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setComposedMessageLength(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "composedMessageLength"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageLength:Ljava/lang/Integer;

    .line 97
    return-void
.end method

.method public setComposedMessageOffset(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "composedMessageOffset"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageOffset:Ljava/lang/Integer;

    .line 106
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, "quoted-printable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "8bit"

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 79
    .local v0, "isSupportedEncoding":Z
    :goto_0
    if-nez v0, :cond_2

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot encode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "isSupportedEncoding":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    .restart local v0    # "isSupportedEncoding":Z
    :cond_2
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/TextBody;->encoding:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/TextBody;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/TextBody;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/TextBody;->charset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 45
    .local v0, "bytes":[B
    const-string v1, "quoted-printable"

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/TextBody;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/internet/TextBody;->writeSignSafeQuotedPrintable(Ljava/io/OutputStream;[B)V

    .line 53
    .end local v0    # "bytes":[B
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local v0    # "bytes":[B
    :cond_1
    const-string v1, "8bit"

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/TextBody;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 50
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot get size for encoding!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

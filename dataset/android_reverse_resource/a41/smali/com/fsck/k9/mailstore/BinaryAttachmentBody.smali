.class abstract Lcom/fsck/k9/mailstore/BinaryAttachmentBody;
.super Ljava/lang/Object;
.source "BinaryAttachmentBody.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;


# instance fields
.field protected mEncoding:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fsck/k9/mailstore/BinaryAttachmentBody;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fsck/k9/mailstore/BinaryAttachmentBody;->mEncoding:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/BinaryAttachmentBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 29
    .local v1, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 30
    .local v0, "closeStream":Z
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mailstore/BinaryAttachmentBody;->mEncoding:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    new-instance v2, Lcom/fsck/k9/mail/filter/Base64OutputStream;

    invoke-direct {v2, p1}, Lcom/fsck/k9/mail/filter/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .end local p1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    const/4 v0, 0x1

    move-object p1, v2

    .line 39
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v1, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 48
    return-void

    .line 33
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/fsck/k9/mailstore/BinaryAttachmentBody;->mEncoding:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    new-instance v2, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 35
    .end local p1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    const/4 v0, 0x1

    move-object p1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :catchall_1
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
.end method

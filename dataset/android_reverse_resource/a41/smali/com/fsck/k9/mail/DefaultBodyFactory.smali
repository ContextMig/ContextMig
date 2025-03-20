.class public Lcom/fsck/k9/mail/DefaultBodyFactory;
.super Ljava/lang/Object;
.source "DefaultBodyFactory.java"

# interfaces
.implements Lcom/fsck/k9/mail/BodyFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected copyData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 42
    return-void
.end method

.method public createBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/fsck/k9/mail/Body;
    .locals 3
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    if-eqz p1, :cond_0

    .line 20
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    :cond_0
    invoke-static {p2}, Lorg/apache/james/mime4j/util/MimeUtil;->isMessage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    new-instance v1, Lcom/fsck/k9/mail/internet/BinaryTempFileMessageBody;

    invoke-direct {v1, p1}, Lcom/fsck/k9/mail/internet/BinaryTempFileMessageBody;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "tempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    :goto_0
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 32
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p3, v0}, Lcom/fsck/k9/mail/DefaultBodyFactory;->copyData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 37
    return-object v1

    .line 27
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .end local v1    # "tempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    :cond_1
    new-instance v1, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    invoke-direct {v1, p1}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;-><init>(Ljava/lang/String;)V

    .restart local v1    # "tempBody":Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    goto :goto_0

    .line 34
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

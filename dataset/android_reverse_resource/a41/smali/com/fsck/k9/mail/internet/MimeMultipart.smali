.class public Lcom/fsck/k9/mail/internet/MimeMultipart;
.super Lcom/fsck/k9/mail/Multipart;
.source "MimeMultipart.java"


# instance fields
.field private final boundary:Ljava/lang/String;

.field private epilogue:[B

.field private mimeType:Ljava/lang/String;

.field private preamble:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "multipart/mixed"

    invoke-direct {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "boundary"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/fsck/k9/mail/Multipart;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mimeType can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    if-nez p2, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "boundary can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->mimeType:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->boundary:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static newInstance()Lcom/fsck/k9/mail/internet/MimeMultipart;
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/fsck/k9/mail/BoundaryGenerator;->getInstance()Lcom/fsck/k9/mail/BoundaryGenerator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/BoundaryGenerator;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getEpilogue()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->epilogue:[B

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPreamble()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->preamble:[B

    return-object v0
.end method

.method public setEpilogue([B)V
    .locals 0
    .param p1, "epilogue"    # [B

    .prologue
    .line 62
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->epilogue:[B

    .line 63
    return-void
.end method

.method public setPreamble([B)V
    .locals 0
    .param p1, "preamble"    # [B

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->preamble:[B

    .line 55
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->mimeType:Ljava/lang/String;

    .line 72
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
    .line 76
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 78
    .local v1, "writer":Ljava/io/BufferedWriter;
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->preamble:[B

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->preamble:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 80
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 86
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 98
    :cond_1
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 100
    const-string v2, "--\r\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 102
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->epilogue:[B

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->epilogue:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 105
    :cond_2
    return-void

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/BodyPart;

    .line 89
    .local v0, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 91
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 93
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 94
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

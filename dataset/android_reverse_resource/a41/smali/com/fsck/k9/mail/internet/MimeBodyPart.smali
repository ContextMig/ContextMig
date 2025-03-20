.class public Lcom/fsck/k9/mail/internet/MimeBodyPart;
.super Lcom/fsck/k9/mail/BodyPart;
.source "MimeBodyPart.java"


# instance fields
.field private mBody:Lcom/fsck/k9/mail/Body;

.field private final mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/Body;)V
    .locals 1
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V
    .locals 1
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/fsck/k9/mail/BodyPart;-><init>()V

    .line 34
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    .line 35
    if-eqz p2, :cond_0

    .line 36
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-static {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/fsck/k9/mail/internet/MimeHeader;Lcom/fsck/k9/mail/Body;)V
    .locals 0
    .param p1, "header"    # Lcom/fsck/k9/mail/internet/MimeHeader;
    .param p2, "body"    # Lcom/fsck/k9/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/fsck/k9/mail/BodyPart;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    .line 43
    invoke-static {p0, p2}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 44
    return-void
.end method

.method private getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public addRawHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "raw"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public getBody()Lcom/fsck/k9/mail/Body;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 114
    const-string v3, "Content-ID"

    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "contentId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 116
    const/4 v0, 0x0

    .line 122
    .end local v0    # "contentId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 119
    .restart local v0    # "contentId":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 120
    .local v1, "first":I
    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 122
    .local v2, "last":I
    if-eq v1, v4, :cond_0

    if-eq v2, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 123
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    const-string v2, "Content-Type"

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    :goto_0
    return-object v2

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getParent()Lcom/fsck/k9/mail/Multipart;

    move-result-object v1

    .line 101
    .local v1, "parent":Lcom/fsck/k9/mail/Multipart;
    if-eqz v1, :cond_1

    const-string v2, "multipart/digest"

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Multipart;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    const-string v2, "message/rfc822"

    goto :goto_0

    .line 104
    :cond_1
    const-string v2, "text/plain"

    goto :goto_0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "Content-Disposition"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setBody(Lcom/fsck/k9/mail/Body;)V
    .locals 0
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 84
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    invoke-interface {v0, p1}, Lcom/fsck/k9/mail/Body;->setEncoding(Ljava/lang/String;)V

    .line 91
    :cond_0
    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public writeHeaderTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 154
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
    .line 142
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 143
    .local v0, "writer":Ljava/io/BufferedWriter;
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 144
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 146
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    invoke-interface {v1, p1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 149
    :cond_0
    return-void
.end method

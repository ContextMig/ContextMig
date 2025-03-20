.class public Lcom/fsck/k9/mail/internet/MimeMessageHelper;
.super Ljava/lang/Object;
.source "MimeMessageHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V
    .locals 10
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 17
    invoke-interface {p0, p1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 19
    instance-of v5, p0, Lcom/fsck/k9/mail/Message;

    if-eqz v5, :cond_0

    .line 20
    const-string v5, "MIME-Version"

    const-string v6, "1.0"

    invoke-interface {p0, v5, v6}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    instance-of v5, p1, Lcom/fsck/k9/mail/Multipart;

    if-eqz v5, :cond_2

    move-object v3, p1

    .line 24
    check-cast v3, Lcom/fsck/k9/mail/Multipart;

    .line 25
    .local v3, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v3, p0}, Lcom/fsck/k9/mail/Multipart;->setParent(Lcom/fsck/k9/mail/Part;)V

    .line 26
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Multipart;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "mimeType":Ljava/lang/String;
    const-string v5, "%s; boundary=\"%s\""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Multipart;->getBoundary()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "contentType":Ljava/lang/String;
    const-string v5, "Content-Type"

    invoke-interface {p0, v5, v0}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v5, "7bit"

    invoke-static {p0, v5}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setEncoding(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V

    .line 49
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local p1    # "body":Lcom/fsck/k9/mail/Body;
    :cond_1
    :goto_0
    return-void

    .line 31
    .restart local p1    # "body":Lcom/fsck/k9/mail/Body;
    :cond_2
    instance-of v5, p1, Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v5, :cond_5

    .line 33
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/*"

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 34
    const-string v5, "%s;\r\n charset=utf-8"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .restart local v0    # "contentType":Ljava/lang/String;
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\r\n name=\"%s\""

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v5, "Content-Type"

    invoke-interface {p0, v5, v0}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v5, "quoted-printable"

    invoke-static {p0, v5}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setEncoding(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_4
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 45
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_5
    instance-of v5, p1, Lcom/fsck/k9/mail/internet/RawDataBody;

    if-eqz v5, :cond_1

    .line 46
    check-cast p1, Lcom/fsck/k9/mail/internet/RawDataBody;

    .end local p1    # "body":Lcom/fsck/k9/mail/Body;
    invoke-interface {p1}, Lcom/fsck/k9/mail/internet/RawDataBody;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "encoding":Ljava/lang/String;
    const-string v5, "Content-Transfer-Encoding"

    invoke-interface {p0, v5, v1}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setEncoding(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
    .locals 2
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 53
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1}, Lcom/fsck/k9/mail/Body;->setEncoding(Ljava/lang/String;)V

    .line 56
    :cond_0
    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {p0, v1, p1}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

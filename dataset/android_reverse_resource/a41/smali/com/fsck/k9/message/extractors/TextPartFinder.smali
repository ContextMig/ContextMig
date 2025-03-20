.class Lcom/fsck/k9/message/extractors/TextPartFinder;
.super Ljava/lang/Object;
.source "TextPartFinder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findTextPartInMultipart(Lcom/fsck/k9/mail/Multipart;)Lcom/fsck/k9/mail/Part;
    .locals 6
    .param p1, "multipart"    # Lcom/fsck/k9/mail/Multipart;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/BodyPart;

    .line 67
    .local v1, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "mimeType":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/BodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 70
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v5, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v5, :cond_1

    .line 71
    invoke-virtual {p0, v1}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    move-result-object v2

    .line 72
    .local v2, "candidatePart":Lcom/fsck/k9/mail/Part;
    if-eqz v2, :cond_0

    .line 80
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v2    # "candidatePart":Lcom/fsck/k9/mail/Part;
    .end local v3    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 75
    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    .restart local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .restart local v3    # "mimeType":Ljava/lang/String;
    :cond_1
    const-string v5, "text/plain"

    invoke-static {v3, v5}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "text/html"

    invoke-static {v3, v5}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move-object v2, v1

    .line 76
    goto :goto_0

    .line 80
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findTextPartInMultipartAlternative(Lcom/fsck/k9/mail/Multipart;)Lcom/fsck/k9/mail/Part;
    .locals 8
    .param p1, "multipart"    # Lcom/fsck/k9/mail/Multipart;

    .prologue
    .line 36
    const/4 v3, 0x0

    .line 38
    .local v3, "htmlPart":Lcom/fsck/k9/mail/Part;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/BodyPart;

    .line 39
    .local v1, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/BodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 42
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v6, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v6, :cond_1

    .line 43
    invoke-virtual {p0, v1}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    move-result-object v2

    .line 44
    .local v2, "candidatePart":Lcom/fsck/k9/mail/Part;
    if-eqz v2, :cond_0

    .line 45
    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/html"

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    move-object v3, v2

    goto :goto_0

    .line 51
    .end local v2    # "candidatePart":Lcom/fsck/k9/mail/Part;
    :cond_1
    const-string v6, "text/plain"

    invoke-static {v4, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v1

    .line 62
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 53
    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    .restart local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_3
    const-string v6, "text/html"

    invoke-static {v4, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v3, :cond_0

    .line 54
    move-object v3, v1

    goto :goto_0

    .line 58
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    move-object v2, v3

    .line 59
    goto :goto_1

    .line 62
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;
    .locals 4
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 18
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "mimeType":Ljava/lang/String;
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 21
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v3, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 22
    check-cast v2, Lcom/fsck/k9/mail/Multipart;

    .line 23
    .local v2, "multipart":Lcom/fsck/k9/mail/Multipart;
    const-string v3, "multipart/alternative"

    invoke-static {v1, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    invoke-direct {p0, v2}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findTextPartInMultipartAlternative(Lcom/fsck/k9/mail/Multipart;)Lcom/fsck/k9/mail/Part;

    move-result-object p1

    .line 32
    .end local v2    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local p1    # "part":Lcom/fsck/k9/mail/Part;
    :cond_0
    :goto_0
    return-object p1

    .line 26
    .restart local v2    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .restart local p1    # "part":Lcom/fsck/k9/mail/Part;
    :cond_1
    invoke-direct {p0, v2}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findTextPartInMultipart(Lcom/fsck/k9/mail/Multipart;)Lcom/fsck/k9/mail/Part;

    move-result-object p1

    goto :goto_0

    .line 28
    .end local v2    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_2
    const-string v3, "text/plain"

    invoke-static {v1, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "text/html"

    invoke-static {v1, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    const/4 p1, 0x0

    goto :goto_0
.end method

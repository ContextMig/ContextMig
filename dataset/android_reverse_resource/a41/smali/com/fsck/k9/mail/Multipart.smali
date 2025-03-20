.class public abstract Lcom/fsck/k9/mail/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;


# instance fields
.field private mParent:Lcom/fsck/k9/mail/Part;

.field private final mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/BodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V
    .locals 1
    .param p1, "part"    # Lcom/fsck/k9/mail/BodyPart;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p1, p0}, Lcom/fsck/k9/mail/BodyPart;->setParent(Lcom/fsck/k9/mail/Multipart;)V

    .line 21
    return-void
.end method

.method public getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/BodyPart;

    return-object v0
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/BodyPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBoundary()Ljava/lang/String;
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract getEpilogue()[B
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getParent()Lcom/fsck/k9/mail/Part;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParent:Lcom/fsck/k9/mail/Part;

    return-object v0
.end method

.method public abstract getPreamble()[B
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 4
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v2, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/BodyPart;

    .line 62
    .local v1, "part":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/BodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 63
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v2, v0, Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v2, :cond_0

    .line 64
    invoke-static {p1, v1}, Lcom/fsck/k9/mail/internet/CharsetSupport;->setCharset(Ljava/lang/String;Lcom/fsck/k9/mail/Part;)V

    .line 65
    check-cast v0, Lcom/fsck/k9/mail/internet/TextBody;

    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/TextBody;->setCharset(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "7bit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8bit"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Incompatible content-transfer-encoding for a multipart/* body"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method

.method public setParent(Lcom/fsck/k9/mail/Part;)V
    .locals 0
    .param p1, "parent"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fsck/k9/mail/Multipart;->mParent:Lcom/fsck/k9/mail/Part;

    .line 45
    return-void
.end method

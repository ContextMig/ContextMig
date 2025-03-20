.class public abstract Lcom/fsck/k9/mail/BodyPart;
.super Ljava/lang/Object;
.source "BodyPart.java"

# interfaces
.implements Lcom/fsck/k9/mail/Part;


# instance fields
.field private parent:Lcom/fsck/k9/mail/Multipart;

.field private serverExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParent()Lcom/fsck/k9/mail/Multipart;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fsck/k9/mail/BodyPart;->parent:Lcom/fsck/k9/mail/Multipart;

    return-object v0
.end method

.method public getServerExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/mail/BodyPart;->serverExtra:Ljava/lang/String;

    return-object v0
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public setParent(Lcom/fsck/k9/mail/Multipart;)V
    .locals 0
    .param p1, "parent"    # Lcom/fsck/k9/mail/Multipart;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fsck/k9/mail/BodyPart;->parent:Lcom/fsck/k9/mail/Multipart;

    .line 24
    return-void
.end method

.method public setServerExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverExtra"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/fsck/k9/mail/BodyPart;->serverExtra:Ljava/lang/String;

    .line 16
    return-void
.end method

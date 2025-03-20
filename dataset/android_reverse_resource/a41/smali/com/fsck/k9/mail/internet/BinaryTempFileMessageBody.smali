.class public Lcom/fsck/k9/mail/internet/BinaryTempFileMessageBody;
.super Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
.source "BinaryTempFileMessageBody.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 19
    const-string v0, "7bit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8bit"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Incompatible content-transfer-encoding for a message/rfc822 body"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileMessageBody;->mEncoding:Ljava/lang/String;

    .line 24
    return-void
.end method

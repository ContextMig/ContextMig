.class Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
.super Lcom/fsck/k9/mail/MessagingException;
.source "NegativeSmtpReplyException.java"


# static fields
.field private static final serialVersionUID:J = 0x78ae8d8f5bbc0dafL


# instance fields
.field private final replyCode:I

.field private final replyText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "replyCode"    # I
    .param p2, "replyText"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->buildErrorMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->isPermanentSmtpError(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    .line 22
    iput p1, p0, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyCode:I

    .line 23
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyText:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private static buildErrorMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "replyCode"    # I
    .param p1, "replyText"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative SMTP reply: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "replyText":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private static isPermanentSmtpError(I)Z
    .locals 1
    .param p0, "replyCode"    # I

    .prologue
    .line 31
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x257

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getReplyCode()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyCode:I

    return v0
.end method

.method public getReplyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyText:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/fsck/k9/message/SimpleMessageBuilder;
.super Lcom/fsck/k9/message/MessageBuilder;
.source "SimpleMessageBuilder.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/fsck/k9/mail/internet/MessageIdGenerator;Lcom/fsck/k9/mail/BoundaryGenerator;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageIdGenerator"    # Lcom/fsck/k9/mail/internet/MessageIdGenerator;
    .param p3, "boundaryGenerator"    # Lcom/fsck/k9/mail/BoundaryGenerator;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/message/MessageBuilder;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/internet/MessageIdGenerator;Lcom/fsck/k9/mail/BoundaryGenerator;)V

    .line 27
    return-void
.end method

.method public static newInstance()Lcom/fsck/k9/message/SimpleMessageBuilder;
    .locals 4

    .prologue
    .line 18
    invoke-static {}, Lcom/fsck/k9/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 19
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/fsck/k9/mail/internet/MessageIdGenerator;->getInstance()Lcom/fsck/k9/mail/internet/MessageIdGenerator;

    move-result-object v2

    .line 20
    .local v2, "messageIdGenerator":Lcom/fsck/k9/mail/internet/MessageIdGenerator;
    invoke-static {}, Lcom/fsck/k9/mail/BoundaryGenerator;->getInstance()Lcom/fsck/k9/mail/BoundaryGenerator;

    move-result-object v0

    .line 21
    .local v0, "boundaryGenerator":Lcom/fsck/k9/mail/BoundaryGenerator;
    new-instance v3, Lcom/fsck/k9/message/SimpleMessageBuilder;

    invoke-direct {v3, v1, v2, v0}, Lcom/fsck/k9/message/SimpleMessageBuilder;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/internet/MessageIdGenerator;Lcom/fsck/k9/mail/BoundaryGenerator;)V

    return-object v3
.end method


# virtual methods
.method protected buildMessageInternal()V
    .locals 2

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/message/SimpleMessageBuilder;->build()Lcom/fsck/k9/mail/internet/MimeMessage;

    move-result-object v1

    .line 33
    .local v1, "message":Lcom/fsck/k9/mail/internet/MimeMessage;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/message/SimpleMessageBuilder;->queueMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "message":Lcom/fsck/k9/mail/internet/MimeMessage;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "me":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/message/SimpleMessageBuilder;->queueMessageBuildException(Lcom/fsck/k9/mail/MessagingException;)V

    goto :goto_0
.end method

.method protected buildMessageOnActivityResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.class public abstract Lcom/fsck/k9/message/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/message/MessageBuilder$Callback;
    }
.end annotation


# instance fields
.field private asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private bcc:[Lcom/fsck/k9/mail/Address;

.field private final boundaryGenerator:Lcom/fsck/k9/mail/BoundaryGenerator;

.field private final callbackLock:Ljava/lang/Object;

.field private cc:[Lcom/fsck/k9/mail/Address;

.field private final context:Landroid/content/Context;

.field private cursorPosition:I

.field private hideTimeZone:Z

.field private identity:Lcom/fsck/k9/Identity;

.field private identityChanged:Z

.field private inReplyTo:Ljava/lang/String;

.field private isDraft:Z

.field private isPgpInlineEnabled:Z

.field private isReplyAfterQuote:Z

.field private isSignatureBeforeQuotedText:Z

.field private messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

.field private final messageIdGenerator:Lcom/fsck/k9/mail/internet/MessageIdGenerator;

.field private messageReference:Lcom/fsck/k9/activity/MessageReference;

.field private queuedException:Lcom/fsck/k9/mail/MessagingException;

.field private queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

.field private queuedPendingIntent:Landroid/app/PendingIntent;

.field private queuedRequestCode:I

.field private quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

.field private quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

.field private quotedText:Ljava/lang/String;

.field private quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

.field private references:Ljava/lang/String;

.field private requestReadReceipt:Z

.field private sentDate:Ljava/util/Date;

.field private signature:Ljava/lang/String;

.field private signatureChanged:Z

.field private subject:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private to:[Lcom/fsck/k9/mail/Address;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/fsck/k9/mail/internet/MessageIdGenerator;Lcom/fsck/k9/mail/BoundaryGenerator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageIdGenerator"    # Lcom/fsck/k9/mail/internet/MessageIdGenerator;
    .param p3, "boundaryGenerator"    # Lcom/fsck/k9/mail/BoundaryGenerator;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->context:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/fsck/k9/message/MessageBuilder;->messageIdGenerator:Lcom/fsck/k9/mail/internet/MessageIdGenerator;

    .line 77
    iput-object p3, p0, Lcom/fsck/k9/message/MessageBuilder;->boundaryGenerator:Lcom/fsck/k9/mail/BoundaryGenerator;

    .line 78
    return-void
.end method

.method private addAttachmentsToMessage(Lcom/fsck/k9/mail/internet/MimeMultipart;)V
    .locals 14
    .param p1, "mp"    # Lcom/fsck/k9/mail/internet/MimeMultipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 218
    iget-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->attachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 219
    .local v0, "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    iget-object v5, v0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v6, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-ne v5, v6, :cond_0

    .line 223
    iget-object v3, v0, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 224
    .local v3, "contentType":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/james/mime4j/util/MimeUtil;->isMessage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    const-string v3, "application/octet-stream"

    .line 230
    :cond_1
    new-instance v1, Lcom/fsck/k9/mailstore/TempFileBody;

    iget-object v5, v0, Lcom/fsck/k9/activity/misc/Attachment;->filename:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/fsck/k9/mailstore/TempFileBody;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, "body":Lcom/fsck/k9/mail/Body;
    new-instance v2, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-direct {v2, v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;)V

    .line 238
    .local v2, "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    const-string v5, "Content-Type"

    const-string v6, "%s;\r\n name=\"%s\""

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v3, v7, v11

    iget-object v8, v0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    sget-object v9, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    const/4 v10, 0x7

    .line 240
    invoke-static {v8, v9, v10}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 238
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->getEncodingforType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setEncoding(Ljava/lang/String;)V

    .line 260
    const-string v5, "Content-Disposition"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "attachment;\r\n filename=\"%s\";\r\n size=%d"

    new-array v8, v13, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    aput-object v9, v8, v11

    iget-object v9, v0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    aput-object v9, v8, v12

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    goto :goto_0

    .line 266
    .end local v0    # "attachment":Lcom/fsck/k9/activity/misc/Attachment;
    .end local v1    # "body":Lcom/fsck/k9/mail/Body;
    .end local v2    # "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .end local v3    # "contentType":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private buildBody(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/fsck/k9/mail/internet/MimeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 144
    iget-boolean v5, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    invoke-direct {p0, v5}, Lcom/fsck/k9/message/MessageBuilder;->buildText(Z)Lcom/fsck/k9/mail/internet/TextBody;

    move-result-object v0

    .line 147
    .local v0, "body":Lcom/fsck/k9/mail/internet/TextBody;
    const/4 v1, 0x0

    .line 149
    .local v1, "bodyPlain":Lcom/fsck/k9/mail/internet/TextBody;
    iget-object v5, p0, Lcom/fsck/k9/message/MessageBuilder;->attachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    .line 151
    .local v3, "hasAttachments":Z
    :goto_0
    iget-object v5, p0, Lcom/fsck/k9/message/MessageBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    sget-object v6, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne v5, v6, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/fsck/k9/message/MessageBuilder;->createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;

    move-result-object v2

    .line 156
    .local v2, "composedMimeMessage":Lcom/fsck/k9/mail/internet/MimeMultipart;
    const-string v5, "alternative"

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 158
    iget-boolean v5, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    sget-object v6, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    invoke-direct {p0, v5, v6}, Lcom/fsck/k9/message/MessageBuilder;->buildText(ZLcom/fsck/k9/message/SimpleMessageFormat;)Lcom/fsck/k9/mail/internet/TextBody;

    move-result-object v1

    .line 159
    new-instance v5, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const-string v6, "text/plain"

    invoke-direct {v5, v1, v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 160
    new-instance v5, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const-string v6, "text/html"

    invoke-direct {v5, v0, v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 162
    if-eqz v3, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/fsck/k9/message/MessageBuilder;->createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;

    move-result-object v4

    .line 168
    .local v4, "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    new-instance v5, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-direct {v5, v2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;)V

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 169
    invoke-direct {p0, v4}, Lcom/fsck/k9/message/MessageBuilder;->addAttachmentsToMessage(Lcom/fsck/k9/mail/internet/MimeMultipart;)V

    .line 170
    invoke-static {p1, v4}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 189
    .end local v2    # "composedMimeMessage":Lcom/fsck/k9/mail/internet/MimeMultipart;
    .end local v4    # "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    if-eqz v5, :cond_1

    .line 191
    const-string v5, "X-K9mail-Identity"

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/message/MessageBuilder;->buildIdentityHeader(Lcom/fsck/k9/mail/internet/TextBody;Lcom/fsck/k9/mail/internet/TextBody;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/fsck/k9/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    return-void

    .line 149
    .end local v3    # "hasAttachments":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 173
    .restart local v2    # "composedMimeMessage":Lcom/fsck/k9/mail/internet/MimeMultipart;
    .restart local v3    # "hasAttachments":Z
    :cond_3
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    goto :goto_1

    .line 175
    .end local v2    # "composedMimeMessage":Lcom/fsck/k9/mail/internet/MimeMultipart;
    :cond_4
    iget-object v5, p0, Lcom/fsck/k9/message/MessageBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    sget-object v6, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne v5, v6, :cond_0

    .line 177
    if-eqz v3, :cond_5

    .line 178
    invoke-virtual {p0}, Lcom/fsck/k9/message/MessageBuilder;->createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;

    move-result-object v4

    .line 179
    .restart local v4    # "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    new-instance v5, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const-string v6, "text/plain"

    invoke-direct {v5, v0, v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 180
    invoke-direct {p0, v4}, Lcom/fsck/k9/message/MessageBuilder;->addAttachmentsToMessage(Lcom/fsck/k9/mail/internet/MimeMultipart;)V

    .line 181
    invoke-static {p1, v4}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    goto :goto_1

    .line 184
    .end local v4    # "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    :cond_5
    invoke-static {p1, v0}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    goto :goto_1
.end method

.method private buildHeader(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/fsck/k9/mail/internet/MimeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 96
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->sentDate:Ljava/util/Date;

    iget-boolean v4, p0, Lcom/fsck/k9/message/MessageBuilder;->hideTimeZone:Z

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->addSentDate(Ljava/util/Date;Z)V

    .line 97
    new-instance v0, Lcom/fsck/k9/mail/Address;

    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v3}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v4}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v0, "from":Lcom/fsck/k9/mail/Address;
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    .line 99
    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->to:[Lcom/fsck/k9/mail/Address;

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 100
    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->cc:[Lcom/fsck/k9/mail/Address;

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 101
    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->bcc:[Lcom/fsck/k9/mail/Address;

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 102
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->subject:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 104
    iget-boolean v3, p0, Lcom/fsck/k9/message/MessageBuilder;->requestReadReceipt:Z

    if-eqz v3, :cond_0

    .line 105
    const-string v3, "Disposition-Notification-To"

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "X-Confirm-Reading-To"

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "Return-Receipt-To"

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-static {}, Lcom/fsck/k9/K9;->hideUserAgent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->context:Landroid/content/Context;

    const v5, 0x7f0703e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v3}, Lcom/fsck/k9/Identity;->getReplyTo()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "replyTo":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 116
    new-array v3, v6, [Lcom/fsck/k9/mail/Address;

    const/4 v4, 0x0

    new-instance v5, Lcom/fsck/k9/mail/Address;

    invoke-direct {v5, v2}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setReplyTo([Lcom/fsck/k9/mail/Address;)V

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->inReplyTo:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 120
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->inReplyTo:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setInReplyTo(Ljava/lang/String;)V

    .line 123
    :cond_3
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->references:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 124
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->references:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setReferences(Ljava/lang/String;)V

    .line 127
    :cond_4
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->messageIdGenerator:Lcom/fsck/k9/mail/internet/MessageIdGenerator;

    invoke-virtual {v3, p1}, Lcom/fsck/k9/mail/internet/MessageIdGenerator;->generateMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "messageId":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 130
    iget-boolean v3, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/fsck/k9/message/MessageBuilder;->isPgpInlineEnabled:Z

    if-eqz v3, :cond_5

    .line 131
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DRAFT_OPENPGP_INLINE:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v3, v6}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 133
    :cond_5
    return-void
.end method

.method private buildIdentityHeader(Lcom/fsck/k9/mail/internet/TextBody;Lcom/fsck/k9/mail/internet/TextBody;)Ljava/lang/String;
    .locals 2
    .param p1, "body"    # Lcom/fsck/k9/mail/internet/TextBody;
    .param p2, "bodyPlain"    # Lcom/fsck/k9/mail/internet/TextBody;

    .prologue
    .line 196
    new-instance v0, Lcom/fsck/k9/message/IdentityHeaderBuilder;

    invoke-direct {v0}, Lcom/fsck/k9/message/IdentityHeaderBuilder;-><init>()V

    iget v1, p0, Lcom/fsck/k9/message/MessageBuilder;->cursorPosition:I

    .line 197
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setCursorPosition(I)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->identity:Lcom/fsck/k9/Identity;

    .line 198
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setIdentity(Lcom/fsck/k9/Identity;)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fsck/k9/message/MessageBuilder;->identityChanged:Z

    .line 199
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setIdentityChanged(Z)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 200
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setMessageFormat(Lcom/fsck/k9/message/SimpleMessageFormat;)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 201
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setMessageReference(Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 202
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setQuotedHtmlContent(Lcom/fsck/k9/message/quote/InsertableHtmlContent;)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    .line 203
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setQuoteStyle(Lcom/fsck/k9/Account$QuoteStyle;)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    .line 204
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setQuoteTextMode(Lcom/fsck/k9/message/QuotedTextMode;)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->signature:Ljava/lang/String;

    .line 205
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setSignature(Ljava/lang/String;)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fsck/k9/message/MessageBuilder;->signatureChanged:Z

    .line 206
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setSignatureChanged(Z)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setBody(Lcom/fsck/k9/mail/internet/TextBody;)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p2}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->setBodyPlain(Lcom/fsck/k9/mail/internet/TextBody;)Lcom/fsck/k9/message/IdentityHeaderBuilder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 196
    return-object v0
.end method

.method private buildText(Z)Lcom/fsck/k9/mail/internet/TextBody;
    .locals 1
    .param p1, "isDraft"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/message/MessageBuilder;->buildText(ZLcom/fsck/k9/message/SimpleMessageFormat;)Lcom/fsck/k9/mail/internet/TextBody;

    move-result-object v0

    return-object v0
.end method

.method private buildText(ZLcom/fsck/k9/message/SimpleMessageFormat;)Lcom/fsck/k9/mail/internet/TextBody;
    .locals 10
    .param p1, "isDraft"    # Z
    .param p2, "simpleMessageFormat"    # Lcom/fsck/k9/message/SimpleMessageFormat;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 296
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->text:Ljava/lang/String;

    .line 298
    .local v3, "messageText":Ljava/lang/String;
    new-instance v4, Lcom/fsck/k9/message/TextBodyBuilder;

    invoke-direct {v4, v3}, Lcom/fsck/k9/message/TextBodyBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .local v4, "textBodyBuilder":Lcom/fsck/k9/message/TextBodyBuilder;
    if-nez p1, :cond_0

    iget-object v8, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    sget-object v9, Lcom/fsck/k9/message/QuotedTextMode;->SHOW:Lcom/fsck/k9/message/QuotedTextMode;

    if-ne v8, v9, :cond_3

    :cond_0
    move v1, v7

    .line 309
    .local v1, "includeQuotedText":Z
    :goto_0
    iget-object v8, p0, Lcom/fsck/k9/message/MessageBuilder;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    sget-object v9, Lcom/fsck/k9/Account$QuoteStyle;->PREFIX:Lcom/fsck/k9/Account$QuoteStyle;

    if-ne v8, v9, :cond_4

    iget-boolean v8, p0, Lcom/fsck/k9/message/MessageBuilder;->isReplyAfterQuote:Z

    if-eqz v8, :cond_4

    move v2, v7

    .line 311
    .local v2, "isReplyAfterQuote":Z
    :goto_1
    invoke-virtual {v4, v6}, Lcom/fsck/k9/message/TextBodyBuilder;->setIncludeQuotedText(Z)V

    .line 312
    if-eqz v1, :cond_2

    .line 313
    sget-object v8, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne p2, v8, :cond_1

    iget-object v8, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    if-eqz v8, :cond_1

    .line 314
    invoke-virtual {v4, v7}, Lcom/fsck/k9/message/TextBodyBuilder;->setIncludeQuotedText(Z)V

    .line 315
    iget-object v8, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    invoke-virtual {v4, v8}, Lcom/fsck/k9/message/TextBodyBuilder;->setQuotedTextHtml(Lcom/fsck/k9/message/quote/InsertableHtmlContent;)V

    .line 316
    invoke-virtual {v4, v2}, Lcom/fsck/k9/message/TextBodyBuilder;->setReplyAfterQuote(Z)V

    .line 319
    :cond_1
    sget-object v8, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne p2, v8, :cond_2

    iget-object v8, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 320
    invoke-virtual {v4, v7}, Lcom/fsck/k9/message/TextBodyBuilder;->setIncludeQuotedText(Z)V

    .line 321
    iget-object v8, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedText:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/fsck/k9/message/TextBodyBuilder;->setQuotedText(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v4, v2}, Lcom/fsck/k9/message/TextBodyBuilder;->setReplyAfterQuote(Z)V

    .line 326
    :cond_2
    if-nez p1, :cond_5

    move v8, v7

    :goto_2
    invoke-virtual {v4, v8}, Lcom/fsck/k9/message/TextBodyBuilder;->setInsertSeparator(Z)V

    .line 328
    if-nez p1, :cond_6

    iget-object v8, p0, Lcom/fsck/k9/message/MessageBuilder;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v8}, Lcom/fsck/k9/Identity;->getSignatureUse()Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v7

    .line 329
    .local v5, "useSignature":Z
    :goto_3
    if-eqz v5, :cond_7

    .line 330
    invoke-virtual {v4, v7}, Lcom/fsck/k9/message/TextBodyBuilder;->setAppendSignature(Z)V

    .line 331
    iget-object v6, p0, Lcom/fsck/k9/message/MessageBuilder;->signature:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/fsck/k9/message/TextBodyBuilder;->setSignature(Ljava/lang/String;)V

    .line 332
    iget-boolean v6, p0, Lcom/fsck/k9/message/MessageBuilder;->isSignatureBeforeQuotedText:Z

    invoke-virtual {v4, v6}, Lcom/fsck/k9/message/TextBodyBuilder;->setSignatureBeforeQuotedText(Z)V

    .line 338
    :goto_4
    sget-object v6, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne p2, v6, :cond_8

    .line 339
    invoke-virtual {v4}, Lcom/fsck/k9/message/TextBodyBuilder;->buildTextHtml()Lcom/fsck/k9/mail/internet/TextBody;

    move-result-object v0

    .line 343
    .local v0, "body":Lcom/fsck/k9/mail/internet/TextBody;
    :goto_5
    return-object v0

    .end local v0    # "body":Lcom/fsck/k9/mail/internet/TextBody;
    .end local v1    # "includeQuotedText":Z
    .end local v2    # "isReplyAfterQuote":Z
    .end local v5    # "useSignature":Z
    :cond_3
    move v1, v6

    .line 308
    goto :goto_0

    .restart local v1    # "includeQuotedText":Z
    :cond_4
    move v2, v6

    .line 309
    goto :goto_1

    .restart local v2    # "isReplyAfterQuote":Z
    :cond_5
    move v8, v6

    .line 326
    goto :goto_2

    :cond_6
    move v5, v6

    .line 328
    goto :goto_3

    .line 334
    .restart local v5    # "useSignature":Z
    :cond_7
    invoke-virtual {v4, v6}, Lcom/fsck/k9/message/TextBodyBuilder;->setAppendSignature(Z)V

    goto :goto_4

    .line 341
    :cond_8
    invoke-virtual {v4}, Lcom/fsck/k9/message/TextBodyBuilder;->buildTextPlain()Lcom/fsck/k9/mail/internet/TextBody;

    move-result-object v0

    .restart local v0    # "body":Lcom/fsck/k9/mail/internet/TextBody;
    goto :goto_5
.end method


# virtual methods
.method protected build()Lcom/fsck/k9/mail/internet/MimeMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 89
    .local v0, "message":Lcom/fsck/k9/mail/internet/MimeMessage;
    invoke-direct {p0, v0}, Lcom/fsck/k9/message/MessageBuilder;->buildHeader(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 90
    invoke-direct {p0, v0}, Lcom/fsck/k9/message/MessageBuilder;->buildBody(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 92
    return-object v0
.end method

.method public final buildAsync(Lcom/fsck/k9/message/MessageBuilder$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/fsck/k9/message/MessageBuilder$Callback;

    .prologue
    .line 493
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lcom/fsck/k9/mail/MessagingException;

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 498
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    new-instance v0, Lcom/fsck/k9/message/MessageBuilder$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/message/MessageBuilder$1;-><init>(Lcom/fsck/k9/message/MessageBuilder;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 510
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/MessageBuilder$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 511
    return-void

    .line 498
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract buildMessageInternal()V
.end method

.method protected abstract buildMessageOnActivityResult(ILandroid/content/Intent;)V
.end method

.method protected createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->boundaryGenerator:Lcom/fsck/k9/mail/BoundaryGenerator;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/BoundaryGenerator;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected final deliverResult()V
    .locals 4

    .prologue
    .line 586
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    if-nez v0, :cond_0

    .line 588
    const-string v0, "Keeping message builder result in queue for later delivery"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    monitor-exit v1

    .line 603
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    iget-object v2, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    iget-boolean v3, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    invoke-interface {v0, v2, v3}, Lcom/fsck/k9/message/MessageBuilder$Callback;->onMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;Z)V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 601
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    .line 602
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 594
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lcom/fsck/k9/mail/MessagingException;

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    iget-object v2, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lcom/fsck/k9/mail/MessagingException;

    invoke-interface {v0, v2}, Lcom/fsck/k9/message/MessageBuilder$Callback;->onMessageBuildException(Lcom/fsck/k9/mail/MessagingException;)V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lcom/fsck/k9/mail/MessagingException;

    goto :goto_1

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    iget-object v2, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;

    iget v3, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedRequestCode:I

    invoke-interface {v0, v2, v3}, Lcom/fsck/k9/message/MessageBuilder$Callback;->onMessageBuildReturnPendingIntent(Landroid/app/PendingIntent;I)V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final detachCallback()V
    .locals 2

    .prologue
    .line 548
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    .line 550
    monitor-exit v1

    .line 551
    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDraft()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;Lcom/fsck/k9/message/MessageBuilder$Callback;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "callback"    # Lcom/fsck/k9/message/MessageBuilder$Callback;

    .prologue
    .line 514
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_0
    iput-object p4, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lcom/fsck/k9/mail/MessagingException;

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 519
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    invoke-interface {v0}, Lcom/fsck/k9/message/MessageBuilder$Callback;->onMessageBuildCancel()V

    .line 536
    :goto_0
    return-void

    .line 519
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 524
    :cond_0
    new-instance v0, Lcom/fsck/k9/message/MessageBuilder$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/fsck/k9/message/MessageBuilder$2;-><init>(Lcom/fsck/k9/message/MessageBuilder;ILandroid/content/Intent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 535
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/MessageBuilder$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected final queueMessageBuildException(Lcom/fsck/k9/mail/MessagingException;)V
    .locals 2
    .param p1, "exception"    # Lcom/fsck/k9/mail/MessagingException;

    .prologue
    .line 573
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lcom/fsck/k9/mail/MessagingException;

    .line 575
    monitor-exit v1

    .line 576
    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final queueMessageBuildPendingIntent(Landroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "requestCode"    # I

    .prologue
    .line 579
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 581
    iput p2, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedRequestCode:I

    .line 582
    monitor-exit v1

    .line 583
    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final queueMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/internet/MimeMessage;

    .prologue
    .line 567
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 569
    monitor-exit v1

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final reattachCallback(Lcom/fsck/k9/message/MessageBuilder$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/fsck/k9/message/MessageBuilder$Callback;

    .prologue
    .line 557
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    if-eqz v0, :cond_0

    .line 559
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "need to detach callback before new one can be attached!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 561
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/message/MessageBuilder$Callback;

    .line 562
    invoke-virtual {p0}, Lcom/fsck/k9/message/MessageBuilder;->deliverResult()V

    .line 563
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    return-void
.end method

.method public setAttachments(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;)",
            "Lcom/fsck/k9/message/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/misc/Attachment;>;"
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->attachments:Ljava/util/List;

    .line 408
    return-object p0
.end method

.method public setBcc(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Address;",
            ">;)",
            "Lcom/fsck/k9/message/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "bcc":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Address;

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->bcc:[Lcom/fsck/k9/mail/Address;

    .line 373
    return-object p0
.end method

.method public setCc(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Address;",
            ">;)",
            "Lcom/fsck/k9/message/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "cc":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Address;

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->cc:[Lcom/fsck/k9/mail/Address;

    .line 368
    return-object p0
.end method

.method public setCursorPosition(I)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "cursorPosition"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/fsck/k9/message/MessageBuilder;->cursorPosition:I

    .line 458
    return-object p0
.end method

.method public setDraft(Z)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "isDraft"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 468
    return-object p0
.end method

.method public setHideTimeZone(Z)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "hideTimeZone"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->hideTimeZone:Z

    .line 358
    return-object p0
.end method

.method public setIdentity(Lcom/fsck/k9/Identity;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "identity"    # Lcom/fsck/k9/Identity;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->identity:Lcom/fsck/k9/Identity;

    .line 393
    return-object p0
.end method

.method public setIdentityChanged(Z)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "identityChanged"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->identityChanged:Z

    .line 448
    return-object p0
.end method

.method public setInReplyTo(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "inReplyTo"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->inReplyTo:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public setIsPgpInlineEnabled(Z)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "isPgpInlineEnabled"    # Z

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->isPgpInlineEnabled:Z

    .line 473
    return-object p0
.end method

.method public setMessageFormat(Lcom/fsck/k9/message/SimpleMessageFormat;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "messageFormat"    # Lcom/fsck/k9/message/SimpleMessageFormat;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 398
    return-object p0
.end method

.method public setMessageReference(Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 463
    return-object p0
.end method

.method public setQuoteStyle(Lcom/fsck/k9/Account$QuoteStyle;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "quoteStyle"    # Lcom/fsck/k9/Account$QuoteStyle;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    .line 418
    return-object p0
.end method

.method public setQuotedHtmlContent(Lcom/fsck/k9/message/quote/InsertableHtmlContent;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "quotedHtmlContent"    # Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 433
    return-object p0
.end method

.method public setQuotedText(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "quotedText"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedText:Ljava/lang/String;

    .line 428
    return-object p0
.end method

.method public setQuotedTextMode(Lcom/fsck/k9/message/QuotedTextMode;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "quotedTextMode"    # Lcom/fsck/k9/message/QuotedTextMode;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    .line 423
    return-object p0
.end method

.method public setReferences(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "references"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->references:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public setReplyAfterQuote(Z)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "isReplyAfterQuote"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->isReplyAfterQuote:Z

    .line 438
    return-object p0
.end method

.method public setRequestReadReceipt(Z)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "requestReadReceipt"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->requestReadReceipt:Z

    .line 388
    return-object p0
.end method

.method public setSentDate(Ljava/util/Date;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "sentDate"    # Ljava/util/Date;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->sentDate:Ljava/util/Date;

    .line 353
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->signature:Ljava/lang/String;

    .line 413
    return-object p0
.end method

.method public setSignatureBeforeQuotedText(Z)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "isSignatureBeforeQuotedText"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->isSignatureBeforeQuotedText:Z

    .line 443
    return-object p0
.end method

.method public setSignatureChanged(Z)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "signatureChanged"    # Z

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->signatureChanged:Z

    .line 453
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->subject:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->text:Ljava/lang/String;

    .line 403
    return-object p0
.end method

.method public setTo(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Address;",
            ">;)",
            "Lcom/fsck/k9/message/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "to":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Address;

    iput-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->to:[Lcom/fsck/k9/mail/Address;

    .line 363
    return-object p0
.end method

.class public Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;
.super Ljava/lang/Object;
.source "MessageViewInfoExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;
    }
.end annotation


# static fields
.field private static final FILENAME_PREFIX:Ljava/lang/String; = "----- "

.field private static final FILENAME_PREFIX_LENGTH:I

.field private static final FILENAME_SUFFIX:Ljava/lang/String; = " "

.field private static final FILENAME_SUFFIX_LENGTH:I

.field private static final TEXT_DIVIDER:Ljava/lang/String; = "------------------------------------------------------------------------"

.field private static final TEXT_DIVIDER_LENGTH:I


# instance fields
.field private final attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

.field private final context:Landroid/content/Context;

.field private final htmlProcessor:Lcom/fsck/k9/message/html/HtmlProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "------------------------------------------------------------------------"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->TEXT_DIVIDER_LENGTH:I

    .line 47
    const-string v0, "----- "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->FILENAME_PREFIX_LENGTH:I

    .line 49
    const-string v0, " "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->FILENAME_SUFFIX_LENGTH:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;Lcom/fsck/k9/message/html/HtmlProcessor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attachmentInfoExtractor"    # Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;
    .param p3, "htmlProcessor"    # Lcom/fsck/k9/message/html/HtmlProcessor;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 69
    iput-object p3, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->htmlProcessor:Lcom/fsck/k9/message/html/HtmlProcessor;

    .line 70
    return-void
.end method

.method private addHtmlDivider(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Part;Z)V
    .locals 2
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .param p3, "prependDivider"    # Z

    .prologue
    .line 327
    if-eqz p3, :cond_0

    .line 328
    invoke-static {p2}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->getPartName(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "<p style=\"margin-top: 2.5em; margin-bottom: 1em; border-bottom: 1px solid #000\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, "</p>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .end local v0    # "filename":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private addMessageHeaderHtml(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Message;)V
    .locals 8
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 474
    const-string v5, "<table style=\"border: 0\">"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    .line 478
    .local v2, "from":[Lcom/fsck/k9/mail/Address;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 479
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f07029a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 480
    invoke-static {v2}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-static {p1, v5, v6}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_0
    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p2, v5}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    .line 485
    .local v4, "to":[Lcom/fsck/k9/mail/Address;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 486
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f07029e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 487
    invoke-static {v4}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v6

    .line 486
    invoke-static {p1, v5, v6}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_1
    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p2, v5}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 492
    .local v0, "cc":[Lcom/fsck/k9/mail/Address;
    if-eqz v0, :cond_2

    array-length v5, v0

    if-lez v5, :cond_2

    .line 493
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f070299

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 494
    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v6

    .line 493
    invoke-static {p1, v5, v6}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_2
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    .line 499
    .local v1, "date":Ljava/util/Date;
    if-eqz v1, :cond_3

    .line 500
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f07029b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 501
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    .line 500
    invoke-static {p1, v5, v6}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_3
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "subject":Ljava/lang/String;
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f07029d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_4

    iget-object v6, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v7, 0x7f07021b

    .line 507
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 506
    .end local v3    # "subject":Ljava/lang/String;
    :cond_4
    invoke-static {p1, v5, v3}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v5, "</table>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    return-void
.end method

.method private addMessageHeaderText(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Message;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/StringBuilder;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    .line 413
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    .line 414
    .local v2, "from":[Lcom/fsck/k9/mail/Address;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 415
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f07029a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    invoke-static {v2}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_0
    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p2, v5}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    .line 423
    .local v4, "to":[Lcom/fsck/k9/mail/Address;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 424
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f07029e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    invoke-static {v4}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_1
    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p2, v5}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    .line 432
    .local v0, "cc":[Lcom/fsck/k9/mail/Address;
    if-eqz v0, :cond_2

    array-length v5, v0

    if-lez v5, :cond_2

    .line 433
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f070299

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_2
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    .line 441
    .local v1, "date":Ljava/util/Date;
    if-eqz v1, :cond_3

    .line 442
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f07029b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_3
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "subject":Ljava/lang/String;
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f07029d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    if-nez v3, :cond_4

    .line 453
    iget-object v5, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->context:Landroid/content/Context;

    const v6, 0x7f07021b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :goto_0
    const-string v5, "\r\n\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    return-void

    .line 455
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "html"    # Ljava/lang/StringBuilder;
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 523
    const-string v0, "<tr><th style=\"text-align: left; vertical-align: top;\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v0, "</th>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v0, "<td>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v0, "</td></tr>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    return-void
.end method

.method private addTextDivider(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Part;Z)V
    .locals 6
    .param p1, "text"    # Ljava/lang/StringBuilder;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .param p3, "prependDivider"    # Z

    .prologue
    const/4 v5, 0x0

    .line 377
    if-eqz p3, :cond_1

    .line 378
    invoke-static {p2}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->getPartName(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "filename":Ljava/lang/String;
    const-string v2, "\r\n\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 382
    .local v1, "len":I
    if-lez v1, :cond_2

    .line 383
    sget v2, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->TEXT_DIVIDER_LENGTH:I

    sget v3, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->FILENAME_PREFIX_LENGTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->FILENAME_SUFFIX_LENGTH:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->TEXT_DIVIDER_LENGTH:I

    sget v4, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->FILENAME_PREFIX_LENGTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->FILENAME_SUFFIX_LENGTH:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_0
    const-string v2, "----- "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v2, "------------------------------------------------------------------------"

    sget v3, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->TEXT_DIVIDER_LENGTH:I

    sget v4, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->FILENAME_PREFIX_LENGTH:I

    sub-int/2addr v3, v4

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->FILENAME_SUFFIX_LENGTH:I

    sub-int/2addr v3, v4

    .line 390
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :goto_0
    const-string v2, "\r\n\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "len":I
    :cond_1
    return-void

    .line 393
    .restart local v0    # "filename":Ljava/lang/String;
    .restart local v1    # "len":I
    :cond_2
    const-string v2, "------------------------------------------------------------------------"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private buildHtml(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;
    .locals 10
    .param p1, "viewable"    # Lcom/fsck/k9/mail/internet/Viewable;
    .param p2, "prependDivider"    # Z

    .prologue
    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v3, "html":Ljava/lang/StringBuilder;
    instance-of v8, p1, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    if-eqz v8, :cond_5

    move-object v8, p1

    .line 245
    check-cast v8, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/internet/Viewable$Textual;->getPart()Lcom/fsck/k9/mail/Part;

    move-result-object v6

    .line 246
    .local v6, "part":Lcom/fsck/k9/mail/Part;
    invoke-direct {p0, v3, v6, p2}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addHtmlDivider(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Part;Z)V

    .line 248
    invoke-direct {p0, v6}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "t":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 250
    const-string v7, ""

    .line 260
    .end local p1    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_0
    :goto_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .end local v6    # "part":Lcom/fsck/k9/mail/Part;
    .end local v7    # "t":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 251
    .restart local v6    # "part":Lcom/fsck/k9/mail/Part;
    .restart local v7    # "t":Ljava/lang/String;
    .restart local p1    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_2
    instance-of v8, p1, Lcom/fsck/k9/mail/internet/Viewable$Flowed;

    if-eqz v8, :cond_3

    .line 252
    check-cast p1, Lcom/fsck/k9/mail/internet/Viewable$Flowed;

    .end local p1    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/internet/Viewable$Flowed;->isDelSp()Z

    move-result v1

    .line 253
    .local v1, "delSp":Z
    invoke-static {v7, v1}, Lcom/fsck/k9/mailstore/util/FlowedMessageUtils;->deflow(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-static {v7}, Lcom/fsck/k9/message/html/HtmlConverter;->textToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    goto :goto_0

    .end local v1    # "delSp":Z
    .restart local p1    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_3
    instance-of v8, p1, Lcom/fsck/k9/mail/internet/Viewable$Text;

    if-eqz v8, :cond_4

    .line 256
    invoke-static {v7}, Lcom/fsck/k9/message/html/HtmlConverter;->textToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 257
    :cond_4
    instance-of v8, p1, Lcom/fsck/k9/mail/internet/Viewable$Html;

    if-nez v8, :cond_0

    .line 258
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "unhandled case!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 261
    .end local v6    # "part":Lcom/fsck/k9/mail/Part;
    .end local v7    # "t":Ljava/lang/String;
    :cond_5
    instance-of v8, p1, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    if-eqz v8, :cond_1

    move-object v0, p1

    .line 264
    check-cast v0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 266
    .local v0, "alternative":Lcom/fsck/k9/mail/internet/Viewable$Alternative;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getHtml()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 267
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getText()Ljava/util/List;

    move-result-object v4

    .line 269
    .local v4, "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :goto_1
    move v2, p2

    .line 270
    .local v2, "divider":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/internet/Viewable;

    .line 271
    .local v5, "htmlViewable":Lcom/fsck/k9/mail/internet/Viewable;
    invoke-direct {p0, v5, v2}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->buildHtml(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 272
    const/4 v2, 0x1

    .line 273
    goto :goto_2

    .line 267
    .end local v2    # "divider":Z
    .end local v4    # "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .end local v5    # "htmlViewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_6
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getHtml()Ljava/util/List;

    move-result-object v4

    goto :goto_1
.end method

.method private buildText(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;
    .locals 10
    .param p1, "viewable"    # Lcom/fsck/k9/mail/internet/Viewable;
    .param p2, "prependDivider"    # Z

    .prologue
    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v5, "text":Ljava/lang/StringBuilder;
    instance-of v8, p1, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    if-eqz v8, :cond_5

    move-object v8, p1

    .line 282
    check-cast v8, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/internet/Viewable$Textual;->getPart()Lcom/fsck/k9/mail/Part;

    move-result-object v3

    .line 283
    .local v3, "part":Lcom/fsck/k9/mail/Part;
    invoke-direct {p0, v5, v3, p2}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addTextDivider(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Part;Z)V

    .line 285
    invoke-direct {p0, v3}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "t":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 287
    const-string v4, ""

    .line 296
    .end local p1    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_0
    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .end local v3    # "part":Lcom/fsck/k9/mail/Part;
    .end local v4    # "t":Ljava/lang/String;
    :cond_1
    return-object v5

    .line 288
    .restart local v3    # "part":Lcom/fsck/k9/mail/Part;
    .restart local v4    # "t":Ljava/lang/String;
    .restart local p1    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_2
    instance-of v8, p1, Lcom/fsck/k9/mail/internet/Viewable$Html;

    if-eqz v8, :cond_3

    .line 289
    invoke-static {v4}, Lcom/fsck/k9/message/html/HtmlConverter;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 290
    :cond_3
    instance-of v8, p1, Lcom/fsck/k9/mail/internet/Viewable$Flowed;

    if-eqz v8, :cond_4

    .line 291
    check-cast p1, Lcom/fsck/k9/mail/internet/Viewable$Flowed;

    .end local p1    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/internet/Viewable$Flowed;->isDelSp()Z

    move-result v1

    .line 292
    .local v1, "delSp":Z
    invoke-static {v4, v1}, Lcom/fsck/k9/mailstore/util/FlowedMessageUtils;->deflow(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 293
    goto :goto_0

    .end local v1    # "delSp":Z
    .restart local p1    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_4
    instance-of v8, p1, Lcom/fsck/k9/mail/internet/Viewable$Text;

    if-nez v8, :cond_0

    .line 294
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "unhandled case!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 297
    .end local v3    # "part":Lcom/fsck/k9/mail/Part;
    .end local v4    # "t":Ljava/lang/String;
    :cond_5
    instance-of v8, p1, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    if-eqz v8, :cond_1

    move-object v0, p1

    .line 300
    check-cast v0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 302
    .local v0, "alternative":Lcom/fsck/k9/mail/internet/Viewable$Alternative;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getText()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 303
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getHtml()Ljava/util/List;

    move-result-object v6

    .line 305
    .local v6, "textAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :goto_1
    move v2, p2

    .line 306
    .local v2, "divider":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/internet/Viewable;

    .line 307
    .local v7, "textViewable":Lcom/fsck/k9/mail/internet/Viewable;
    invoke-direct {p0, v7, v2}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->buildText(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 308
    const/4 v2, 0x1

    .line 309
    goto :goto_2

    .line 303
    .end local v2    # "divider":Z
    .end local v6    # "textAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .end local v7    # "textViewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_6
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getText()Ljava/util/List;

    move-result-object v6

    goto :goto_1
.end method

.method private extractCryptoMessageForView(Lcom/fsck/k9/mail/Message;Ljava/util/ArrayList;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 4
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "cryptoContentPart"    # Lcom/fsck/k9/mail/Part;
    .param p4, "cryptoContentPartAnnotation"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;",
            "Lcom/fsck/k9/mail/Part;",
            "Lcom/fsck/k9/mailstore/CryptoResultAnnotation;",
            ")",
            "Lcom/fsck/k9/mailstore/MessageViewInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "extraParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->hasReplacementData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p4}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getReplacementData()Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object p3

    .line 111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "extraAttachmentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/AttachmentViewInfo;>;"
    invoke-direct {p0, p2, v0}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->extractViewableAndAttachments(Ljava/util/List;Ljava/util/List;)Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;

    move-result-object v1

    .line 114
    .local v1, "extraViewable":Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;
    invoke-direct {p0, p1, p3}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->extractSimpleMessageForView(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object v2

    .line 115
    .local v2, "messageViewInfo":Lcom/fsck/k9/mailstore/MessageViewInfo;
    iget-object v3, v1, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;->text:Ljava/lang/String;

    invoke-virtual {v2, p4, v3, v0}, Lcom/fsck/k9/mailstore/MessageViewInfo;->withCryptoData(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Ljava/lang/String;Ljava/util/List;)Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object v3

    return-object v3
.end method

.method private extractSimpleMessageForView(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 5
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "contentPart"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "attachmentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/AttachmentViewInfo;>;"
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 120
    invoke-direct {p0, v4, v0}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->extractViewableAndAttachments(Ljava/util/List;Ljava/util/List;)Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;

    move-result-object v3

    .line 122
    .local v3, "viewable":Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;
    invoke-static {p2}, Lcom/fsck/k9/mailstore/AttachmentResolver;->createFromPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentResolver;

    move-result-object v1

    .line 123
    .local v1, "attachmentResolver":Lcom/fsck/k9/mailstore/AttachmentResolver;
    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    .line 124
    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/fsck/k9/mail/internet/MessageExtractor;->hasMissingParts(Lcom/fsck/k9/mail/Part;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 126
    .local v2, "isMessageIncomplete":Z
    :goto_0
    iget-object v4, v3, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;->html:Ljava/lang/String;

    invoke-static {p1, v2, v4, v0, v1}, Lcom/fsck/k9/mailstore/MessageViewInfo;->createWithExtractedContent(Lcom/fsck/k9/mail/Message;ZLjava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/AttachmentResolver;)Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object v4

    return-object v4

    .line 124
    .end local v2    # "isMessageIncomplete":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private extractViewableAndAttachments(Ljava/util/List;Ljava/util/List;)Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/AttachmentViewInfo;",
            ">;)",
            "Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    .local p2, "attachmentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/AttachmentViewInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "viewableParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/internet/Viewable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Part;

    .line 136
    .local v1, "part":Lcom/fsck/k9/mail/Part;
    invoke-static {v1, v2, v0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 139
    .end local v1    # "part":Lcom/fsck/k9/mail/Part;
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    invoke-virtual {v3, v0}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentInfoForView(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->extractTextFromViewables(Ljava/util/List;)Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Lcom/fsck/k9/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->getInstance()Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    move-result-object v0

    .line 60
    .local v0, "attachmentInfoExtractor":Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;
    invoke-static {}, Lcom/fsck/k9/message/html/HtmlProcessor;->newInstance()Lcom/fsck/k9/message/html/HtmlProcessor;

    move-result-object v2

    .line 61
    .local v2, "htmlProcessor":Lcom/fsck/k9/message/html/HtmlProcessor;
    new-instance v3, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;

    invoke-direct {v3, v1, v0, v2}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;-><init>(Landroid/content/Context;Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;Lcom/fsck/k9/message/html/HtmlProcessor;)V

    return-object v3
.end method

.method private static getPartName(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
    .locals 3
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 356
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "disposition":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 358
    const-string v2, "filename"

    invoke-static {v0, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 362
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
    .locals 2
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 337
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "textFromPart":Ljava/lang/String;
    invoke-static {v1}, Lorg/openintents/openpgp/util/OpenPgpUtils;->extractClearsignedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "extractedClearsignedMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 341
    move-object v1, v0

    .line 344
    :cond_0
    return-object v1
.end method


# virtual methods
.method public extractMessageForView(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 7
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "cryptoAnnotations"    # Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "extraParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    invoke-static {p1, v2}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->findPrimaryEncryptedOrSignedPart(Lcom/fsck/k9/mail/Part;Ljava/util/List;)Lcom/fsck/k9/mail/Part;

    move-result-object v0

    .line 78
    .local v0, "cryptoContentPart":Lcom/fsck/k9/mail/Part;
    if-nez v0, :cond_1

    .line 79
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 80
    const-string v6, "Got crypto message cryptoContentAnnotations but no crypto root part!"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    invoke-direct {p0, p1, p1}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->extractSimpleMessageForView(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object v5

    .line 101
    :goto_0
    return-object v5

    .line 85
    :cond_1
    invoke-static {v0}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartMultipartEncrypted(Lcom/fsck/k9/mail/Part;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    invoke-static {v0}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isMultipartEncryptedOpenPgpProtocol(Lcom/fsck/k9/mail/Part;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 87
    :cond_2
    invoke-static {v0}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartPgpInlineEncrypted(Lcom/fsck/k9/mail/Part;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 88
    .local v3, "isOpenPgpEncrypted":Z
    :goto_1
    invoke-static {}, Lcom/fsck/k9/K9;->isOpenPgpProviderConfigured()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v3, :cond_5

    .line 89
    sget-object v6, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    invoke-static {v6, v1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->createErrorAnnotation(Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;Lcom/fsck/k9/mail/internet/MimeBodyPart;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v4

    .line 91
    .local v4, "noProviderAnnotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    invoke-static {p1, v5}, Lcom/fsck/k9/mailstore/MessageViewInfo;->createWithErrorState(Lcom/fsck/k9/mail/Message;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object v5

    .line 92
    invoke-virtual {v5, v4, v1, v1}, Lcom/fsck/k9/mailstore/MessageViewInfo;->withCryptoData(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Ljava/lang/String;Ljava/util/List;)Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object v5

    goto :goto_0

    .end local v3    # "isOpenPgpEncrypted":Z
    .end local v4    # "noProviderAnnotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    :cond_4
    move v3, v5

    .line 87
    goto :goto_1

    .line 95
    .restart local v3    # "isOpenPgpEncrypted":Z
    :cond_5
    if-eqz p2, :cond_6

    .line 96
    invoke-virtual {p2, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->get(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v1

    .line 97
    .local v1, "cryptoContentPartAnnotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    :cond_6
    if-eqz v1, :cond_7

    .line 98
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->extractCryptoMessageForView(Lcom/fsck/k9/mail/Message;Ljava/util/ArrayList;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object v5

    goto :goto_0

    .line 101
    :cond_7
    invoke-direct {p0, p1, p1}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->extractSimpleMessageForView(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/MessageViewInfo;

    move-result-object v5

    goto :goto_0
.end method

.method extractTextFromViewables(Ljava/util/List;)Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;
    .locals 21
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;)",
            "Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "viewables":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    const/4 v8, 0x1

    .line 165
    .local v8, "hideDivider":Z
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v14, "text":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v9, "html":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/fsck/k9/mail/internet/Viewable;

    .line 169
    .local v17, "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 172
    if-nez v8, :cond_1

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->buildText(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 173
    if-nez v8, :cond_2

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->buildHtml(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 174
    const/4 v8, 0x0

    goto :goto_0

    .line 172
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 173
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 175
    :cond_3
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 176
    move-object/from16 v0, v17

    check-cast v0, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;

    move-object v7, v0

    .line 177
    .local v7, "header":Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;
    invoke-virtual {v7}, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;->getContainerPart()Lcom/fsck/k9/mail/Part;

    move-result-object v4

    .line 178
    .local v4, "containerPart":Lcom/fsck/k9/mail/Part;
    invoke-virtual {v7}, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;->getMessage()Lcom/fsck/k9/mail/Message;

    move-result-object v12

    .line 180
    .local v12, "innerMessage":Lcom/fsck/k9/mail/Message;
    if-nez v8, :cond_4

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v4, v1}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addTextDivider(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Part;Z)V

    .line 181
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addMessageHeaderText(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Message;)V

    .line 183
    if-nez v8, :cond_5

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v4, v1}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addHtmlDivider(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Part;Z)V

    .line 184
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->addMessageHeaderHtml(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Message;)V

    .line 186
    const/4 v8, 0x1

    .line 187
    goto :goto_0

    .line 180
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .line 183
    :cond_5
    const/16 v18, 0x0

    goto :goto_4

    .line 187
    .end local v4    # "containerPart":Lcom/fsck/k9/mail/Part;
    .end local v7    # "header":Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;
    .end local v12    # "innerMessage":Lcom/fsck/k9/mail/Message;
    :cond_6
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 189
    move-object/from16 v0, v17

    check-cast v0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    move-object v3, v0

    .line 196
    .local v3, "alternative":Lcom/fsck/k9/mail/internet/Viewable$Alternative;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getText()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 197
    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getHtml()Ljava/util/List;

    move-result-object v15

    .line 198
    .local v15, "textAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :goto_5
    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getHtml()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 199
    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getText()Ljava/util/List;

    move-result-object v10

    .line 202
    .local v10, "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :goto_6
    if-nez v8, :cond_9

    const/4 v5, 0x1

    .line 203
    .local v5, "divider":Z
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/mail/internet/Viewable;

    .line 204
    .local v16, "textViewable":Lcom/fsck/k9/mail/internet/Viewable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->buildText(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 205
    const/4 v5, 0x1

    .line 206
    goto :goto_8

    .line 197
    .end local v5    # "divider":Z
    .end local v10    # "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .end local v15    # "textAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .end local v16    # "textViewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_7
    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getText()Ljava/util/List;

    move-result-object v15

    goto :goto_5

    .line 199
    .restart local v15    # "textAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :cond_8
    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getHtml()Ljava/util/List;

    move-result-object v10

    goto :goto_6

    .line 202
    .restart local v10    # "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :cond_9
    const/4 v5, 0x0

    goto :goto_7

    .line 209
    .restart local v5    # "divider":Z
    :cond_a
    if-nez v8, :cond_b

    const/4 v5, 0x1

    .line 210
    :goto_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/mail/internet/Viewable;

    .line 211
    .local v11, "htmlViewable":Lcom/fsck/k9/mail/internet/Viewable;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->buildHtml(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v5, 0x1

    .line 213
    goto :goto_a

    .line 209
    .end local v11    # "htmlViewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_b
    const/4 v5, 0x0

    goto :goto_9

    .line 214
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 218
    .end local v3    # "alternative":Lcom/fsck/k9/mail/internet/Viewable$Alternative;
    .end local v5    # "divider":Z
    .end local v10    # "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .end local v15    # "textAlternative":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .end local v17    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor;->htmlProcessor:Lcom/fsck/k9/message/html/HtmlProcessor;

    move-object/from16 v18, v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/message/html/HtmlProcessor;->processForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 220
    .local v13, "sanitizedHtml":Ljava/lang/String;
    new-instance v18, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/fsck/k9/mailstore/MessageViewInfoExtractor$ViewableExtractedText;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v18

    .line 221
    .end local v9    # "html":Ljava/lang/StringBuilder;
    .end local v13    # "sanitizedHtml":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 222
    .local v6, "e":Ljava/lang/Exception;
    new-instance v18, Lcom/fsck/k9/mail/MessagingException;

    const-string v19, "Couldn\'t extract viewable parts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
.end method

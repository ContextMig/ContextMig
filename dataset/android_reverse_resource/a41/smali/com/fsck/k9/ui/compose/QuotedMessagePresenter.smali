.class public Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;
.super Ljava/lang/Object;
.source "QuotedMessagePresenter.java"


# static fields
.field private static final STATE_KEY_FORCE_PLAIN_TEXT:Ljava/lang/String; = "state:forcePlainText"

.field private static final STATE_KEY_HTML_QUOTE:Ljava/lang/String; = "state:htmlQuote"

.field private static final STATE_KEY_QUOTED_TEXT_FORMAT:Ljava/lang/String; = "state:quotedTextFormat"

.field private static final STATE_KEY_QUOTED_TEXT_MODE:Ljava/lang/String; = "state:quotedTextShown"

.field private static final UNKNOWN_LENGTH:I


# instance fields
.field private account:Lcom/fsck/k9/Account;

.field private forcePlainText:Z

.field private final messageCompose:Lcom/fsck/k9/activity/MessageCompose;

.field private quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

.field private quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

.field private quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

.field private quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

.field private final resources:Landroid/content/res/Resources;

.field private final view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "messageCompose"    # Lcom/fsck/k9/activity/MessageCompose;
    .param p2, "quotedMessageMvpView"    # Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;
    .param p3, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Lcom/fsck/k9/activity/MessageCompose;

    .line 60
    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->resources:Landroid/content/res/Resources;

    .line 61
    iput-object p2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    .line 62
    invoke-virtual {p0, p3}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->onSwitchAccount(Lcom/fsck/k9/Account;)V

    .line 64
    sget-object v0, Lcom/fsck/k9/message/QuotedTextMode;->NONE:Lcom/fsck/k9/message/QuotedTextMode;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    .line 65
    invoke-virtual {p3}, Lcom/fsck/k9/Account;->getQuoteStyle()Lcom/fsck/k9/Account$QuoteStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    .line 67
    invoke-virtual {p2, p0}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setOnClickPresenter(Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;)V

    .line 68
    return-void
.end method

.method private processSourceMessageText(Lcom/fsck/k9/mail/Part;IIZ)V
    .locals 9
    .param p1, "rootMessagePart"    # Lcom/fsck/k9/mail/Part;
    .param p2, "bodyOffset"    # I
    .param p3, "bodyLength"    # I
    .param p4, "viewMessageContent"    # Z

    .prologue
    const/4 v8, 0x0

    .line 320
    const-string v4, "text/plain"

    invoke-static {p1, v4}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v3

    .line 321
    .local v3, "textPart":Lcom/fsck/k9/mail/Part;
    if-nez v3, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-static {v3}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "messageText":Ljava/lang/String;
    const-string v4, "Loading message with offset %d, length %d. Text length is %d."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 328
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 327
    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    if-eqz p3, :cond_2

    .line 335
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v2, "quotedText":Ljava/lang/StringBuilder;
    if-nez p2, :cond_3

    add-int/lit8 v4, p3, 0x4

    .line 337
    invoke-virtual {v1, p3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\r\n\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 339
    add-int/lit8 v4, p3, 0x4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :goto_1
    iget-object v4, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setQuotedText(Ljava/lang/String;)V

    .line 351
    add-int v4, p2, p3

    invoke-virtual {v1, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 358
    .end local v2    # "quotedText":Ljava/lang/StringBuilder;
    :cond_2
    :goto_2
    if-eqz p4, :cond_0

    .line 359
    iget-object v4, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    invoke-virtual {v4, v1}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setMessageContentCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    .restart local v2    # "quotedText":Ljava/lang/StringBuilder;
    :cond_3
    add-int v4, p2, p3

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, p2, -0x2

    .line 341
    invoke-virtual {v1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 343
    const/4 v4, 0x0

    add-int/lit8 v5, p2, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 352
    .end local v2    # "quotedText":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "The identity field from the draft contains an invalid bodyOffset/bodyLength"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 345
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "quotedText":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    add-int v4, p2, p3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public builderSetProperties(Lcom/fsck/k9/message/MessageBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/fsck/k9/message/MessageBuilder;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    invoke-virtual {p1, v0}, Lcom/fsck/k9/message/MessageBuilder;->setQuoteStyle(Lcom/fsck/k9/Account$QuoteStyle;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    .line 145
    invoke-virtual {v1}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->getQuotedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/MessageBuilder;->setQuotedText(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    .line 146
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/MessageBuilder;->setQuotedTextMode(Lcom/fsck/k9/message/QuotedTextMode;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 147
    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/MessageBuilder;->setQuotedHtmlContent(Lcom/fsck/k9/message/quote/InsertableHtmlContent;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Lcom/fsck/k9/Account;

    .line 148
    invoke-virtual {v1}, Lcom/fsck/k9/Account;->isReplyAfterQuote()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/MessageBuilder;->setReplyAfterQuote(Z)Lcom/fsck/k9/message/MessageBuilder;

    .line 149
    return-void
.end method

.method public includeQuotedText()Z
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    sget-object v1, Lcom/fsck/k9/message/QuotedTextMode;->SHOW:Lcom/fsck/k9/message/QuotedTextMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFromReplyToMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/activity/MessageCompose$Action;)V
    .locals 1
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .param p2, "action"    # Lcom/fsck/k9/activity/MessageCompose$Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->isDefaultQuotedTextShown()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->populateUIWithQuotedMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;ZLcom/fsck/k9/activity/MessageCompose$Action;)V

    .line 180
    return-void
.end method

.method public isForcePlainText()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    return v0
.end method

.method public isQuotedTextText()Z
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    sget-object v1, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onClickDeleteQuotedText()V
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lcom/fsck/k9/message/QuotedTextMode;->HIDE:Lcom/fsck/k9/message/QuotedTextMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 371
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 372
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageCompose;->saveDraftEventually()V

    .line 373
    return-void
.end method

.method onClickEditQuotedText()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 377
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageCompose;->loadQuotedTextForEdit()V

    .line 378
    return-void
.end method

.method onClickShowQuotedText()V
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/fsck/k9/message/QuotedTextMode;->SHOW:Lcom/fsck/k9/message/QuotedTextMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 365
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 366
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Lcom/fsck/k9/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageCompose;->saveDraftEventually()V

    .line 367
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    const-string v0, "state:htmlQuote"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 160
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    invoke-virtual {v0}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->getQuotedContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    invoke-virtual {v1}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->getQuotedContent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setQuotedHtml(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;)V

    .line 164
    :cond_0
    const-string v0, "state:quotedTextFormat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/message/SimpleMessageFormat;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 166
    const-string v0, "state:forcePlainText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 168
    const-string v0, "state:quotedTextShown"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/message/QuotedTextMode;

    .line 168
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 170
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    const-string v0, "state:quotedTextShown"

    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 153
    const-string v0, "state:htmlQuote"

    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 154
    const-string v0, "state:quotedTextFormat"

    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 155
    const-string v0, "state:forcePlainText"

    iget-boolean v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    return-void
.end method

.method public onSwitchAccount(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Lcom/fsck/k9/Account;

    .line 72
    return-void
.end method

.method public populateUIWithQuotedMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;ZLcom/fsck/k9/activity/MessageCompose$Action;)V
    .locals 8
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .param p2, "showQuotedText"    # Z
    .param p3, "action"    # Lcom/fsck/k9/activity/MessageCompose$Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getMessageFormat()Lcom/fsck/k9/Account$MessageFormat;

    move-result-object v1

    .line 89
    .local v1, "origMessageFormat":Lcom/fsck/k9/Account$MessageFormat;
    iget-boolean v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/fsck/k9/Account$MessageFormat;->TEXT:Lcom/fsck/k9/Account$MessageFormat;

    if-ne v1, v2, :cond_4

    .line 91
    :cond_0
    sget-object v2, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    iput-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 104
    :goto_0
    iget-object v2, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    iget-object v3, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    invoke-static {v2, v3}, Lcom/fsck/k9/message/extractors/BodyTextExtractor;->getBodyTextFromMessage(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/message/SimpleMessageFormat;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    sget-object v3, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne v2, v3, :cond_7

    .line 109
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->isStripSignature()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq p3, v2, :cond_1

    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-ne p3, v2, :cond_2

    .line 110
    :cond_1
    invoke-static {v0}, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->stripSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->resources:Landroid/content/res/Resources;

    iget-object v3, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    iget-object v4, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    invoke-static {v2, v3, v0, v4}, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->quoteOriginalHtmlMessage(Landroid/content/res/Resources;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/Account$QuoteStyle;)Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 118
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    iget-object v3, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    invoke-virtual {v3}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->getQuotedContent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    .line 119
    invoke-static {v4}, Lcom/fsck/k9/mailstore/AttachmentResolver;->createFromPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentResolver;

    move-result-object v4

    .line 118
    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setQuotedHtml(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;)V

    .line 122
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    iget-object v3, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->resources:Landroid/content/res/Resources;

    iget-object v4, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    iget-object v5, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    sget-object v6, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 123
    invoke-static {v5, v6}, Lcom/fsck/k9/message/extractors/BodyTextExtractor;->getBodyTextFromMessage(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/message/SimpleMessageFormat;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    iget-object v7, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Lcom/fsck/k9/Account;

    .line 124
    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getQuotePrefix()Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-static {v3, v4, v5, v6, v7}, Lcom/fsck/k9/message/quote/TextQuoteCreator;->quoteOriginalTextMessage(Landroid/content/res/Resources;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/Account$QuoteStyle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setQuotedText(Ljava/lang/String;)V

    .line 135
    :cond_3
    :goto_1
    if-eqz p2, :cond_a

    .line 136
    sget-object v2, Lcom/fsck/k9/message/QuotedTextMode;->SHOW:Lcom/fsck/k9/message/QuotedTextMode;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 140
    :goto_2
    return-void

    .line 92
    .end local v0    # "content":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/fsck/k9/Account$MessageFormat;->AUTO:Lcom/fsck/k9/Account$MessageFormat;

    if-ne v1, v2, :cond_6

    .line 95
    iget-object v2, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    const-string v3, "text/html"

    .line 96
    invoke-static {v2, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    :goto_3
    iput-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    goto :goto_3

    .line 99
    :cond_6
    sget-object v2, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    iput-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    goto :goto_0

    .line 126
    .restart local v0    # "content":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    sget-object v3, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne v2, v3, :cond_3

    .line 127
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->isStripSignature()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq p3, v2, :cond_8

    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-ne p3, v2, :cond_9

    .line 128
    :cond_8
    invoke-static {v0}, Lcom/fsck/k9/message/signature/TextSignatureRemover;->stripSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_9
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    iget-object v3, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->resources:Landroid/content/res/Resources;

    iget-object v4, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    iget-object v5, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    iget-object v6, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Lcom/fsck/k9/Account;

    .line 132
    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getQuotePrefix()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-static {v3, v4, v0, v5, v6}, Lcom/fsck/k9/message/quote/TextQuoteCreator;->quoteOriginalTextMessage(Landroid/content/res/Resources;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/Account$QuoteStyle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setQuotedText(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_a
    sget-object v2, Lcom/fsck/k9/message/QuotedTextMode;->HIDE:Lcom/fsck/k9/message/QuotedTextMode;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    goto :goto_2
.end method

.method public processDraftMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;Ljava/util/Map;)V
    .locals 24
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mailstore/MessageViewInfo;",
            "Ljava/util/Map",
            "<",
            "Lcom/fsck/k9/message/IdentityField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "k9identity":Ljava/util/Map;, "Ljava/util/Map<Lcom/fsck/k9/message/IdentityField;Ljava/lang/String;>;"
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->QUOTE_STYLE:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_2

    sget-object v20, Lcom/fsck/k9/message/IdentityField;->QUOTE_STYLE:Lcom/fsck/k9/message/IdentityField;

    .line 184
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/Account$QuoteStyle;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$QuoteStyle;

    move-result-object v20

    .line 185
    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    .line 187
    const/4 v11, 0x0

    .line 188
    .local v11, "cursorPosition":I
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->CURSOR_POSITION:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 190
    :try_start_0
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->CURSOR_POSITION:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 197
    :cond_0
    :goto_1
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->QUOTED_TEXT_MODE:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 198
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->QUOTED_TEXT_MODE:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 203
    .local v18, "showQuotedTextMode":Ljava/lang/String;
    :goto_2
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->LENGTH:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_4

    sget-object v20, Lcom/fsck/k9/message/IdentityField;->LENGTH:Lcom/fsck/k9/message/IdentityField;

    .line 204
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 205
    .local v6, "bodyLength":I
    :goto_3
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->OFFSET:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_5

    sget-object v20, Lcom/fsck/k9/message/IdentityField;->OFFSET:Lcom/fsck/k9/message/IdentityField;

    .line 206
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 207
    .local v7, "bodyOffset":I
    :goto_4
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->FOOTER_OFFSET:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_6

    sget-object v20, Lcom/fsck/k9/message/IdentityField;->FOOTER_OFFSET:Lcom/fsck/k9/message/IdentityField;

    .line 208
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 209
    .local v5, "bodyFooterOffset":Ljava/lang/Integer;
    :goto_5
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->PLAIN_LENGTH:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_7

    sget-object v20, Lcom/fsck/k9/message/IdentityField;->PLAIN_LENGTH:Lcom/fsck/k9/message/IdentityField;

    .line 210
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 211
    .local v8, "bodyPlainLength":Ljava/lang/Integer;
    :goto_6
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->PLAIN_OFFSET:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_8

    sget-object v20, Lcom/fsck/k9/message/IdentityField;->PLAIN_OFFSET:Lcom/fsck/k9/message/IdentityField;

    .line 212
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 216
    .local v9, "bodyPlainOffset":Ljava/lang/Integer;
    :goto_7
    :try_start_1
    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/message/QuotedTextMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/message/QuotedTextMode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 224
    .local v17, "quotedMode":Lcom/fsck/k9/message/QuotedTextMode;
    :goto_8
    sget-object v20, Lcom/fsck/k9/message/IdentityField;->MESSAGE_FORMAT:Lcom/fsck/k9/message/IdentityField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 226
    .local v14, "messageFormatString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 227
    .local v13, "messageFormat":Lcom/fsck/k9/Account$MessageFormat;
    if-eqz v14, :cond_1

    .line 229
    :try_start_2
    invoke-static {v14}, Lcom/fsck/k9/Account$MessageFormat;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$MessageFormat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v13

    .line 233
    :cond_1
    :goto_9
    if-nez v13, :cond_9

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    move-object/from16 v21, v0

    sget-object v22, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 240
    invoke-static/range {v21 .. v22}, Lcom/fsck/k9/message/extractors/BodyTextExtractor;->getBodyTextFromMessage(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/message/SimpleMessageFormat;)Ljava/lang/String;

    move-result-object v21

    .line 239
    invoke-virtual/range {v20 .. v21}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setMessageContentCharacters(Ljava/lang/String;)V

    .line 241
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 309
    :goto_a
    return-void

    .line 184
    .end local v5    # "bodyFooterOffset":Ljava/lang/Integer;
    .end local v6    # "bodyLength":I
    .end local v7    # "bodyOffset":I
    .end local v8    # "bodyPlainLength":Ljava/lang/Integer;
    .end local v9    # "bodyPlainOffset":Ljava/lang/Integer;
    .end local v11    # "cursorPosition":I
    .end local v13    # "messageFormat":Lcom/fsck/k9/Account$MessageFormat;
    .end local v14    # "messageFormatString":Ljava/lang/String;
    .end local v17    # "quotedMode":Lcom/fsck/k9/message/QuotedTextMode;
    .end local v18    # "showQuotedTextMode":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Lcom/fsck/k9/Account;

    move-object/from16 v20, v0

    .line 185
    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/Account;->getQuoteStyle()Lcom/fsck/k9/Account$QuoteStyle;

    move-result-object v20

    goto/16 :goto_0

    .line 191
    .restart local v11    # "cursorPosition":I
    :catch_0
    move-exception v12

    .line 192
    .local v12, "e":Ljava/lang/Exception;
    const-string v20, "Could not parse cursor position for MessageCompose; continuing."

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 200
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v18, "NONE"

    .restart local v18    # "showQuotedTextMode":Ljava/lang/String;
    goto/16 :goto_2

    .line 204
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 206
    .restart local v6    # "bodyLength":I
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 208
    .restart local v7    # "bodyOffset":I
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 210
    .restart local v5    # "bodyFooterOffset":Ljava/lang/Integer;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 212
    .restart local v8    # "bodyPlainLength":Ljava/lang/Integer;
    :cond_8
    const/4 v9, 0x0

    goto :goto_7

    .line 217
    .restart local v9    # "bodyPlainOffset":Ljava/lang/Integer;
    :catch_1
    move-exception v12

    .line 218
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v17, Lcom/fsck/k9/message/QuotedTextMode;->NONE:Lcom/fsck/k9/message/QuotedTextMode;

    .restart local v17    # "quotedMode":Lcom/fsck/k9/message/QuotedTextMode;
    goto :goto_8

    .line 247
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v13    # "messageFormat":Lcom/fsck/k9/Account$MessageFormat;
    .restart local v14    # "messageFormatString":Ljava/lang/String;
    :cond_9
    sget-object v20, Lcom/fsck/k9/Account$MessageFormat;->HTML:Lcom/fsck/k9/Account$MessageFormat;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_f

    .line 249
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    move-object/from16 v20, v0

    const-string v21, "text/html"

    invoke-static/range {v20 .. v21}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v15

    .line 250
    .local v15, "part":Lcom/fsck/k9/mail/Part;
    if-eqz v15, :cond_a

    .line 251
    sget-object v20, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 252
    invoke-static {v15}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v19

    .line 254
    .local v19, "text":Ljava/lang/String;
    if-nez v19, :cond_c

    .line 255
    const-string v20, "Empty message; skipping."

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    const-string v10, ""

    .line 270
    .local v10, "bodyText":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    move-object/from16 v20, v0

    invoke-static {v10}, Lcom/fsck/k9/message/html/HtmlConverter;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setMessageContentCharacters(Ljava/lang/String;)V

    .line 273
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v16, "quotedHTML":Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    add-int v20, v7, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_a

    .line 277
    new-instance v20, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    invoke-direct/range {v20 .. v20}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setQuotedContent(Ljava/lang/StringBuilder;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setHeaderInsertionPoint(I)V

    .line 281
    if-eqz v5, :cond_e

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setFooterInsertionPoint(I)V

    .line 287
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->getQuotedContent()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    move-object/from16 v22, v0

    .line 288
    invoke-static/range {v22 .. v22}, Lcom/fsck/k9/mailstore/AttachmentResolver;->createFromPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentResolver;

    move-result-object v22

    .line 287
    invoke-virtual/range {v20 .. v22}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setQuotedHtml(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;)V

    .line 291
    .end local v10    # "bodyText":Ljava/lang/String;
    .end local v16    # "quotedHTML":Ljava/lang/StringBuilder;
    .end local v19    # "text":Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    if-eqz v8, :cond_b

    .line 292
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    move-object/from16 v20, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->processSourceMessageText(Lcom/fsck/k9/mail/Part;IIZ)V

    .line 303
    .end local v15    # "part":Lcom/fsck/k9/mail/Part;
    :cond_b
    :goto_d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setMessageContentCursorPosition(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 308
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    goto/16 :goto_a

    .line 258
    .restart local v15    # "part":Lcom/fsck/k9/mail/Part;
    .restart local v19    # "text":Ljava/lang/String;
    :cond_c
    const-string v20, "Loading message with offset %d, length %d. Text length is %d."

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    .line 258
    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    add-int v20, v7, v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    .line 263
    const-string v20, "The identity field from the draft contains an invalid LENGTH/OFFSET"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    const/4 v7, 0x0

    .line 265
    const/4 v6, 0x0

    .line 268
    :cond_d
    add-int v20, v7, v6

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "bodyText":Ljava/lang/String;
    goto/16 :goto_b

    .line 284
    .restart local v16    # "quotedHTML":Ljava/lang/StringBuilder;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setFooterInsertionPoint(I)V

    goto/16 :goto_c

    .line 294
    .end local v10    # "bodyText":Ljava/lang/String;
    .end local v15    # "part":Lcom/fsck/k9/mail/Part;
    .end local v16    # "quotedHTML":Ljava/lang/StringBuilder;
    .end local v19    # "text":Ljava/lang/String;
    :cond_f
    sget-object v20, Lcom/fsck/k9/Account$MessageFormat;->TEXT:Lcom/fsck/k9/Account$MessageFormat;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_10

    .line 295
    sget-object v20, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 296
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->processSourceMessageText(Lcom/fsck/k9/mail/Part;IIZ)V

    goto/16 :goto_d

    .line 298
    :cond_10
    const-string v20, "Unhandled message format."

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 304
    :catch_2
    move-exception v12

    .line 305
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v20, "Could not set cursor position in MessageCompose; ignoring."

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 230
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v20

    goto/16 :goto_9
.end method

.method public processMessageToForward(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 2
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 173
    sget-object v0, Lcom/fsck/k9/Account$QuoteStyle;->HEADER:Lcom/fsck/k9/Account$QuoteStyle;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    .line 174
    const/4 v0, 0x1

    sget-object v1, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    invoke-virtual {p0, p1, v0, v1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->populateUIWithQuotedMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;ZLcom/fsck/k9/activity/MessageCompose$Action;)V

    .line 175
    return-void
.end method

.method public showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/fsck/k9/message/QuotedTextMode;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    .line 76
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;Lcom/fsck/k9/message/SimpleMessageFormat;)V

    .line 77
    return-void
.end method

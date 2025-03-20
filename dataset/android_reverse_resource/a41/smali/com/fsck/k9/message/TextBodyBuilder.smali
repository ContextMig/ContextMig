.class Lcom/fsck/k9/message/TextBodyBuilder;
.super Ljava/lang/Object;
.source "TextBodyBuilder.java"


# instance fields
.field private mAppendSignature:Z

.field private mIncludeQuotedText:Z

.field private mInsertSeparator:Z

.field private mMessageContent:Ljava/lang/String;

.field private mQuotedText:Ljava/lang/String;

.field private mQuotedTextHtml:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

.field private mReplyAfterQuote:Z

.field private mSignature:Ljava/lang/String;

.field private mSignatureBeforeQuotedText:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "messageContent"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mIncludeQuotedText:Z

    .line 16
    iput-boolean v0, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 17
    iput-boolean v0, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    .line 18
    iput-boolean v0, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mInsertSeparator:Z

    .line 19
    iput-boolean v1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 27
    iput-object p1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mMessageContent:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private getQuotedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    const-string v0, ""

    .line 200
    .local v0, "quotedText":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mQuotedText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mQuotedText:Ljava/lang/String;

    .line 203
    :cond_0
    return-object v0
.end method

.method private getQuotedTextHtml()Lcom/fsck/k9/message/quote/InsertableHtmlContent;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mQuotedTextHtml:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    return-object v0
.end method

.method private getSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    const-string v0, ""

    .line 183
    .local v0, "signature":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_0
    return-object v0
.end method

.method private getSignatureHtml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    const-string v0, ""

    .line 192
    .local v0, "signature":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/message/TextBodyBuilder;->textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    return-object v0
.end method


# virtual methods
.method public buildTextHtml()Lcom/fsck/k9/mail/internet/TextBody;
    .locals 9

    .prologue
    .line 44
    iget-object v4, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mMessageContent:Ljava/lang/String;

    .line 47
    .local v4, "text":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mIncludeQuotedText:Z

    if-eqz v5, :cond_6

    .line 48
    invoke-direct {p0}, Lcom/fsck/k9/message/TextBodyBuilder;->getQuotedTextHtml()Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    move-result-object v3

    .line 50
    .local v3, "quotedHtmlContent":Lcom/fsck/k9/message/quote/InsertableHtmlContent;
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    const-string v5, "insertable: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->toDebugString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    if-eqz v5, :cond_2

    .line 56
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    if-eqz v5, :cond_2

    .line 57
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/fsck/k9/message/TextBodyBuilder;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    :cond_2
    invoke-virtual {p0, v4}, Lcom/fsck/k9/message/TextBodyBuilder;->textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    if-eqz v5, :cond_5

    .line 73
    sget-object v5, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;->AFTER_QUOTE:Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    invoke-virtual {v3, v5}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setInsertionLocation(Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;)V

    .line 75
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mInsertSeparator:Z

    if-eqz v5, :cond_3

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<br clear=\"all\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    :cond_3
    :goto_0
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    if-eqz v5, :cond_4

    .line 88
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    if-nez v5, :cond_4

    .line 89
    invoke-direct {p0}, Lcom/fsck/k9/message/TextBodyBuilder;->getSignatureHtml()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->insertIntoQuotedFooter(Ljava/lang/String;)V

    .line 93
    :cond_4
    invoke-virtual {v3, v4}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setUserContent(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 97
    .local v1, "composedMessageLength":I
    invoke-virtual {v3}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->getInsertionPoint()I

    move-result v2

    .line 98
    .local v2, "composedMessageOffset":I
    invoke-virtual {v3}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .end local v3    # "quotedHtmlContent":Lcom/fsck/k9/message/quote/InsertableHtmlContent;
    :goto_1
    new-instance v0, Lcom/fsck/k9/mail/internet/TextBody;

    invoke-direct {v0, v4}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "body":Lcom/fsck/k9/mail/internet/TextBody;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/internet/TextBody;->setComposedMessageLength(Ljava/lang/Integer;)V

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/internet/TextBody;->setComposedMessageOffset(Ljava/lang/Integer;)V

    .line 119
    return-object v0

    .line 79
    .end local v0    # "body":Lcom/fsck/k9/mail/internet/TextBody;
    .end local v1    # "composedMessageLength":I
    .end local v2    # "composedMessageOffset":I
    .restart local v3    # "quotedHtmlContent":Lcom/fsck/k9/message/quote/InsertableHtmlContent;
    :cond_5
    sget-object v5, Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;->BEFORE_QUOTE:Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;

    invoke-virtual {v3, v5}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setInsertionLocation(Lcom/fsck/k9/message/quote/InsertableHtmlContent$InsertionLocation;)V

    .line 81
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mInsertSeparator:Z

    if-eqz v5, :cond_3

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br><br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 102
    .end local v3    # "quotedHtmlContent":Lcom/fsck/k9/message/quote/InsertableHtmlContent;
    :cond_6
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    if-eqz v5, :cond_7

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/fsck/k9/message/TextBodyBuilder;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    :cond_7
    invoke-virtual {p0, v4}, Lcom/fsck/k9/message/TextBodyBuilder;->textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 112
    .restart local v1    # "composedMessageLength":I
    const/4 v2, 0x0

    .restart local v2    # "composedMessageOffset":I
    goto :goto_1
.end method

.method public buildTextPlain()Lcom/fsck/k9/mail/internet/TextBody;
    .locals 7

    .prologue
    .line 136
    iget-object v4, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mMessageContent:Ljava/lang/String;

    .line 139
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 140
    .local v1, "composedMessageLength":I
    const/4 v2, 0x0

    .line 143
    .local v2, "composedMessageOffset":I
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mIncludeQuotedText:Z

    if-eqz v5, :cond_4

    .line 144
    invoke-direct {p0}, Lcom/fsck/k9/message/TextBodyBuilder;->getQuotedText()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "quotedText":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    if-eqz v5, :cond_1

    .line 148
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    if-eqz v5, :cond_1

    .line 149
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/fsck/k9/message/TextBodyBuilder;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    :cond_1
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    if-eqz v5, :cond_3

    .line 154
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v2, v5, v6

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    :goto_0
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    if-eqz v5, :cond_2

    .line 162
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    if-nez v5, :cond_2

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/fsck/k9/message/TextBodyBuilder;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .end local v3    # "quotedText":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v0, Lcom/fsck/k9/mail/internet/TextBody;

    invoke-direct {v0, v4}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "body":Lcom/fsck/k9/mail/internet/TextBody;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/internet/TextBody;->setComposedMessageLength(Ljava/lang/Integer;)V

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/internet/TextBody;->setComposedMessageOffset(Ljava/lang/Integer;)V

    .line 178
    return-object v0

    .line 157
    .end local v0    # "body":Lcom/fsck/k9/mail/internet/TextBody;
    .restart local v3    # "quotedText":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 168
    .end local v3    # "quotedText":Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    if-eqz v5, :cond_2

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/fsck/k9/message/TextBodyBuilder;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public setAppendSignature(Z)V
    .locals 0
    .param p1, "appendSignature"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 247
    return-void
.end method

.method public setIncludeQuotedText(Z)V
    .locals 0
    .param p1, "includeQuotedText"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mIncludeQuotedText:Z

    .line 223
    return-void
.end method

.method public setInsertSeparator(Z)V
    .locals 0
    .param p1, "insertSeparator"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mInsertSeparator:Z

    .line 235
    return-void
.end method

.method public setQuotedText(Ljava/lang/String;)V
    .locals 0
    .param p1, "quotedText"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mQuotedText:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setQuotedTextHtml(Lcom/fsck/k9/message/quote/InsertableHtmlContent;)V
    .locals 0
    .param p1, "quotedTextHtml"    # Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mQuotedTextHtml:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 231
    return-void
.end method

.method public setReplyAfterQuote(Z)V
    .locals 0
    .param p1, "replyAfterQuote"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 243
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setSignatureBeforeQuotedText(Z)V
    .locals 0
    .param p1, "signatureBeforeQuotedText"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    .line 239
    return-void
.end method

.method protected textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p1}, Lcom/fsck/k9/message/html/HtmlConverter;->textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

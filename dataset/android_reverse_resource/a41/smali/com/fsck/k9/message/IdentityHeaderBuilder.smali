.class public Lcom/fsck/k9/message/IdentityHeaderBuilder;
.super Ljava/lang/Object;
.source "IdentityHeaderBuilder.java"


# instance fields
.field private body:Lcom/fsck/k9/mail/internet/TextBody;

.field private bodyPlain:Lcom/fsck/k9/mail/internet/TextBody;

.field private cursorPosition:I

.field private identity:Lcom/fsck/k9/Identity;

.field private identityChanged:Z

.field private messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

.field private messageReference:Lcom/fsck/k9/activity/MessageReference;

.field private quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

.field private quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

.field private quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

.field private signature:Ljava/lang/String;

.field private signatureChanged:Z

.field private uri:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendValue(Lcom/fsck/k9/message/IdentityField;I)V
    .locals 1
    .param p1, "field"    # Lcom/fsck/k9/message/IdentityField;
    .param p2, "value"    # I

    .prologue
    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/Enum;)V
    .locals 1
    .param p1, "field"    # Lcom/fsck/k9/message/IdentityField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/message/IdentityField;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "field"    # Lcom/fsck/k9/message/IdentityField;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 108
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/String;)V
    .locals 2
    .param p1, "field"    # Lcom/fsck/k9/message/IdentityField;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->uri:Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Lcom/fsck/k9/message/IdentityField;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 44
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->uri:Landroid/net/Uri$Builder;

    .line 46
    iget-object v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->body:Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/TextBody;->getComposedMessageLength()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->body:Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/TextBody;->getComposedMessageOffset()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 48
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->LENGTH:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->body:Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/internet/TextBody;->getComposedMessageLength()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/Integer;)V

    .line 49
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->OFFSET:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->body:Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/internet/TextBody;->getComposedMessageOffset()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/Integer;)V

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    if-eqz v3, :cond_0

    .line 57
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->FOOTER_OFFSET:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    invoke-virtual {v4}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->getFooterInsertionPoint()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;I)V

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->bodyPlain:Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->bodyPlain:Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/TextBody;->getComposedMessageLength()Ljava/lang/Integer;

    move-result-object v0

    .line 62
    .local v0, "composedMessageLength":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->bodyPlain:Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/TextBody;->getComposedMessageOffset()Ljava/lang/Integer;

    move-result-object v1

    .line 63
    .local v1, "composedMessageOffset":Ljava/lang/Integer;
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 65
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->PLAIN_LENGTH:Lcom/fsck/k9/message/IdentityField;

    invoke-direct {p0, v3, v0}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/Integer;)V

    .line 66
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->PLAIN_OFFSET:Lcom/fsck/k9/message/IdentityField;

    invoke-direct {p0, v3, v1}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/Integer;)V

    .line 75
    .end local v0    # "composedMessageLength":Ljava/lang/Integer;
    .end local v1    # "composedMessageOffset":Ljava/lang/Integer;
    :cond_1
    :goto_1
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->QUOTE_STYLE:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/Enum;)V

    .line 78
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->MESSAGE_FORMAT:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/Enum;)V

    .line 81
    iget-object v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v3}, Lcom/fsck/k9/Identity;->getSignatureUse()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->signatureChanged:Z

    if-eqz v3, :cond_2

    .line 82
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->SIGNATURE:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->signature:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/String;)V

    .line 85
    :cond_2
    iget-boolean v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->identityChanged:Z

    if-eqz v3, :cond_3

    .line 86
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->NAME:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v4}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/String;)V

    .line 87
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->EMAIL:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v4}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/String;)V

    .line 90
    :cond_3
    iget-object v3, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    if-eqz v3, :cond_4

    .line 91
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->ORIGINAL_MESSAGE:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/String;)V

    .line 94
    :cond_4
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->CURSOR_POSITION:Lcom/fsck/k9/message/IdentityField;

    iget v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->cursorPosition:I

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;I)V

    .line 95
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->QUOTED_TEXT_MODE:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;Ljava/lang/Enum;)V

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->uri:Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "k9identity":Ljava/lang/String;
    const-string v3, "Generated identity: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-object v2

    .line 52
    .end local v2    # "k9identity":Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->LENGTH:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->body:Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/internet/TextBody;->getRawText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;I)V

    .line 53
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->OFFSET:Lcom/fsck/k9/message/IdentityField;

    invoke-direct {p0, v3, v5}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;I)V

    goto/16 :goto_0

    .line 69
    .restart local v0    # "composedMessageLength":Ljava/lang/Integer;
    .restart local v1    # "composedMessageOffset":Ljava/lang/Integer;
    :cond_6
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->PLAIN_LENGTH:Lcom/fsck/k9/message/IdentityField;

    iget-object v4, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->body:Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/internet/TextBody;->getRawText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;I)V

    .line 70
    sget-object v3, Lcom/fsck/k9/message/IdentityField;->PLAIN_OFFSET:Lcom/fsck/k9/message/IdentityField;

    invoke-direct {p0, v3, v5}, Lcom/fsck/k9/message/IdentityHeaderBuilder;->appendValue(Lcom/fsck/k9/message/IdentityField;I)V

    goto/16 :goto_1
.end method

.method public setBody(Lcom/fsck/k9/mail/internet/TextBody;)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "body"    # Lcom/fsck/k9/mail/internet/TextBody;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->body:Lcom/fsck/k9/mail/internet/TextBody;

    .line 166
    return-object p0
.end method

.method public setBodyPlain(Lcom/fsck/k9/mail/internet/TextBody;)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "bodyPlain"    # Lcom/fsck/k9/mail/internet/TextBody;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->bodyPlain:Lcom/fsck/k9/mail/internet/TextBody;

    .line 171
    return-object p0
.end method

.method public setCursorPosition(I)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "cursorPosition"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->cursorPosition:I

    .line 176
    return-object p0
.end method

.method public setIdentity(Lcom/fsck/k9/Identity;)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "identity"    # Lcom/fsck/k9/Identity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->identity:Lcom/fsck/k9/Identity;

    .line 141
    return-object p0
.end method

.method public setIdentityChanged(Z)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "identityChanged"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->identityChanged:Z

    .line 146
    return-object p0
.end method

.method public setMessageFormat(Lcom/fsck/k9/message/SimpleMessageFormat;)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "messageFormat"    # Lcom/fsck/k9/message/SimpleMessageFormat;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 136
    return-object p0
.end method

.method public setMessageReference(Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 161
    return-object p0
.end method

.method public setQuoteStyle(Lcom/fsck/k9/Account$QuoteStyle;)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "quoteStyle"    # Lcom/fsck/k9/Account$QuoteStyle;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    .line 126
    return-object p0
.end method

.method public setQuoteTextMode(Lcom/fsck/k9/message/QuotedTextMode;)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "quotedTextMode"    # Lcom/fsck/k9/message/QuotedTextMode;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    .line 131
    return-object p0
.end method

.method public setQuotedHtmlContent(Lcom/fsck/k9/message/quote/InsertableHtmlContent;)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "quotedHtmlContent"    # Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 121
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->signature:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public setSignatureChanged(Z)Lcom/fsck/k9/message/IdentityHeaderBuilder;
    .locals 0
    .param p1, "signatureChanged"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/fsck/k9/message/IdentityHeaderBuilder;->signatureChanged:Z

    .line 156
    return-object p0
.end method

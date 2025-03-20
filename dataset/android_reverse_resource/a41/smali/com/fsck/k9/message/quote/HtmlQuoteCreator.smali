.class public Lcom/fsck/k9/message/quote/HtmlQuoteCreator;
.super Ljava/lang/Object;
.source "HtmlQuoteCreator.java"


# static fields
.field private static final FIND_INSERTION_POINT_BODY:Ljava/util/regex/Pattern;

.field private static final FIND_INSERTION_POINT_BODY_END:Ljava/util/regex/Pattern;

.field private static final FIND_INSERTION_POINT_FIRST_GROUP:I = 0x1

.field private static final FIND_INSERTION_POINT_HEAD:Ljava/util/regex/Pattern;

.field private static final FIND_INSERTION_POINT_HEAD_CONTENT:Ljava/lang/String; = "<head><meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"></head>"

.field private static final FIND_INSERTION_POINT_HTML:Ljava/util/regex/Pattern;

.field private static final FIND_INSERTION_POINT_HTML_CONTENT:Ljava/lang/String; = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n<html>"

.field private static final FIND_INSERTION_POINT_HTML_END:Ljava/util/regex/Pattern;

.field private static final FIND_INSERTION_POINT_HTML_END_CONTENT:Ljava/lang/String; = "</html>"

.field private static final FIND_INSERTION_POINT_START_OF_STRING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "(?si:.*?(<html(?:>|\\s+[^>]*>)).*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_HTML:Ljava/util/regex/Pattern;

    .line 23
    const-string v0, "(?si:.*?(<head(?:>|\\s+[^>]*>)).*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_HEAD:Ljava/util/regex/Pattern;

    .line 24
    const-string v0, "(?si:.*?(<body(?:>|\\s+[^>]*>)).*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_BODY:Ljava/util/regex/Pattern;

    .line 25
    const-string v0, "(?si:.*(</html>).*?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_HTML_END:Ljava/util/regex/Pattern;

    .line 26
    const-string v0, "(?si:.*(</body>).*?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_BODY_END:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findInsertionPoints(Ljava/lang/String;)Lcom/fsck/k9/message/quote/InsertableHtmlContent;
    .locals 17
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v11, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    invoke-direct {v11}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;-><init>()V

    .line 127
    .local v11, "insertable":Lcom/fsck/k9/message/quote/InsertableHtmlContent;
    if-eqz p0, :cond_0

    const-string v13, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object v11

    .line 132
    :cond_1
    const/4 v7, 0x0

    .line 133
    .local v7, "hasHtmlTag":Z
    const/4 v5, 0x0

    .line 134
    .local v5, "hasHeadTag":Z
    const/4 v4, 0x0

    .line 136
    .local v4, "hasBodyTag":Z
    sget-object v13, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_HTML:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 137
    .local v10, "htmlMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 138
    const/4 v7, 0x1

    .line 141
    :cond_2
    sget-object v13, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_HEAD:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 142
    .local v8, "headMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 143
    const/4 v5, 0x1

    .line 146
    :cond_3
    sget-object v13, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_BODY:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 147
    .local v2, "bodyMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 148
    const/4 v4, 0x1

    .line 151
    :cond_4
    const-string v13, "Open: hasHtmlTag:%s hasHeadTag:%s hasBodyTag:%s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    if-eqz v4, :cond_7

    .line 156
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setQuotedContent(Ljava/lang/StringBuilder;)V

    .line 157
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setHeaderInsertionPoint(I)V

    .line 189
    :goto_1
    const/4 v6, 0x0

    .line 190
    .local v6, "hasHtmlEndTag":Z
    const/4 v3, 0x0

    .line 192
    .local v3, "hasBodyEndTag":Z
    sget-object v13, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_HTML_END:Ljava/util/regex/Pattern;

    invoke-virtual {v11}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->getQuotedContent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 193
    .local v9, "htmlEndMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 194
    const/4 v6, 0x1

    .line 197
    :cond_5
    sget-object v13, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_BODY_END:Ljava/util/regex/Pattern;

    invoke-virtual {v11}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->getQuotedContent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 198
    .local v1, "bodyEndMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 199
    const/4 v3, 0x1

    .line 202
    :cond_6
    const-string v13, "Close: hasHtmlEndTag:%s hasBodyEndTag:%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    if-eqz v3, :cond_a

    .line 207
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/util/regex/Matcher;->start(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setFooterInsertionPoint(I)V

    goto/16 :goto_0

    .line 158
    .end local v1    # "bodyEndMatcher":Ljava/util/regex/Matcher;
    .end local v3    # "hasBodyEndTag":Z
    .end local v6    # "hasHtmlEndTag":Z
    .end local v9    # "htmlEndMatcher":Ljava/util/regex/Matcher;
    :cond_7
    if-eqz v5, :cond_8

    .line 163
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setQuotedContent(Ljava/lang/StringBuilder;)V

    .line 164
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setHeaderInsertionPoint(I)V

    goto :goto_1

    .line 165
    :cond_8
    if-eqz v7, :cond_9

    .line 168
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .local v12, "newContent":Ljava/lang/StringBuilder;
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    const-string v14, "<head><meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"></head>"

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v11, v12}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setQuotedContent(Ljava/lang/StringBuilder;)V

    .line 173
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    const-string v14, "<head><meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"></head>"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v11, v13}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setHeaderInsertionPoint(I)V

    goto :goto_1

    .line 177
    .end local v12    # "newContent":Ljava/lang/StringBuilder;
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v12    # "newContent":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    const-string v14, "<head><meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"></head>"

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/4 v13, 0x0

    const-string v14, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n<html>"

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v13, "</html>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v11, v12}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setQuotedContent(Ljava/lang/StringBuilder;)V

    .line 184
    const-string v13, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n<html>"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, "<head><meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"></head>"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v11, v13}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setHeaderInsertionPoint(I)V

    goto/16 :goto_1

    .line 208
    .end local v12    # "newContent":Ljava/lang/StringBuilder;
    .restart local v1    # "bodyEndMatcher":Ljava/util/regex/Matcher;
    .restart local v3    # "hasBodyEndTag":Z
    .restart local v6    # "hasHtmlEndTag":Z
    .restart local v9    # "htmlEndMatcher":Ljava/util/regex/Matcher;
    :cond_a
    if-eqz v6, :cond_b

    .line 210
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->start(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setFooterInsertionPoint(I)V

    goto/16 :goto_0

    .line 214
    :cond_b
    invoke-virtual {v11}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->getQuotedContent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setFooterInsertionPoint(I)V

    goto/16 :goto_0
.end method

.method public static quoteOriginalHtmlMessage(Landroid/content/res/Resources;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/Account$QuoteStyle;)Lcom/fsck/k9/message/quote/InsertableHtmlContent;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "originalMessage"    # Lcom/fsck/k9/mail/Message;
    .param p2, "messageBody"    # Ljava/lang/String;
    .param p3, "quoteStyle"    # Lcom/fsck/k9/Account$QuoteStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 49
    invoke-static {p2}, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->findInsertionPoints(Ljava/lang/String;)Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    move-result-object v3

    .line 51
    .local v3, "insertable":Lcom/fsck/k9/message/quote/InsertableHtmlContent;
    invoke-static {p0, p1}, Lcom/fsck/k9/message/quote/QuoteHelper;->getSentDateText(Landroid/content/res/Resources;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "sentDate":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "fromAddress":Ljava/lang/String;
    sget-object v5, Lcom/fsck/k9/Account$QuoteStyle;->PREFIX:Lcom/fsck/k9/Account$QuoteStyle;

    if-ne p3, v5, :cond_2

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .local v2, "header":Ljava/lang/StringBuilder;
    const-string v5, "<div class=\"gmail_quote\">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    const v5, 0x7f0702a0

    .line 58
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    aput-object v1, v6, v8

    .line 57
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/message/html/HtmlConverter;->textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :goto_0
    const-string v5, "<blockquote class=\"gmail_quote\" style=\"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;\">\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, "</blockquote></div>"

    .line 70
    .local v0, "footer":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->insertIntoQuotedHeader(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, v0}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->insertIntoQuotedFooter(Ljava/lang/String;)V

    .line 108
    .end local v0    # "footer":Ljava/lang/String;
    .end local v2    # "header":Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-object v3

    .line 61
    .restart local v2    # "header":Ljava/lang/StringBuilder;
    :cond_1
    const v5, 0x7f07029f

    .line 62
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    .line 61
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/message/html/HtmlConverter;->textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    .end local v2    # "header":Ljava/lang/StringBuilder;
    :cond_2
    sget-object v5, Lcom/fsck/k9/Account$QuoteStyle;->HEADER:Lcom/fsck/k9/Account$QuoteStyle;

    if-ne p3, v5, :cond_0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .restart local v2    # "header":Ljava/lang/StringBuilder;
    const-string v5, "<div style=\'font-size:10.0pt;font-family:\"Tahoma\",\"sans-serif\";padding:3.0pt 0in 0in 0in\'>\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v5, "<hr style=\'border:none;border-top:solid #E1E1E1 1.0pt\'>\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    const-string v5, "<b>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f07029a

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 79
    invoke-static {v1}, Lcom/fsck/k9/message/html/HtmlConverter;->textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br>\r\n"

    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    const-string v5, "<b>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f07029b

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 84
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br>\r\n"

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_4
    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_5

    .line 88
    const-string v5, "<b>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f07029e

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 89
    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/message/html/HtmlConverter;->textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br>\r\n"

    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_5
    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_6

    .line 93
    const-string v5, "<b>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f070299

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 94
    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/message/html/HtmlConverter;->textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br>\r\n"

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_6
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 98
    const-string v5, "<b>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f07029d

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/message/html/HtmlConverter;->textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br>\r\n"

    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_7
    const-string v5, "</div>\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v5, "<br>\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->insertIntoQuotedHeader(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

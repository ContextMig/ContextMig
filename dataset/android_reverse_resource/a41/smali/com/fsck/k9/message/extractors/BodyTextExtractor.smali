.class public Lcom/fsck/k9/message/extractors/BodyTextExtractor;
.super Ljava/lang/Object;
.source "BodyTextExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBodyTextFromMessage(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/message/SimpleMessageFormat;)Ljava/lang/String;
    .locals 4
    .param p0, "messagePart"    # Lcom/fsck/k9/mail/Part;
    .param p1, "format"    # Lcom/fsck/k9/message/SimpleMessageFormat;

    .prologue
    const/4 v3, 0x0

    .line 20
    sget-object v2, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne p1, v2, :cond_1

    .line 22
    const-string v2, "text/html"

    invoke-static {p0, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v0

    .line 23
    .local v0, "part":Lcom/fsck/k9/mail/Part;
    if-eqz v0, :cond_0

    .line 24
    const-string v2, "getBodyTextFromMessage: HTML requested, HTML found."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .end local v0    # "part":Lcom/fsck/k9/mail/Part;
    :goto_0
    return-object v2

    .line 28
    .restart local v0    # "part":Lcom/fsck/k9/mail/Part;
    :cond_0
    const-string v2, "text/plain"

    invoke-static {p0, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    const-string v2, "getBodyTextFromMessage: HTML requested, text found."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/message/html/HtmlConverter;->textToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 34
    .end local v0    # "part":Lcom/fsck/k9/mail/Part;
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    if-ne p1, v2, :cond_3

    .line 36
    const-string v2, "text/plain"

    invoke-static {p0, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v0

    .line 37
    .restart local v0    # "part":Lcom/fsck/k9/mail/Part;
    if-eqz v0, :cond_2

    .line 38
    const-string v2, "getBodyTextFromMessage: Text requested, text found."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 42
    :cond_2
    const-string v2, "text/html"

    invoke-static {p0, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    const-string v2, "getBodyTextFromMessage: Text requested, HTML found."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .restart local v1    # "text":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/message/html/HtmlConverter;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 51
    .end local v0    # "part":Lcom/fsck/k9/mail/Part;
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    const-string v2, ""

    goto :goto_0
.end method

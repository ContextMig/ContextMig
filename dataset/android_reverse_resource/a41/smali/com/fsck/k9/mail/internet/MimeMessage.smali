.class public Lcom/fsck/k9/mail/internet/MimeMessage;
.super Lcom/fsck/k9/mail/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# instance fields
.field protected deliveredTo:[Lcom/fsck/k9/mail/Address;

.field protected mBcc:[Lcom/fsck/k9/mail/Address;

.field private mBody:Lcom/fsck/k9/mail/Body;

.field protected mCc:[Lcom/fsck/k9/mail/Address;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field protected mFrom:[Lcom/fsck/k9/mail/Address;

.field private mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

.field private mInReplyTo:[Ljava/lang/String;

.field protected mMessageId:Ljava/lang/String;

.field private mReferences:[Ljava/lang/String;

.field protected mReplyTo:[Lcom/fsck/k9/mail/Address;

.field protected mSender:[Lcom/fsck/k9/mail/Address;

.field private mSentDate:Ljava/util/Date;

.field protected mSize:I

.field protected mTo:[Lcom/fsck/k9/mail/Address;

.field private serverExtra:Ljava/lang/String;

.field protected xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

.field protected xOriginalTo:[Lcom/fsck/k9/mail/Address;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/fsck/k9/mail/Message;-><init>()V

    .line 46
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    .line 76
    return-void
.end method

.method private getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parse(Ljava/io/InputStream;Z)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 87
    iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/MimeHeader;->clear()V

    .line 88
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 89
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 90
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 91
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 92
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 93
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    .line 94
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    .line 95
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    .line 97
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 98
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    .line 99
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mInReplyTo:[Ljava/lang/String;

    .line 101
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 103
    iput-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 105
    new-instance v3, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    invoke-direct {v3}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;-><init>()V

    .line 107
    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setMaxHeaderLen(I)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v3

    .line 109
    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setMaxLineLen(I)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v3

    .line 111
    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->setMaxHeaderCount(I)Lorg/apache/james/mime4j/stream/MimeConfig$Builder;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lorg/apache/james/mime4j/stream/MimeConfig$Builder;->build()Lorg/apache/james/mime4j/stream/MimeConfig;

    move-result-object v2

    .line 114
    .local v2, "parserConfig":Lorg/apache/james/mime4j/stream/MimeConfig;
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 115
    .local v1, "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    new-instance v3, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;

    new-instance v4, Lcom/fsck/k9/mail/DefaultBodyFactory;

    invoke-direct {v4}, Lcom/fsck/k9/mail/DefaultBodyFactory;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/BodyFactory;)V

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 116
    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {v1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setRecurse()V

    .line 120
    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;

    invoke-direct {v3, p1}, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "me":Lorg/apache/james/mime4j/MimeException;
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/MimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static parseMimeMessage(Ljava/io/InputStream;Z)Lcom/fsck/k9/mail/internet/MimeMessage;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 71
    .local v0, "mimeMessage":Lcom/fsck/k9/mail/internet/MimeMessage;
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;Z)V

    .line 72
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public addRawHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "raw"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public addSentDate(Ljava/util/Date;Z)V
    .locals 3
    .param p1, "sentDate"    # Ljava/util/Date;
    .param p2, "hideTimeZone"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 153
    :cond_0
    if-eqz p2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 157
    :cond_1
    const-string v0, "Date"

    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setInternalSentDate(Ljava/util/Date;)V

    .line 159
    return-void
.end method

.method public bridge synthetic clone()Lcom/fsck/k9/mail/Message;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->clone()Lcom/fsck/k9/mail/internet/MimeMessage;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/fsck/k9/mail/internet/MimeMessage;
    .locals 1

    .prologue
    .line 690
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 691
    .local v0, "message":Lcom/fsck/k9/mail/internet/MimeMessage;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->copy(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 692
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->clone()Lcom/fsck/k9/mail/internet/MimeMessage;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 1
    .param p1, "destination"    # Lcom/fsck/k9/mail/internet/MimeMessage;

    .prologue
    .line 665
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/Message;->copy(Lcom/fsck/k9/mail/Message;)V

    .line 667
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;->clone()Lcom/fsck/k9/mail/internet/MimeHeader;

    move-result-object v0

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    .line 669
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 670
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 672
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 673
    iget v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    iput v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 676
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 677
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 678
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 679
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 680
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 681
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mInReplyTo:[Ljava/lang/String;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mInReplyTo:[Ljava/lang/String;

    .line 683
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    .line 684
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    .line 685
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    .line 686
    return-void
.end method

.method public getBody()Lcom/fsck/k9/mail/Body;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    const-string v1, "Content-Type"

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "text/plain"

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "Content-Disposition"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()[Lcom/fsck/k9/mail/Address;
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    if-nez v1, :cond_2

    .line 321
    const-string v1, "From"

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "list":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 323
    :cond_0
    const-string v1, "Sender"

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_1
    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 327
    .end local v0    # "list":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeaderNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 381
    const-string v0, "Message-ID"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
    .locals 2
    .param p1, "type"    # Lcom/fsck/k9/mail/Message$RecipientType;

    .prologue
    .line 208
    sget-object v0, Lcom/fsck/k9/mail/internet/MimeMessage$1;->$SwitchMap$com$fsck$k9$mail$Message$RecipientType:[I

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message$RecipientType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_0

    .line 211
    const-string v0, "To"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 243
    :goto_0
    return-object v0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_1

    .line 217
    const-string v0, "CC"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_2

    .line 223
    const-string v0, "BCC"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_3

    .line 229
    const-string v0, "X-Original-To"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 234
    :pswitch_4
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_4

    .line 235
    const-string v0, "Delivered-To"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 240
    :pswitch_5
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_5

    .line 241
    const-string v0, "X-Envelope-To"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getReferences()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 399
    const-string v0, "References"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTo()[Lcom/fsck/k9/mail/Address;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_0

    .line 362
    const-string v0, "Reply-to"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    return-object v0
.end method

.method public getSender()[Lcom/fsck/k9/mail/Address;
    .locals 1

    .prologue
    .line 344
    const-string v0, "Sender"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 130
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Date"

    .line 131
    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/DateTimeField;

    .line 132
    .local v0, "field":Lorg/apache/james/mime4j/dom/field/DateTimeField;
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "field":Lorg/apache/james/mime4j/dom/field/DateTimeField;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v1

    .line 133
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getServerExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->serverExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const-string v0, "Subject"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttachments()Z
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final parse(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;Z)V

    .line 84
    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public setBody(Lcom/fsck/k9/mail/Body;)V
    .locals 0
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 449
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->setCharset(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    instance-of v0, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    check-cast v0, Lcom/fsck/k9/mail/Multipart;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/Multipart;->setCharset(Ljava/lang/String;)V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    instance-of v0, v0, Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v0, :cond_0

    .line 522
    invoke-static {p1, p0}, Lcom/fsck/k9/mail/internet/CharsetSupport;->setCharset(Ljava/lang/String;Lcom/fsck/k9/mail/Part;)V

    .line 523
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    check-cast v0, Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/TextBody;->setCharset(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    invoke-interface {v0, p1}, Lcom/fsck/k9/mail/Body;->setEncoding(Ljava/lang/String;)V

    .line 513
    :cond_0
    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public setFrom(Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "from"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 333
    const-string v0, "From"

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public setInReplyTo(Ljava/lang/String;)V
    .locals 1
    .param p1, "inReplyTo"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string v0, "In-Reply-To"

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public setInternalSentDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "sentDate"    # Ljava/util/Date;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 169
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 387
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "type"    # Lcom/fsck/k9/mail/Message$RecipientType;
    .param p2, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v1, 0x0

    .line 252
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    .line 253
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 254
    :cond_0
    const-string v0, "To"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 255
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 303
    :goto_0
    return-void

    .line 257
    :cond_1
    const-string v0, "To"

    invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 260
    :cond_2
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 261
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_4

    .line 262
    :cond_3
    const-string v0, "CC"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 263
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 265
    :cond_4
    const-string v0, "CC"

    invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 268
    :cond_5
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_8

    .line 269
    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_7

    .line 270
    :cond_6
    const-string v0, "BCC"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 271
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 273
    :cond_7
    const-string v0, "BCC"

    invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 276
    :cond_8
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->X_ORIGINAL_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_b

    .line 277
    if-eqz p2, :cond_9

    array-length v0, p2

    if-nez v0, :cond_a

    .line 278
    :cond_9
    const-string v0, "X-Original-To"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 279
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 281
    :cond_a
    const-string v0, "X-Original-To"

    invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 284
    :cond_b
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->DELIVERED_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_e

    .line 285
    if-eqz p2, :cond_c

    array-length v0, p2

    if-nez v0, :cond_d

    .line 286
    :cond_c
    const-string v0, "Delivered-To"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 287
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 289
    :cond_d
    const-string v0, "Delivered-To"

    invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 292
    :cond_e
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->X_ENVELOPE_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_11

    .line 293
    if-eqz p2, :cond_f

    array-length v0, p2

    if-nez v0, :cond_10

    .line 294
    :cond_f
    const-string v0, "X-Envelope-To"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 295
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    goto/16 :goto_0

    .line 297
    :cond_10
    const-string v0, "X-Envelope-To"

    invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    goto/16 :goto_0

    .line 301
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReferences(Ljava/lang/String;)V
    .locals 8
    .param p1, "references"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3c

    .line 415
    const-string v5, "\\s+"

    const-string v6, " "

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 422
    const/16 v1, 0x3d9

    .line 423
    .local v1, "limit":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 424
    .local v2, "originalLength":I
    const/16 v5, 0x3d9

    if-lt v2, v5, :cond_0

    .line 426
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 429
    .local v3, "start":I
    add-int/lit8 v5, v3, 0x1

    .line 430
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 429
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "firstReference":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit16 v5, v5, -0x3d9

    .line 433
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "tail":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 438
    .end local v0    # "firstReference":Ljava/lang/String;
    .end local v3    # "start":I
    .end local v4    # "tail":Ljava/lang/String;
    :cond_0
    const-string v5, "References"

    invoke-virtual {p0, v5, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public setReplyTo([Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "replyTo"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 369
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 370
    :cond_0
    const-string v0, "Reply-to"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 376
    :goto_0
    return-void

    .line 373
    :cond_1
    const-string v0, "Reply-to"

    invoke-static {p1}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0
.end method

.method public setSender(Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "sender"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    const-string v0, "Sender"

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSender:[Lcom/fsck/k9/mail/Address;

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSender:[Lcom/fsck/k9/mail/Address;

    goto :goto_0
.end method

.method public setSentDate(Ljava/util/Date;Z)V
    .locals 1
    .param p1, "sentDate"    # Ljava/util/Date;
    .param p2, "hideTimeZone"    # Z

    .prologue
    .line 163
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->addSentDate(Ljava/util/Date;Z)V

    .line 165
    return-void
.end method

.method public setServerExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverExtra"    # Ljava/lang/String;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->serverExtra:Ljava/lang/String;

    .line 708
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string v0, "Subject"

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public toBodyPart()Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 719
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V

    .line 720
    .local v0, "contentHeaders":Lcom/fsck/k9/mail/internet/MimeHeader;
    iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeaderNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 721
    .local v1, "header":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "content-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v3, v1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v5, v3

    .line 723
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 727
    .end local v1    # "header":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/internet/MimeHeader;Lcom/fsck/k9/mail/Body;)V

    return-object v3
.end method

.method public writeHeaderTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 501
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 490
    .local v0, "writer":Ljava/io/BufferedWriter;
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 491
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 493
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    invoke-interface {v1, p1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 496
    :cond_0
    return-void
.end method

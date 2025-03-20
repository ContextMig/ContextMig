.class public Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;
.super Lcom/fsck/k9/mail/Transport;
.source "SmtpTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    }
.end annotation


# static fields
.field private static final SMTP_AUTHENTICATION_FAILURE_ERROR_CODE:I = 0x217

.field private static final SMTP_CONTINUE_REQUEST:I = 0x14e


# instance fields
.field private final authType:Lcom/fsck/k9/mail/AuthType;

.field private final clientCertificateAlias:Ljava/lang/String;

.field private final connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

.field private final host:Ljava/lang/String;

.field private inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

.field private is8bitEncodingAllowed:Z

.field private isEnhancedStatusCodesProvided:Z

.field private isPipeliningSupported:Z

.field private largestAcceptableMessage:I

.field private final oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

.field private outputStream:Ljava/io/OutputStream;

.field private final password:Ljava/lang/String;

.field private final port:I

.field private retryXoauthWithNewToken:Z

.field private socket:Ljava/net/Socket;

.field private final trustedSocketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;)V
    .locals 4
    .param p1, "storeConfig"    # Lcom/fsck/k9/mail/store/StoreConfig;
    .param p2, "trustedSocketFactory"    # Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;
    .param p3, "oauthTokenProvider"    # Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/fsck/k9/mail/Transport;-><init>()V

    .line 90
    :try_start_0
    invoke-interface {p1}, Lcom/fsck/k9/mail/store/StoreConfig;->getTransportUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/TransportUris;->decodeTransportUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    .local v1, "settings":Lcom/fsck/k9/mail/ServerSettings;
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    sget-object v3, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-eq v2, v3, :cond_0

    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected SMTP StoreConfig!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    .end local v1    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Error while decoding transport URI"

    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :cond_0
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->host:Ljava/lang/String;

    .line 100
    iget v2, v1, Lcom/fsck/k9/mail/ServerSettings;->port:I

    iput v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->port:I

    .line 102
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    iput-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 104
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    iput-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->authType:Lcom/fsck/k9/mail/AuthType;

    .line 105
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    .line 106
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->password:Ljava/lang/String;

    .line 107
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->clientCertificateAlias:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->trustedSocketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    .line 110
    iput-object p3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    .line 111
    return-void
.end method

.method private attemptXoauth2(Ljava/lang/String;)V
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 810
    iget-object v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    const-wide/16 v6, 0x7530

    invoke-interface {v4, p1, v6, v7}, Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;->getToken(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 811
    .local v3, "token":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/fsck/k9/mail/Authentication;->computeXoauth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "authString":Ljava/lang/String;
    const-string v4, "AUTH XOAUTH2 %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-direct {p0, v4, v5}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeSensitiveCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    move-result-object v2

    .line 814
    .local v2, "response":Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    invoke-static {v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;->access$100(Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;)I

    move-result v4

    const/16 v5, 0x14e

    if-ne v4, v5, :cond_0

    .line 815
    const-string v4, ""

    invoke-static {v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;->access$000(Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "replyText":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->host:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/fsck/k9/mail/oauth/XOAuth2ChallengeParser;->shouldRetry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->retryXoauthWithNewToken:Z

    .line 819
    const-string v4, ""

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    .line 821
    .end local v1    # "replyText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildEnhancedNegativeSmtpReplyException(ILjava/util/List;)Lcom/fsck/k9/mail/MessagingException;
    .locals 12
    .param p1, "replyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/mail/MessagingException;"
        }
    .end annotation

    .prologue
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 604
    const/4 v2, 0x0

    .line 605
    .local v2, "statusCodeClass":Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    const/4 v3, 0x0

    .line 606
    .local v3, "statusCodeSubject":Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    const/4 v4, 0x0

    .line 608
    .local v4, "statusCodeDetail":Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;
    const-string v6, ""

    .line 609
    .local v6, "message":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 610
    .local v7, "resultLine":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v7, v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v11

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 611
    goto :goto_0

    .line 612
    .end local v7    # "resultLine":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 613
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 615
    .local v8, "statusCodeParts":[Ljava/lang/String;
    aget-object v0, v8, v9

    invoke-static {v0}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    move-result-object v2

    .line 616
    aget-object v0, v8, v11

    invoke-static {v0}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    move-result-object v3

    .line 617
    aget-object v0, v8, v10

    invoke-static {v3, v0}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;->parse(Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;Ljava/lang/String;)Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    move-result-object v4

    .line 620
    .end local v8    # "statusCodeParts":[Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/EnhancedNegativeSmtpReplyException;

    .line 621
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mail/transport/smtp/EnhancedNegativeSmtpReplyException;-><init>(ILcom/fsck/k9/mail/transport/smtp/StatusCodeClass;Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;Ljava/lang/String;)V

    .line 620
    return-object v0
.end method

.method private static constructSmtpMailFromCommand([Lcom/fsck/k9/mail/Address;Z)Ljava/lang/String;
    .locals 5
    .param p0, "from"    # [Lcom/fsck/k9/mail/Address;
    .param p1, "is8bitEncodingAllowed"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 482
    aget-object v1, p0, v3

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "fromAddress":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 484
    const-string v1, "MAIL FROM:<%s> BODY=8BITMIME"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 487
    :goto_0
    return-object v1

    .line 486
    :cond_0
    const-string v1, "Server does not support 8bit transfer encoding"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    const-string v1, "MAIL FROM:<%s>"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private varargs executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    move-result-object v0

    return-object v0
.end method

.method private varargs executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    .locals 11
    .param p1, "sensitive"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 569
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 571
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v9, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->writeLine(Ljava/lang/String;Z)V

    .line 575
    .end local v0    # "command":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->readCommandResponseLine(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 578
    .local v2, "length":I
    if-ge v2, v8, :cond_1

    .line 579
    new-instance v8, Lcom/fsck/k9/mail/MessagingException;

    const-string v9, "SMTP response is 0 length"

    invoke-direct {v8, v9}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 582
    :cond_1
    const/4 v4, -0x1

    .line 583
    .local v4, "replyCode":I
    if-lt v2, v10, :cond_2

    .line 585
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 589
    :cond_2
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 590
    .local v5, "replyCodeCategory":C
    const/16 v9, 0x34

    if-eq v5, v9, :cond_3

    const/16 v9, 0x35

    if-ne v5, v9, :cond_4

    :cond_3
    move v1, v8

    .line 591
    .local v1, "isReplyCodeErrorCategory":Z
    :cond_4
    if-eqz v1, :cond_6

    .line 592
    iget-boolean v8, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->isEnhancedStatusCodesProvided:Z

    if-eqz v8, :cond_5

    .line 593
    invoke-direct {p0, v4, v7}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->buildEnhancedNegativeSmtpReplyException(ILjava/util/List;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v8

    throw v8

    .line 595
    :cond_5
    const-string v8, " "

    invoke-static {v8, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "replyText":Ljava/lang/String;
    new-instance v8, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;

    invoke-direct {v8, v4, v6}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 600
    .end local v6    # "replyText":Ljava/lang/String;
    :cond_6
    new-instance v8, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    invoke-direct {v8, v4, v7}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;-><init>(ILjava/util/List;)V

    return-object v8

    .line 586
    .end local v1    # "isReplyCodeErrorCategory":Z
    .end local v5    # "replyCodeCategory":C
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method private executePipelinedCommands(Ljava/util/Queue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "pipelinedCommands":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 648
    .local v0, "command":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->writeLine(Ljava/lang/String;Z)V

    goto :goto_0

    .line 650
    .end local v0    # "command":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private varargs executeSensitiveCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 560
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    move-result-object v0

    return-object v0
.end method

.method private handlePermanentFailure(Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;)V
    .locals 2
    .param p1, "negativeResponse"    # Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/AuthenticationFailedException;
        }
    .end annotation

    .prologue
    .line 780
    new-instance v0, Lcom/fsck/k9/mail/AuthenticationFailedException;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private handleTemporaryFailure(Ljava/lang/String;Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "negativeResponseFromOldToken"    # Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 791
    const-string v1, "Authentication exception, re-trying with new token"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->attemptXoauth2(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_0
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "negativeResponseFromNewToken":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->getReplyCode()I

    move-result v1

    const/16 v2, 0x217

    if-eq v1, v2, :cond_0

    .line 796
    throw v0

    .line 801
    :cond_0
    const-string v1, "Authentication exception for new token, permanent error assumed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    invoke-interface {v1, p1}, Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;->invalidateToken(Ljava/lang/String;)V

    .line 805
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->handlePermanentFailure(Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;)V

    goto :goto_0
.end method

.method private parseOptionalSizeValue(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "SIZE"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    const-string v2, "SIZE"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    .local v1, "optionalsizeValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 336
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->largestAcceptableMessage:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v1    # "optionalsizeValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 337
    .restart local v1    # "optionalsizeValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_SMTP:Z

    if-eqz v2, :cond_0

    .line 339
    const-string v2, "Tried to parse %s and get an int"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private readCommandResponseLine(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x4

    .line 630
    invoke-direct {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_1

    .line 632
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 634
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2

    .line 643
    :cond_1
    return-object v0

    .line 641
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local v3, "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v1

    .local v1, "d":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 510
    int-to-char v0, v1

    .line 511
    .local v0, "c":C
    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    .line 517
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_SMTP:Z

    if-eqz v4, :cond_2

    .line 519
    const-string v4, "SMTP <<< %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :cond_2
    return-object v2

    .line 513
    .end local v2    # "ret":Ljava/lang/String;
    .restart local v0    # "c":C
    :cond_3
    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    .line 514
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private readPipelinedResponse(Ljava/util/Queue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 654
    .local p1, "pipelinedCommands":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 656
    .local v3, "negativeRecipient":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 657
    .local v0, "command":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 658
    invoke-direct {p0, v5}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->readCommandResponseLine(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 660
    .local v4, "responseLine":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v4, v5}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->responseLineToCommandResponse(Ljava/lang/String;Ljava/util/List;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v2

    .line 663
    .local v2, "exception":Lcom/fsck/k9/mail/MessagingException;
    const-string v7, "DATA"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 664
    throw v2

    .line 666
    :cond_1
    const-string v7, "RCPT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v3, v2

    .line 667
    check-cast v3, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;

    goto :goto_0

    .line 672
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "exception":Lcom/fsck/k9/mail/MessagingException;
    .end local v4    # "responseLine":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 674
    :try_start_1
    const-string v6, "."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0, v6, v7}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    .line 675
    throw v3
    :try_end_1
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 676
    :catch_1
    move-exception v1

    .line 677
    .local v1, "e":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    throw v3

    .line 681
    .end local v1    # "e":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    :cond_3
    return-void
.end method

.method private responseLineToCommandResponse(Ljava/lang/String;Ljava/util/List;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 684
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 685
    .local v1, "length":I
    if-ge v1, v5, :cond_0

    .line 686
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "SMTP response to line is 0 length"

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 689
    :cond_0
    const/4 v2, -0x1

    .line 690
    .local v2, "replyCode":I
    if-lt v1, v6, :cond_1

    .line 692
    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_0
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 696
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 697
    .local v3, "replyCodeCategory":C
    const/16 v6, 0x34

    if-eq v3, v6, :cond_2

    const/16 v6, 0x35

    if-ne v3, v6, :cond_3

    :cond_2
    move v0, v5

    .line 698
    .local v0, "isReplyCodeErrorCategory":Z
    :cond_3
    if-eqz v0, :cond_5

    .line 699
    iget-boolean v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->isEnhancedStatusCodesProvided:Z

    if-eqz v5, :cond_4

    .line 700
    invoke-direct {p0, v2, p2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->buildEnhancedNegativeSmtpReplyException(ILjava/util/List;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v5

    throw v5

    .line 702
    :cond_4
    const-string v5, " "

    invoke-static {v5, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 703
    .local v4, "replyText":Ljava/lang/String;
    new-instance v5, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;

    invoke-direct {v5, v2, v4}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 707
    .end local v4    # "replyText":Ljava/lang/String;
    :cond_5
    new-instance v5, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    invoke-direct {v5, v2, p2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;-><init>(ILjava/util/List;)V

    return-object v5

    .line 693
    .end local v0    # "isReplyCodeErrorCategory":Z
    .end local v3    # "replyCodeCategory":C
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private saslAuthCramMD5()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 741
    const-string v4, "AUTH CRAM-MD5"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;->access$000(Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;)Ljava/util/List;

    move-result-object v3

    .line 742
    .local v3, "respList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 743
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "Unable to negotiate CRAM-MD5"

    invoke-direct {v4, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 746
    :cond_0
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 747
    .local v1, "b64Nonce":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->password:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/fsck/k9/mail/Authentication;->computeCramMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "b64CRAMString":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v4}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeSensitiveCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    return-void

    .line 751
    :catch_0
    move-exception v2

    .line 752
    .local v2, "exception":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->getReplyCode()I

    move-result v4

    const/16 v5, 0x217

    if-ne v4, v5, :cond_1

    .line 753
    new-instance v4, Lcom/fsck/k9/mail/AuthenticationFailedException;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 755
    :cond_1
    throw v2
.end method

.method private saslAuthExternal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    const-string v0, "AUTH EXTERNAL %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    .line 825
    return-void
.end method

.method private saslAuthLogin()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    :try_start_0
    const-string v1, "AUTH LOGIN"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    .line 714
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeSensitiveCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    .line 715
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->password:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeSensitiveCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "exception":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->getReplyCode()I

    move-result v1

    const/16 v2, 0x217

    if-ne v1, v2, :cond_0

    .line 718
    new-instance v1, Lcom/fsck/k9/mail/AuthenticationFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTH LOGIN failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 720
    :cond_0
    throw v0
.end method

.method private saslAuthPlain()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    const-string v2, "AUTH PLAIN %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeSensitiveCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    return-void

    .line 729
    :catch_0
    move-exception v1

    .line 730
    .local v1, "exception":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->getReplyCode()I

    move-result v2

    const/16 v3, 0x217

    if-ne v2, v3, :cond_0

    .line 731
    new-instance v2, Lcom/fsck/k9/mail/AuthenticationFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTH PLAIN failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 732
    invoke-virtual {v1}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 734
    :cond_0
    throw v1
.end method

.method private saslXoauth2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->retryXoauthWithNewToken:Z

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->attemptXoauth2(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "negativeResponse":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->getReplyCode()I

    move-result v1

    const/16 v2, 0x217

    if-eq v1, v2, :cond_0

    .line 766
    throw v0

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    iget-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;->invalidateToken(Ljava/lang/String;)V

    .line 771
    iget-boolean v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->retryXoauthWithNewToken:Z

    if-nez v1, :cond_1

    .line 772
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->handlePermanentFailure(Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;)V

    goto :goto_0

    .line 774
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->handleTemporaryFailure(Ljava/lang/String;Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;)V

    goto :goto_0
.end method

.method private sendHello(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 367
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 369
    .local v2, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v6, "EHLO %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-direct {p0, v6, v7}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;->access$000(Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;)Ljava/util/List;

    move-result-object v5

    .line 371
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 372
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 373
    .local v4, "result":Ljava/lang/String;
    const-string v6, " "

    const/4 v8, 0x2

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "pair":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    array-length v6, v3

    if-ne v6, v10, :cond_2

    const-string v6, ""

    :goto_1
    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v3    # "pair":[Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 378
    const-string v6, "Server doesn\'t support the EHLO command. Trying HELO..."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_0
    :try_start_1
    const-string v6, "HELO %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-direct {p0, v6, v7}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    :try_end_1
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    .end local v0    # "e":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    :cond_1
    :goto_2
    return-object v2

    .line 374
    .restart local v3    # "pair":[Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v6, 0x1

    :try_start_2
    aget-object v6, v3, v6
    :try_end_2
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 383
    .end local v3    # "pair":[Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "e":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    :catch_1
    move-exception v1

    .line 384
    .local v1, "e2":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    const-string v6, "Server doesn\'t support the HELO command. Continuing anyway."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private sendMessageTo(Ljava/util/List;Lcom/fsck/k9/mail/Message;)V
    .locals 13
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fsck/k9/mail/Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 423
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 424
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->open()V

    .line 428
    iget v7, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->largestAcceptableMessage:I

    if-lez v7, :cond_0

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->hasAttachments()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 429
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->calculateSize()J

    move-result-wide v8

    iget v7, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->largestAcceptableMessage:I

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 430
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "Message too large for server"

    invoke-direct {v7, v8, v12}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v7

    .line 434
    :cond_0
    const/4 v2, 0x0

    .line 437
    .local v2, "entireMessageSent":Z
    :try_start_0
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v7

    iget-boolean v8, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->is8bitEncodingAllowed:Z

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->constructSmtpMailFromCommand([Lcom/fsck/k9/mail/Address;Z)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "mailFrom":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->isPipeliningSupported:Z

    if-eqz v7, :cond_2

    .line 440
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 441
    .local v6, "pipelinedCommands":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-interface {v6, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    .local v0, "address":Ljava/lang/String;
    const-string v8, "RCPT TO:<%s>"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 468
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "mailFrom":Ljava/lang/String;
    .end local v6    # "pipelinedCommands":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    .end local v1    # "e":Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    throw v7

    .line 447
    .restart local v3    # "mailFrom":Ljava/lang/String;
    .restart local v6    # "pipelinedCommands":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    const-string v7, "DATA"

    invoke-interface {v6, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executePipelinedCommands(Ljava/util/Queue;)V

    .line 449
    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->readPipelinedResponse(Ljava/util/Queue;)V

    .line 460
    .end local v6    # "pipelinedCommands":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :goto_1
    new-instance v5, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    new-instance v7, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;

    new-instance v8, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;

    iget-object v9, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v8, v9}, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;-><init>(Ljava/io/OutputStream;)V

    const/16 v9, 0x3e8

    invoke-direct {v7, v8, v9}, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v5, v7}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 463
    .local v5, "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    invoke-virtual {p2, v5}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 464
    invoke-virtual {v5}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->endWithCrLfAndFlush()V

    .line 466
    const/4 v2, 0x1

    .line 467
    const-string v7, "."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    :try_end_2
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 479
    return-void

    .line 451
    .end local v5    # "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    :cond_2
    const/4 v7, 0x0

    :try_start_3
    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0, v3, v7}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    .line 453
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    .restart local v0    # "address":Ljava/lang/String;
    const-string v8, "RCPT TO:<%s>"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-direct {p0, v8, v9}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    :try_end_3
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 470
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "mailFrom":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Unable to send message"

    invoke-direct {v4, v7, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    .local v4, "me":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {v4, v2}, Lcom/fsck/k9/mail/MessagingException;->setPermanentFailure(Z)V

    .line 474
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 457
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "me":Lcom/fsck/k9/mail/MessagingException;
    .restart local v3    # "mailFrom":Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v7, "DATA"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    :try_end_5
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private writeLine(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_SMTP:Z

    if-eqz v2, :cond_0

    .line 527
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebugSensitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 528
    const-string v0, "SMTP >>> *sensitive*"

    .line 532
    .local v0, "commandToLog":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    .end local v0    # "commandToLog":Ljava/lang/String;
    :cond_0
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 543
    .local v1, "data":[B
    iget-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 544
    iget-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 545
    return-void

    .line 530
    .end local v1    # "data":[B
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMTP >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "commandToLog":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 494
    :try_start_0
    const-string v0, "QUIT"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 499
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 500
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 501
    iput-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 502
    iput-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/OutputStream;

    .line 503
    iput-object v2, p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    .line 504
    return-void

    .line 495
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getCanonicalHostName(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 829
    invoke-virtual {p1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 116
    const/16 v18, 0x0

    .line 117
    .local v18, "secureConnection":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->host:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 118
    .local v3, "addresses":[Ljava/net/InetAddress;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v0, v3

    move/from16 v20, v0
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move/from16 v0, v20

    if-ge v12, v0, :cond_0

    .line 120
    :try_start_1
    new-instance v19, Ljava/net/InetSocketAddress;

    aget-object v20, v3, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->port:I

    move/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 121
    .local v19, "socketAddress":Ljava/net/SocketAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    move-object/from16 v20, v0

    sget-object v21, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->trustedSocketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->host:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->port:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->clientCertificateAlias:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    move-object/from16 v20, v0

    const/16 v21, 0x2710

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 124
    const/16 v18, 0x1

    .line 140
    .end local v19    # "socketAddress":Ljava/net/SocketAddress;
    :cond_0
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    move-object/from16 v20, v0

    const v21, 0x493e0

    invoke-virtual/range {v20 .. v21}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 142
    new-instance v20, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    const/16 v23, 0x400

    invoke-direct/range {v21 .. v23}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 143
    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    const/16 v22, 0x400

    invoke-direct/range {v20 .. v22}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/OutputStream;

    .line 146
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v15

    .line 149
    .local v15, "localAddress":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->getCanonicalHostName(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v16

    .line 150
    .local v16, "localHost":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, "ipAddr":Ljava/lang/String;
    const-string v20, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "_"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 155
    :cond_1
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 156
    instance-of v0, v15, Ljava/net/Inet6Address;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 157
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[IPv6:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 167
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->sendHello(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 169
    .local v10, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v20, "8BITMIME"

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->is8bitEncodingAllowed:Z

    .line 170
    const-string v20, "ENHANCEDSTATUSCODES"

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->isEnhancedStatusCodesProvided:Z

    .line 171
    const-string v20, "PIPELINING"

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->isPipeliningSupported:Z

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    move-object/from16 v20, v0

    sget-object v21, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 174
    const-string v20, "STARTTLS"

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 175
    const-string v20, "STARTTLS"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->executeCommand(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$CommandResponse;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->trustedSocketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->host:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->port:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->clientCertificateAlias:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    .line 183
    new-instance v20, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    const/16 v23, 0x400

    invoke-direct/range {v21 .. v23}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 185
    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    const/16 v22, 0x400

    invoke-direct/range {v20 .. v22}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->outputStream:Ljava/io/OutputStream;

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->sendHello(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 191
    const/16 v18, 0x1

    .line 205
    :cond_3
    const/4 v6, 0x0

    .line 206
    .local v6, "authLoginSupported":Z
    const/4 v7, 0x0

    .line 207
    .local v7, "authPlainSupported":Z
    const/4 v4, 0x0

    .line 208
    .local v4, "authCramMD5Supported":Z
    const/4 v5, 0x0

    .line 209
    .local v5, "authExternalSupported":Z
    const/4 v8, 0x0

    .line 210
    .local v8, "authXoauth2Supported":Z
    const-string v20, "AUTH"

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 211
    const-string v20, "AUTH"

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 212
    .local v17, "saslMech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v20, "LOGIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 213
    const-string v20, "PLAIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 214
    const-string v20, "CRAM-MD5"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 215
    const-string v20, "EXTERNAL"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 216
    const-string v20, "XOAUTH2"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 218
    .end local v17    # "saslMech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->parseOptionalSizeValue(Ljava/util/Map;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->username:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->password:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 221
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    sget-object v20, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->authType:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_5

    sget-object v20, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->authType:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 225
    :cond_5
    sget-object v20, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport$1;->$SwitchMap$com$fsck$k9$mail$AuthType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->authType:Lcom/fsck/k9/mail/AuthType;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/AuthType;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    .line 311
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "Unhandled authentication method found in the server settings (bug)."

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 315
    .end local v3    # "addresses":[Ljava/net/InetAddress;
    .end local v4    # "authCramMD5Supported":Z
    .end local v5    # "authExternalSupported":Z
    .end local v6    # "authLoginSupported":Z
    .end local v7    # "authPlainSupported":Z
    .end local v8    # "authXoauth2Supported":Z
    .end local v10    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v14    # "ipAddr":Ljava/lang/String;
    .end local v15    # "localAddress":Ljava/net/InetAddress;
    .end local v16    # "localHost":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 316
    .local v9, "e":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 317
    throw v9

    .line 126
    .end local v9    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v3    # "addresses":[Ljava/net/InetAddress;
    .restart local v12    # "i":I
    .restart local v19    # "socketAddress":Ljava/net/SocketAddress;
    :cond_6
    :try_start_3
    new-instance v20, Ljava/net/Socket;

    invoke-direct/range {v20 .. v20}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->socket:Ljava/net/Socket;

    move-object/from16 v20, v0

    const/16 v21, 0x2710

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    .line 129
    .end local v19    # "socketAddress":Ljava/net/SocketAddress;
    :catch_1
    move-exception v9

    .line 130
    .local v9, "e":Ljava/net/SocketException;
    :try_start_4
    array-length v0, v3

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v12, v0, :cond_7

    .line 118
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 134
    :cond_7
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "Cannot connect to host"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20
    :try_end_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 318
    .end local v3    # "addresses":[Ljava/net/InetAddress;
    .end local v9    # "e":Ljava/net/SocketException;
    .end local v12    # "i":I
    :catch_2
    move-exception v9

    .line 319
    .local v9, "e":Ljavax/net/ssl/SSLException;
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 320
    new-instance v20, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 159
    .end local v9    # "e":Ljavax/net/ssl/SSLException;
    .restart local v3    # "addresses":[Ljava/net/InetAddress;
    .restart local v12    # "i":I
    .restart local v14    # "ipAddr":Ljava/lang/String;
    .restart local v15    # "localAddress":Ljava/net/InetAddress;
    .restart local v16    # "localHost":Ljava/lang/String;
    :cond_8
    :try_start_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 163
    :cond_9
    const-string v16, "android"

    goto/16 :goto_2

    .line 200
    .restart local v10    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    new-instance v20, Lcom/fsck/k9/mail/CertificateValidationException;

    const-string v21, "STARTTLS connection security not available"

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_5
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 321
    .end local v3    # "addresses":[Ljava/net/InetAddress;
    .end local v10    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v14    # "ipAddr":Ljava/lang/String;
    .end local v15    # "localAddress":Ljava/net/InetAddress;
    .end local v16    # "localHost":Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 322
    .local v11, "gse":Ljava/security/GeneralSecurityException;
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 323
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "Unable to open connection to SMTP server due to security error."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 235
    .end local v11    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v3    # "addresses":[Ljava/net/InetAddress;
    .restart local v4    # "authCramMD5Supported":Z
    .restart local v5    # "authExternalSupported":Z
    .restart local v6    # "authLoginSupported":Z
    .restart local v7    # "authPlainSupported":Z
    .restart local v8    # "authXoauth2Supported":Z
    .restart local v10    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "i":I
    .restart local v14    # "ipAddr":Ljava/lang/String;
    .restart local v15    # "localAddress":Ljava/net/InetAddress;
    .restart local v16    # "localHost":Ljava/lang/String;
    :pswitch_0
    if-eqz v7, :cond_c

    .line 236
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthPlain()V

    .line 329
    :cond_b
    :goto_3
    return-void

    .line 237
    :cond_c
    if-eqz v6, :cond_d

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthLogin()V
    :try_end_6
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 325
    .end local v3    # "addresses":[Ljava/net/InetAddress;
    .end local v4    # "authCramMD5Supported":Z
    .end local v5    # "authExternalSupported":Z
    .end local v6    # "authLoginSupported":Z
    .end local v7    # "authPlainSupported":Z
    .end local v8    # "authXoauth2Supported":Z
    .end local v10    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v14    # "ipAddr":Ljava/lang/String;
    .end local v15    # "localAddress":Ljava/net/InetAddress;
    .end local v16    # "localHost":Ljava/lang/String;
    :catch_4
    move-exception v13

    .line 326
    .local v13, "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->close()V

    .line 327
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "Unable to open connection to SMTP server."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 240
    .end local v13    # "ioe":Ljava/io/IOException;
    .restart local v3    # "addresses":[Ljava/net/InetAddress;
    .restart local v4    # "authCramMD5Supported":Z
    .restart local v5    # "authExternalSupported":Z
    .restart local v6    # "authLoginSupported":Z
    .restart local v7    # "authPlainSupported":Z
    .restart local v8    # "authXoauth2Supported":Z
    .restart local v10    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "i":I
    .restart local v14    # "ipAddr":Ljava/lang/String;
    .restart local v15    # "localAddress":Ljava/net/InetAddress;
    .restart local v16    # "localHost":Ljava/lang/String;
    :cond_d
    :try_start_7
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "Authentication methods SASL PLAIN and LOGIN are unavailable."

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 246
    :pswitch_1
    if-eqz v4, :cond_e

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthCramMD5()V

    goto :goto_3

    .line 249
    :cond_e
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "Authentication method CRAM-MD5 is unavailable."

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 253
    :pswitch_2
    if-eqz v8, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslXoauth2()V

    goto :goto_3

    .line 256
    :cond_f
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "Authentication method XOAUTH2 is unavailable."

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 260
    :pswitch_3
    if-eqz v5, :cond_10

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthExternal()V

    goto :goto_3

    .line 273
    :cond_10
    new-instance v20, Lcom/fsck/k9/mail/CertificateValidationException;

    sget-object v21, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->MissingCapability:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Lcom/fsck/k9/mail/CertificateValidationException$Reason;)V

    throw v20

    .line 283
    :pswitch_4
    if-eqz v18, :cond_14

    .line 285
    if-eqz v7, :cond_11

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthPlain()V

    goto :goto_3

    .line 287
    :cond_11
    if-eqz v6, :cond_12

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthLogin()V

    goto :goto_3

    .line 289
    :cond_12
    if-eqz v4, :cond_13

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthCramMD5()V

    goto :goto_3

    .line 292
    :cond_13
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "No supported authentication methods available."

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 295
    :cond_14
    if-eqz v4, :cond_15

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->saslAuthCramMD5()V

    goto :goto_3

    .line 304
    :cond_15
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "Update your outgoing server authentication setting. AUTOMATIC auth. is unavailable."

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_7
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public sendMessage(Lcom/fsck/k9/mail/Message;)V
    .locals 9
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    sget-object v7, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v7}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 395
    sget-object v7, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v7}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    sget-object v7, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v7}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    sget-object v7, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Lcom/fsck/k9/mail/Message;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 400
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v5, "charsetAddressesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Address;

    .line 402
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "addressString":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/CharsetSupport;->getCharsetFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "charset":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 405
    .local v3, "addressesOfCharset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 406
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "addressesOfCharset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .restart local v3    # "addressesOfCharset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v1    # "addressString":Ljava/lang/String;
    .end local v3    # "addressesOfCharset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "charset":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 414
    .local v6, "charsetAddressesMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 415
    .restart local v4    # "charset":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 416
    .restart local v3    # "addressesOfCharset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->setCharset(Ljava/lang/String;)V

    .line 417
    invoke-direct {p0, v3, p1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->sendMessageTo(Ljava/util/List;Lcom/fsck/k9/mail/Message;)V

    goto :goto_1

    .line 419
    .end local v3    # "addressesOfCharset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "charset":Ljava/lang/String;
    .end local v6    # "charsetAddressesMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    return-void
.end method

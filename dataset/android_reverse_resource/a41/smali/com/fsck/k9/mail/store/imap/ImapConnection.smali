.class Lcom/fsck/k9/mail/store/imap/ImapConnection;
.super Ljava/lang/Object;
.source "ImapConnection.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# instance fields
.field private capabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

.field private nextCommandTag:I

.field private final oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

.field private open:Z

.field private outputStream:Ljava/io/OutputStream;

.field private responseParser:Lcom/fsck/k9/mail/store/imap/ImapResponseParser;

.field private retryXoauth2WithNewToken:Z

.field private settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

.field private socket:Ljava/net/Socket;

.field private final socketConnectTimeout:I

.field private final socketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

.field private final socketReadTimeout:I

.field private stacktraceForClose:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapSettings;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;Landroid/net/ConnectivityManager;Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;)V
    .locals 1
    .param p1, "settings"    # Lcom/fsck/k9/mail/store/imap/ImapSettings;
    .param p2, "socketFactory"    # Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;
    .param p3, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p4, "oauthTokenProvider"    # Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->capabilities:Ljava/util/Set;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->open:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->retryXoauth2WithNewToken:Z

    .line 84
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    .line 85
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    .line 86
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 87
    iput-object p4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    .line 88
    const/16 v0, 0x7530

    iput v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socketConnectTimeout:I

    .line 89
    const v0, 0xea60

    iput v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socketReadTimeout:I

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapSettings;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;Landroid/net/ConnectivityManager;Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;II)V
    .locals 1
    .param p1, "settings"    # Lcom/fsck/k9/mail/store/imap/ImapSettings;
    .param p2, "socketFactory"    # Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;
    .param p3, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p4, "oauthTokenProvider"    # Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;
    .param p5, "socketConnectTimeout"    # I
    .param p6, "socketReadTimeout"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->capabilities:Ljava/util/Set;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->open:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->retryXoauth2WithNewToken:Z

    .line 95
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    .line 96
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    .line 97
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 98
    iput-object p4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    .line 99
    iput p5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socketConnectTimeout:I

    .line 100
    iput p6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socketReadTimeout:I

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/store/imap/ImapConnection;Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .param p1, "x1"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->handleXOAuthUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    return-void
.end method

.method private adjustDNSCacheTTL()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    :try_start_0
    const-string v1, "networkaddress.cache.ttl"

    const-string v2, "0"

    invoke-static {v1, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    :try_start_1
    const-string v1, "networkaddress.cache.negative.ttl"

    const-string v2, "0"

    invoke-static {v1, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :goto_1
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not set DNS ttl to 0 for %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 186
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Could not set DNS negative ttl to 0 for %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private attemptXOAuth2()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v4}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getUsername()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x7530

    invoke-interface {v3, v4, v6, v7}, Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;->getToken(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "token":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v3}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/fsck/k9/mail/Authentication;->computeXoauth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "authString":Ljava/lang/String;
    const-string v3, "AUTHENTICATE XOAUTH2"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v0, v4}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->sendSaslIrCommand(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "tag":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->responseParser:Lcom/fsck/k9/mail/store/imap/ImapResponseParser;

    const-string v4, "AUTHENTICATE XOAUTH2"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/fsck/k9/mail/store/imap/ImapConnection$1;

    invoke-direct {v6, p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection$1;-><init>(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/store/imap/UntaggedHandler;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private authCramMD5()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 443
    const-string v2, "AUTHENTICATE CRAM-MD5"

    .line 444
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {p0, v2, v8}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, "tag":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->readContinuationResponse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v4

    .line 447
    .local v4, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v4, v8}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_1

    .line 448
    :cond_0
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Invalid Cram-MD5 nonce received"

    invoke-direct {v6, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 451
    :cond_1
    invoke-virtual {v4, v8}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 452
    .local v1, "b64Nonce":[B
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v6}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getUsername()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v7}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/fsck/k9/mail/Authentication;->computeCramMd5Bytes(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 454
    .local v0, "b64CRAM":[B
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 455
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 456
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 457
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 460
    :try_start_0
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->responseParser:Lcom/fsck/k9/mail/store/imap/ImapResponseParser;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v2, v7, v8}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/store/imap/UntaggedHandler;)Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 461
    :catch_0
    move-exception v3

    .line 462
    .local v3, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->handleAuthenticationFailure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v6

    throw v6
.end method

.method private authXoauth2withSASLIR()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
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
    .line 379
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->retryXoauth2WithNewToken:Z

    .line 381
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->attemptXOAuth2()Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 389
    :goto_0
    return-object v1

    .line 382
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v2}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;->invalidateToken(Ljava/lang/String;)V

    .line 386
    iget-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->retryXoauth2WithNewToken:Z

    if-nez v1, :cond_0

    .line 387
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->handlePermanentXoauth2Failure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lcom/fsck/k9/mail/AuthenticationFailedException;

    move-result-object v1

    throw v1

    .line 389
    :cond_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->handleTemporaryXoauth2Failure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private authenticate()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    sget-object v0, Lcom/fsck/k9/mail/store/imap/ImapConnection$2;->$SwitchMap$com$fsck$k9$mail$AuthType:[I

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getAuthType()Lcom/fsck/k9/mail/AuthType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/AuthType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 373
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Unhandled authentication method found in the server settings (bug)."

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "No OAuthToken Provider available."

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    const-string v0, "AUTH=XOAUTH2"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SASL-IR"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->authXoauth2withSASLIR()Ljava/util/List;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    .line 345
    :cond_1
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Server doesn\'t support SASL XOAUTH2."

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_1
    const-string v0, "AUTH=CRAM-MD5"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->authCramMD5()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_2
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Server doesn\'t support encrypted passwords using CRAM-MD5."

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :pswitch_2
    const-string v0, "AUTH=PLAIN"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->saslAuthPlainWithLoginFallback()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_3
    const-string v0, "LOGINDISABLED"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 358
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->login()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_4
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Server doesn\'t support unencrypted passwords using AUTH=PLAIN and LOGIN is disabled."

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :pswitch_3
    const-string v0, "AUTH=EXTERNAL"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->saslAuthExternal()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 369
    :cond_5
    new-instance v0, Lcom/fsck/k9/mail/CertificateValidationException;

    sget-object v1, Lcom/fsck/k9/mail/CertificateValidationException$Reason;->MissingCapability:Lcom/fsck/k9/mail/CertificateValidationException$Reason;

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Lcom/fsck/k9/mail/CertificateValidationException$Reason;)V

    throw v0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private configureSocket()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    iget v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socketReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 233
    return-void
.end method

.method private connect()Ljava/net/Socket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "connectException":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v4}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 194
    .local v3, "inetAddresses":[Ljava/net/InetAddress;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v3, v4

    .line 196
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->connectToAddress(Ljava/net/InetAddress;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "Could not connect to %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v5

    invoke-static {v2, v7, v8}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    move-object v1, v2

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "Cannot connect to host"

    invoke-direct {v4, v5, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private connectToAddress(Ljava/net/InetAddress;)Ljava/net/Socket;
    .locals 8
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v5}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "host":Ljava/lang/String;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v5}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getPort()I

    move-result v2

    .line 211
    .local v2, "port":I
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v5}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "clientCertificateAlias":Ljava/lang/String;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v5, :cond_0

    .line 214
    const-string v5, "Connecting to %s as %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_0
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 220
    .local v4, "socketAddress":Ljava/net/SocketAddress;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v5}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getConnectionSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v5

    sget-object v6, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-ne v5, v6, :cond_1

    .line 221
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v1, v2, v0}, Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    .line 226
    .local v3, "socket":Ljava/net/Socket;
    :goto_0
    iget v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socketConnectTimeout:I

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 228
    return-object v3

    .line 223
    .end local v3    # "socket":Ljava/net/Socket;
    :cond_1
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .restart local v3    # "socket":Ljava/net/Socket;
    goto :goto_0
.end method

.method private enableCompression()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 582
    :try_start_0
    const-string v3, "COMPRESS DEFLATE"

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :try_start_1
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v3, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 590
    .local v1, "input":Ljava/util/zip/InflaterInputStream;
    new-instance v2, Lcom/jcraft/jzlib/ZOutputStream;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/jcraft/jzlib/ZOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 591
    .local v2, "output":Lcom/jcraft/jzlib/ZOutputStream;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jcraft/jzlib/ZOutputStream;->setFlushMode(I)V

    .line 593
    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->setUpStreamsAndParser(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 595
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    const-string v3, "Compression enabled for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 602
    .end local v1    # "input":Ljava/util/zip/InflaterInputStream;
    .end local v2    # "output":Lcom/jcraft/jzlib/ZOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    const-string v3, "Unable to negotiate compression: "

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 598
    .end local v0    # "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    :catch_1
    move-exception v0

    .line 599
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 600
    const-string v3, "Error enabling compression"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private enableCompressionIfRequested()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 554
    const-string v0, "COMPRESS=DEFLATE"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->shouldEnableCompression()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->enableCompression()V

    .line 557
    :cond_0
    return-void
.end method

.method private extractCapabilities(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-static {p1}, Lcom/fsck/k9/mail/store/imap/CapabilityResponse;->parse(Ljava/util/List;)Lcom/fsck/k9/mail/store/imap/CapabilityResponse;

    move-result-object v0

    .line 255
    .local v0, "capabilityResponse":Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/CapabilityResponse;->getCapabilities()Ljava/util/Set;

    move-result-object v1

    .line 257
    .local v1, "receivedCapabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const-string v2, "Saving %s capabilities for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_0
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->capabilities:Ljava/util/Set;

    .line 262
    .end local v1    # "receivedCapabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-object p1
.end method

.method private extractOrRequestCapabilities(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
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
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 267
    invoke-static {p1}, Lcom/fsck/k9/mail/store/imap/CapabilityResponse;->parse(Ljava/util/List;)Lcom/fsck/k9/mail/store/imap/CapabilityResponse;

    move-result-object v0

    .line 268
    .local v0, "capabilityResponse":Lcom/fsck/k9/mail/store/imap/CapabilityResponse;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/CapabilityResponse;->getCapabilities()Ljava/util/Set;

    move-result-object v1

    .line 270
    .local v1, "receivedCapabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "Saving %s capabilities for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->capabilities:Ljava/util/Set;

    .line 277
    .end local v1    # "receivedCapabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .line 273
    :cond_0
    const-string v2, "Did not get capabilities in post-auth banner, requesting CAPABILITY for %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->requestCapabilities()V

    goto :goto_0
.end method

.method private handleAuthenticationFailure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lcom/fsck/k9/mail/MessagingException;
    .locals 4
    .param p1, "e"    # Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;

    .prologue
    .line 537
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->getLastResponse()Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 538
    .local v0, "lastResponse":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ResponseCodeExtractor;->getResponseCode(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "responseCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "AUTHENTICATIONFAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->wasByeResponseReceived()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 546
    :cond_1
    new-instance v2, Lcom/fsck/k9/mail/AuthenticationFailedException;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    .line 549
    .end local p1    # "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    :goto_0
    return-object p1

    .line 548
    .restart local p1    # "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    goto :goto_0
.end method

.method private handleConnectException(Ljava/net/ConnectException;)V
    .locals 7
    .param p1, "e"    # Ljava/net/ConnectException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 160
    invoke-virtual {p1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "message":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v6, :cond_0

    aget-object v2, v1, v6

    if-eqz v2, :cond_0

    .line 164
    const-string v2, "Stripping host/port from ConnectionException for %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    new-instance v2, Ljava/net/ConnectException;

    aget-object v3, v1, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    throw p1
.end method

.method private handleNamespace()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 623
    const-string v4, "NAMESPACE"

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 625
    .local v3, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-static {v3}, Lcom/fsck/k9/mail/store/imap/NamespaceResponse;->parse(Ljava/util/List;)Lcom/fsck/k9/mail/store/imap/NamespaceResponse;

    move-result-object v1

    .line 626
    .local v1, "namespaceResponse":Lcom/fsck/k9/mail/store/imap/NamespaceResponse;
    if-eqz v1, :cond_0

    .line 627
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/NamespaceResponse;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/NamespaceResponse;->getHierarchyDelimiter()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "hierarchyDelimiter":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v4, v2}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->setPathPrefix(Ljava/lang/String;)V

    .line 631
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v4, v0}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->setPathDelimiter(Ljava/lang/String;)V

    .line 632
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->setCombinedPrefix(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    const-string v4, "Got path \'%s\' and separator \'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    .end local v0    # "hierarchyDelimiter":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handlePermanentXoauth2Failure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lcom/fsck/k9/mail/AuthenticationFailedException;
    .locals 2
    .param p1, "e"    # Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;

    .prologue
    .line 395
    const-string v0, "Permanent failure during XOAUTH2"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    new-instance v0, Lcom/fsck/k9/mail/AuthenticationFailedException;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private handleSslException(Ljavax/net/ssl/SSLException;)V
    .locals 2
    .param p1, "e"    # Ljavax/net/ssl/SSLException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/CertificateValidationException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Ljavax/net/ssl/SSLException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 155
    :cond_0
    throw p1
.end method

.method private handleTemporaryXoauth2Failure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Ljava/util/List;
    .locals 4
    .param p1, "e"    # Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
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
    const/4 v3, 0x0

    .line 405
    const-string v1, "Temporary failure - retrying with new token"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->attemptXOAuth2()Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 408
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e2":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    const-string v1, "Authentication exception for new token, permanent error assumed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v2}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;->invalidateToken(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->handlePermanentXoauth2Failure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lcom/fsck/k9/mail/AuthenticationFailedException;

    move-result-object v1

    throw v1
.end method

.method private handleXOAuthUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isString(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/oauth/XOAuth2ChallengeParser;->shouldRetry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->retryXoauth2WithNewToken:Z

    .line 436
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isContinuationRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 438
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 440
    :cond_1
    return-void
.end method

.method private isListResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Z
    .locals 7
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 671
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    move v2, v3

    .line 672
    .local v2, "responseTooShort":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 679
    :goto_1
    return v4

    .end local v2    # "responseTooShort":Z
    :cond_0
    move v2, v4

    .line 671
    goto :goto_0

    .line 676
    .restart local v2    # "responseTooShort":Z
    :cond_1
    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "LIST"

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    .line 677
    .local v1, "isListResponse":Z
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v0, v5, Ljava/lang/String;

    .line 679
    .local v0, "hierarchyDelimiterValid":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    move v4, v3

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private login()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
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
    .line 507
    const-string v6, "[\\\\\"]"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 508
    .local v2, "p":Ljava/util/regex/Pattern;
    const-string v4, "\\\\$0"

    .line 509
    .local v4, "replacement":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v6}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, "username":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v6}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, "password":Ljava/lang/String;
    :try_start_0
    const-string v6, "LOGIN \"%s\" \"%s\""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "command":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 515
    .end local v0    # "command":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->handleAuthenticationFailure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v6

    throw v6
.end method

.method private readContinuationResponse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->readResponse()Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 837
    .local v0, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "responseTag":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 839
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 840
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command continuation aborted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 842
    :cond_1
    const-string v2, "After sending tag %s, got tag response from previous command %s for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    .line 843
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 842
    invoke-static {v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 846
    :cond_2
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isContinuationRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    return-object v0
.end method

.method private readInitialResponse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->responseParser:Lcom/fsck/k9/mail/store/imap/ImapResponseParser;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readResponse()Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 247
    .local v0, "initialResponse":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "%s <<< %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->extractCapabilities(Ljava/util/List;)Ljava/util/List;

    .line 251
    return-void
.end method

.method private requestCapabilities()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 291
    const-string v1, "CAPABILITY"

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->extractCapabilities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 292
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 293
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "Invalid CAPABILITY response received"

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    return-void
.end method

.method private requestCapabilitiesIfNecessary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->capabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const-string v0, "Did not get capabilities in banner, requesting CAPABILITY for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->requestCapabilities()V

    goto :goto_0
.end method

.method private retrievePathDelimiter()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 649
    :try_start_0
    const-string v4, "LIST \"\" \"\""

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 655
    .local v2, "listResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 656
    .local v3, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->isListResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 657
    invoke-virtual {v3, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "hierarchyDelimiter":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v4, v1}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->setPathDelimiter(Ljava/lang/String;)V

    .line 659
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->setCombinedPrefix(Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 662
    const-string v4, "Got path delimiter \'%s\' for %s"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v6}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getPathDelimiter()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    .end local v1    # "hierarchyDelimiter":Ljava/lang/String;
    .end local v2    # "listResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    .end local v3    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_1
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    const-string v4, "Error getting path delimiter using LIST command"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private retrievePathDelimiterIfNecessary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v0}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getPathDelimiter()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->retrievePathDelimiter()V

    .line 644
    :cond_0
    return-void
.end method

.method private retrievePathPrefixIfNecessary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v0}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getPathPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 609
    :cond_0
    const-string v0, "NAMESPACE"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    const-string v0, "pathPrefix is unset and server has NAMESPACE capability"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->handleNamespace()V

    goto :goto_0

    .line 615
    :cond_2
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    const-string v0, "pathPrefix is unset but server does not have NAMESPACE capability"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->setPathPrefix(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saslAuthExternal()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
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
    .line 522
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTHENTICATE EXTERNAL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v3}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "command":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 524
    .end local v0    # "command":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    new-instance v2, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private saslAuthPlain()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
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
    .line 479
    const-string v0, "AUTHENTICATE PLAIN"

    .line 480
    .local v0, "command":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, "tag":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->readContinuationResponse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v6}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u0000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v6}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "credentials":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([B)[B

    move-result-object v3

    .line 487
    .local v3, "encodedCredentials":[B
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5, v3}, Ljava/io/OutputStream;->write([B)V

    .line 488
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V

    .line 489
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V

    .line 490
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 493
    :try_start_0
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->responseParser:Lcom/fsck/k9/mail/store/imap/ImapResponseParser;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v0, v6, v7}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/store/imap/UntaggedHandler;)Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->handleAuthenticationFailure(Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v5

    throw v5
.end method

.method private saslAuthPlainWithLoginFallback()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
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
    .line 468
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->saslAuthPlain()Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 474
    :goto_0
    return-object v1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Lcom/fsck/k9/mail/AuthenticationFailedException;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    throw v0

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->login()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private setUpStreamsAndParser(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    const/16 v2, 0x400

    .line 240
    new-instance v0, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 241
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;-><init>(Lcom/fsck/k9/mail/filter/PeekableInputStream;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->responseParser:Lcom/fsck/k9/mail/store/imap/ImapResponseParser;

    .line 242
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    .line 243
    return-void
.end method

.method private setUpStreamsAndParserFromSocket()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->setUpStreamsAndParser(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 237
    return-void
.end method

.method private shouldEnableCompression()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 560
    const/4 v3, 0x1

    .line 562
    .local v3, "useCompression":Z
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 563
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 565
    .local v2, "type":I
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    const-string v4, "On network type %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    :cond_0
    invoke-static {v2}, Lcom/fsck/k9/mail/NetworkType;->fromConnectivityManagerType(I)Lcom/fsck/k9/mail/NetworkType;

    move-result-object v1

    .line 570
    .local v1, "networkType":Lcom/fsck/k9/mail/NetworkType;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v4, v1}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->useCompression(Lcom/fsck/k9/mail/NetworkType;)Z

    move-result v3

    .line 573
    .end local v1    # "networkType":Lcom/fsck/k9/mail/NetworkType;
    .end local v2    # "type":I
    :cond_1
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    const-string v4, "useCompression: %b"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    :cond_2
    return v3
.end method

.method private startTLS()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 319
    const-string v3, "STARTTLS"

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 321
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v3}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "host":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v3}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getPort()I

    move-result v2

    .line 323
    .local v2, "port":I
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v3}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "clientCertificateAlias":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    invoke-interface {v3, v4, v1, v2, v0}, Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    .line 326
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->configureSocket()V

    .line 327
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->setUpStreamsAndParserFromSocket()V

    .line 330
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    const-string v3, "Updating capabilities after STARTTLS for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->requestCapabilities()V

    .line 335
    return-void
.end method

.method private upgradeToTls()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 304
    const-string v0, "STARTTLS"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcom/fsck/k9/mail/CertificateValidationException;

    const-string v1, "STARTTLS connection security not available"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->startTLS()V

    .line 316
    return-void
.end method

.method private upgradeToTlsIfNecessary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/ImapSettings;

    invoke-interface {v0}, Lcom/fsck/k9/mail/store/imap/ImapSettings;->getConnectionSecurity()Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-ne v0, v1, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->upgradeToTls()V

    .line 301
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 695
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->open:Z

    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 699
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->open:Z

    .line 700
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->stacktraceForClose:Ljava/lang/Exception;

    .line 702
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 703
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 704
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 706
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 707
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    .line 708
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    goto :goto_0
.end method

.method public executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
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
    .line 720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
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
    .line 725
    move-object v0, p1

    .line 727
    .local v0, "commandToLog":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebugSensitive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 728
    const-string v0, "*sensitive*"

    .line 731
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "tag":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->responseParser:Lcom/fsck/k9/mail/store/imap/ImapResponseParser;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/store/imap/UntaggedHandler;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 735
    :catch_0
    move-exception v1

    .line 736
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 737
    throw v1
.end method

.method protected getLogId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected hasCapability(Ljava/lang/String;)Z
    .locals 2
    .param p1, "capability"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->capabilities:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->inputStream:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    .line 173
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isIdleCapable()Z
    .locals 4

    .prologue
    .line 687
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    const-string v0, "Connection %s has %d capabilities"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->capabilities:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->capabilities:Ljava/util/Set;

    const-string v1, "IDLE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public open()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 104
    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->open:Z

    if-eqz v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->stacktraceForClose:Ljava/lang/Exception;

    if-eqz v3, :cond_2

    .line 107
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "open() called after close(). Check wrapped exception to see where close() was called."

    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->stacktraceForClose:Ljava/lang/Exception;

    invoke-direct {v3, v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 111
    :cond_2
    iput-boolean v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->open:Z

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "authSuccess":Z
    iput v5, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->nextCommandTag:I

    .line 115
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->adjustDNSCacheTTL()V

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->connect()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    .line 119
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->configureSocket()V

    .line 120
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->setUpStreamsAndParserFromSocket()V

    .line 122
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->readInitialResponse()V

    .line 123
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->requestCapabilitiesIfNecessary()V

    .line 125
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->upgradeToTlsIfNecessary()V

    .line 127
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->authenticate()Ljava/util/List;

    move-result-object v2

    .line 128
    .local v2, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->extractOrRequestCapabilities(Ljava/util/List;)Ljava/util/List;

    .line 132
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->enableCompressionIfRequested()V

    .line 134
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->retrievePathPrefixIfNecessary()V

    .line 135
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->retrievePathDelimiterIfNecessary()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-nez v0, :cond_0

    .line 145
    const-string v3, "Failed to login, closing connection for %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    goto :goto_0

    .line 137
    .end local v2    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljavax/net/ssl/SSLException;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->handleSslException(Ljavax/net/ssl/SSLException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    if-nez v0, :cond_0

    .line 145
    const-string v3, "Failed to login, closing connection for %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e":Ljava/net/ConnectException;
    :try_start_2
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->handleConnectException(Ljava/net/ConnectException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    if-nez v0, :cond_0

    .line 145
    const-string v3, "Failed to login, closing connection for %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    goto :goto_0

    .line 141
    .end local v1    # "e":Ljava/net/ConnectException;
    :catch_2
    move-exception v1

    .line 142
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Unable to open connection to IMAP server due to security error."

    invoke-direct {v3, v4, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v3

    if-nez v0, :cond_3

    .line 145
    const-string v4, "Failed to login, closing connection for %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    :cond_3
    throw v3
.end method

.method public readResponse()Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 807
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 6
    .param p1, "callback"    # Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->responseParser:Lcom/fsck/k9/mail/store/imap/ImapResponseParser;

    invoke-virtual {v2, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 814
    .local v1, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v2, :cond_0

    .line 815
    const-string v2, "%s<<<%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :cond_0
    return-object v1

    .line 819
    .end local v1    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 821
    throw v0
.end method

.method public readStatusResponse(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/store/imap/UntaggedHandler;)Ljava/util/List;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "commandToLog"    # Ljava/lang/String;
    .param p3, "untaggedHandler"    # Lcom/fsck/k9/mail/store/imap/UntaggedHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/imap/UntaggedHandler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
        }
    .end annotation

    .prologue
    .line 743
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->responseParser:Lcom/fsck/k9/mail/store/imap/ImapResponseParser;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/store/imap/UntaggedHandler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->open()V

    .line 775
    iget v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->nextCommandTag:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->nextCommandTag:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "tag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "commandToSend":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 778
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 780
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v3, :cond_0

    .line 781
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebugSensitive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 782
    const-string v3, "%s>>> [Command Hidden, Enable Sensitive Debug Logging To Show]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    :cond_0
    :goto_0
    return-object v2

    .line 784
    :cond_1
    const-string v3, "%s>>> %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 789
    .end local v0    # "commandToSend":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 790
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 791
    throw v1

    .line 789
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public sendContinuation(Ljava/lang/String;)V
    .locals 4
    .param p1, "continuation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 797
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 798
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 799
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 801
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v0, :cond_0

    .line 802
    const-string v0, "%s>>> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    :cond_0
    return-void
.end method

.method public sendSaslIrCommand(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "initialClientResponse"    # Ljava/lang/String;
    .param p3, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 749
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->open()V

    .line 751
    iget v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->nextCommandTag:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->nextCommandTag:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, "tag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "commandToSend":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 754
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 756
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v3, :cond_0

    .line 757
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebugSensitive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 758
    const-string v3, "%s>>> [Command Hidden, Enable Sensitive Debug Logging To Show]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    :cond_0
    :goto_0
    return-object v2

    .line 760
    :cond_1
    const-string v3, "%s>>> %s %s %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 765
    .end local v0    # "commandToSend":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 766
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 767
    throw v1

    .line 765
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected setReadTimeout(I)V
    .locals 1
    .param p1, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection;->socket:Ljava/net/Socket;

    .line 827
    .local v0, "sock":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 830
    :cond_0
    return-void
.end method

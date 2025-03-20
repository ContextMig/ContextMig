.class public Lcom/fsck/k9/mail/store/webdav/WebDavStore;
.super Lcom/fsck/k9/mail/store/RemoteStore;
.source "WebDavStore.java"


# instance fields
.field private alias:Ljava/lang/String;

.field private authCookies:Lorg/apache/http/client/CookieStore;

.field private authString:Ljava/lang/String;

.field private authenticationType:S

.field private baseUrl:Ljava/lang/String;

.field private cachedLoginUrl:Ljava/lang/String;

.field private folderList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/webdav/WebDavFolder;",
            ">;"
        }
    .end annotation
.end field

.field private formBasedAuthPath:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private httpClient:Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

.field private final httpClientFactory:Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;

.field private httpContext:Lorg/apache/http/protocol/HttpContext;

.field private mConnectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

.field private mailboxPath:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field private sendFolder:Lcom/fsck/k9/mail/Folder;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;)V
    .locals 5
    .param p1, "storeConfig"    # Lcom/fsck/k9/mail/store/StoreConfig;
    .param p2, "clientFactory"    # Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-direct {p0, p1, v3}, Lcom/fsck/k9/mail/store/RemoteStore;-><init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;)V

    .line 84
    iput-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpClient:Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    .line 85
    iput-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 87
    iput-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authCookies:Lorg/apache/http/client/CookieStore;

    .line 88
    const/4 v2, 0x0

    iput-short v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S

    .line 91
    iput-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->sendFolder:Lcom/fsck/k9/mail/Folder;

    .line 92
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->folderList:Ljava/util/Map;

    .line 97
    iput-object p2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpClientFactory:Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;

    .line 101
    :try_start_0
    invoke-interface {p1}, Lcom/fsck/k9/mail/store/StoreConfig;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->decodeUri(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    .local v1, "settings":Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;
    iget-object v2, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->host:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->hostname:Ljava/lang/String;

    .line 107
    iget v2, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->port:I

    iput v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->port:I

    .line 109
    iget-object v2, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mConnectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 111
    iget-object v2, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->username:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->username:Ljava/lang/String;

    .line 112
    iget-object v2, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->password:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->password:Ljava/lang/String;

    .line 113
    iget-object v2, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->alias:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->alias:Ljava/lang/String;

    .line 115
    iget-object v2, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->path:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->path:Ljava/lang/String;

    .line 116
    iget-object v2, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->authPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->formBasedAuthPath:Ljava/lang/String;

    .line 117
    iget-object v2, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;->mailboxPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mailboxPath:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->path:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 121
    :cond_0
    const-string v2, "/Exchange"

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->path:Ljava/lang/String;

    .line 126
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mailboxPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mailboxPath:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 127
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mailboxPath:Ljava/lang/String;

    .line 132
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->formBasedAuthPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->formBasedAuthPath:Ljava/lang/String;

    const-string v3, ""

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->formBasedAuthPath:Ljava/lang/String;

    const-string v3, "/"

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->formBasedAuthPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->formBasedAuthPath:Ljava/lang/String;

    .line 140
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getRoot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mailboxPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->baseUrl:Ljava/lang/String;

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authString:Ljava/lang/String;

    .line 143
    return-void

    .line 102
    .end local v1    # "settings":Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Error while decoding store URI"

    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 122
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "settings":Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;
    :cond_5
    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->path:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->path:Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    :cond_6
    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mailboxPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mailboxPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mailboxPath:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private authenticate()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 495
    :try_start_0
    iget-short v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S

    if-nez v8, :cond_4

    .line 496
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->doInitialConnection()Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;

    move-result-object v1

    .line 498
    .local v1, "info":Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    iget-short v8, v1, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->requiredAuthType:S

    if-ne v8, v6, :cond_3

    .line 499
    new-instance v3, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->baseUrl:Ljava/lang/String;

    invoke-direct {v3, v8}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;-><init>(Ljava/lang/String;)V

    .line 500
    .local v3, "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    const-string v8, "GET"

    invoke-virtual {v3, v8}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 501
    const-string v8, "Authorization"

    iget-object v9, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authString:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    move-result-object v0

    .line 504
    .local v0, "httpClient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v3, v8}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 506
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 507
    .local v5, "statusCode":I
    const/16 v8, 0xc8

    if-lt v5, v8, :cond_1

    const/16 v8, 0x12c

    if-ge v5, v8, :cond_1

    .line 508
    const/4 v8, 0x1

    iput-short v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v0    # "httpClient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    .end local v1    # "info":Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    .end local v3    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "statusCode":I
    :cond_0
    :goto_0
    iget-short v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S

    if-eqz v8, :cond_5

    :goto_1
    return v6

    .line 509
    .restart local v0    # "httpClient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    .restart local v1    # "info":Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    .restart local v3    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "statusCode":I
    :cond_1
    const/16 v6, 0x191

    if-ne v5, v6, :cond_2

    .line 510
    :try_start_1
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "Invalid username or password for authentication."

    invoke-direct {v6, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 525
    .end local v0    # "httpClient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    .end local v1    # "info":Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    .end local v3    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "statusCode":I
    :catch_0
    move-exception v2

    .line 526
    .local v2, "ioe":Ljava/io/IOException;
    const-string v6, "Error during authentication"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Error during authentication"

    invoke-direct {v6, v7, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 512
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "httpClient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    .restart local v1    # "info":Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    .restart local v3    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "statusCode":I
    :cond_2
    :try_start_2
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error with code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " during request processing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 513
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 515
    .end local v0    # "httpClient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    .end local v3    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "statusCode":I
    :cond_3
    iget-short v8, v1, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->requiredAuthType:S

    if-ne v8, v9, :cond_0

    .line 516
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->performFormBasedAuthentication(Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;)V

    goto :goto_0

    .line 518
    .end local v1    # "info":Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    :cond_4
    iget-short v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S

    if-eq v8, v6, :cond_0

    .line 521
    iget-short v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S

    if-ne v8, v9, :cond_0

    .line 523
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->performFormBasedAuthentication(Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_5
    move v6, v7

    .line 530
    goto :goto_1
.end method

.method private createFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    .locals 2
    .param p1, "folderUrl"    # Ljava/lang/String;

    .prologue
    .line 252
    if-nez p1, :cond_1

    .line 253
    const/4 v1, 0x0

    .line 266
    :cond_0
    :goto_0
    return-object v1

    .line 256
    :cond_1
    const/4 v1, 0x0

    .line 257
    .local v1, "wdFolder":Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "folderName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "server"    # Lcom/fsck/k9/mail/ServerSettings;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStoreUriCreator;->create(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeUri(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStoreUriDecoder;->decode(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;

    move-result-object v0

    return-object v0
.end method

.method private doInitialConnection()Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x12c

    .line 545
    new-instance v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;

    invoke-direct {v2}, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;-><init>()V

    .line 547
    .local v2, "info":Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    move-result-object v1

    .line 549
    .local v1, "httpClient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    new-instance v5, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;

    iget-object v7, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->baseUrl:Ljava/lang/String;

    invoke-direct {v5, v7}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;-><init>(Ljava/lang/String;)V

    .line 550
    .local v5, "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    const-string v7, "GET"

    invoke-virtual {v5, v7}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 553
    :try_start_0
    iget-object v7, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v5, v7}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 554
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    iput v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    .line 556
    iget v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    const/16 v8, 0x191

    if-ne v7, v8, :cond_1

    .line 559
    const/4 v7, 0x1

    iput-short v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->requiredAuthType:S

    .line 594
    :cond_0
    :goto_0
    return-object v2

    .line 560
    :cond_1
    iget v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    const/16 v8, 0xc8

    if-lt v7, v8, :cond_2

    iget v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    if-lt v7, v9, :cond_4

    :cond_2
    iget v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    if-lt v7, v9, :cond_3

    iget v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    const/16 v8, 0x190

    if-lt v7, v8, :cond_4

    :cond_3
    iget v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    const/16 v8, 0x1b8

    if-ne v7, v8, :cond_6

    .line 568
    :cond_4
    const/4 v7, 0x2

    iput-short v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->requiredAuthType:S

    .line 570
    iget-object v7, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->formBasedAuthPath:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->formBasedAuthPath:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 572
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getRoot()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->formBasedAuthPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->guessedAuthUrl:Ljava/lang/String;

    .line 579
    :goto_1
    const-string v7, "Location"

    invoke-interface {v6, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 580
    .local v4, "location":Lorg/apache/http/Header;
    if-eqz v4, :cond_0

    .line 581
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->redirectUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 587
    .end local v4    # "location":Lorg/apache/http/Header;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v7, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 575
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getRoot()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/exchweb/bin/auth/owaauth.dll"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->guessedAuthUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 589
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v3

    .line 590
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "IOException during initial connection"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    new-instance v7, Lcom/fsck/k9/mail/MessagingException;

    const-string v8, "IOException"

    invoke-direct {v7, v8, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 584
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    :try_start_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error with code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " during request processing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 585
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private findFormAction(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 11
    .param p1, "istream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 707
    const/4 v2, 0x0

    .line 709
    .local v2, "formAction":Ljava/lang/String;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x1000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 714
    .local v5, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 715
    .local v6, "tempText":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 716
    const-string v7, " action="

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 717
    const-string v7, " action="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "actionParts":[Ljava/lang/String;
    array-length v7, v0

    if-le v7, v9, :cond_0

    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_0

    .line 719
    aget-object v7, v0, v9

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 720
    .local v3, "openQuote":C
    aget-object v7, v0, v9

    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 721
    .local v1, "closePos":I
    if-le v1, v9, :cond_0

    .line 722
    aget-object v7, v0, v9

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 724
    const/16 v7, 0x3f

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 725
    .local v4, "quesPos":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 726
    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 731
    .end local v0    # "actionParts":[Ljava/lang/String;
    .end local v1    # "closePos":I
    .end local v3    # "openQuote":C
    .end local v4    # "quesPos":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 734
    :cond_1
    return-object v2
.end method

.method private getFolderListXml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\'1.0\' ?><a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\nSELECT \"DAV:uid\", \"DAV:ishidden\"\r\n FROM SCOPE(\'deep traversal of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\')\r\n WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=True\r\n</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "folderUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x2f

    .line 270
    if-nez p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object v3

    .line 277
    :cond_1
    const/4 v0, -0x1

    .line 278
    .local v0, "folderSlash":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    .line 279
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 280
    if-gez v0, :cond_3

    .line 285
    :cond_2
    if-lez v0, :cond_0

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    .line 290
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "fullPathName":Ljava/lang/String;
    :goto_2
    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 278
    .end local v1    # "fullPathName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    :cond_4
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fullPathName":Ljava/lang/String;
    goto :goto_2
.end method

.method private getRoot()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mConnectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    sget-object v2, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-ne v1, v2, :cond_0

    .line 148
    const-string v0, "https"

    .line 152
    .local v0, "root":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0

    .line 150
    .end local v0    # "root":Ljava/lang/String;
    :cond_0
    const-string v0, "http"

    .restart local v0    # "root":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSendSpoolFolder()Lcom/fsck/k9/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->sendFolder:Lcom/fsck/k9/mail/Folder;

    if-nez v0, :cond_0

    .line 317
    const-string v0, "##DavMailSubmissionURI##"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->sendFolder:Lcom/fsck/k9/mail/Folder;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->sendFolder:Lcom/fsck/k9/mail/Folder;

    return-object v0
.end method

.method private getSpecialFoldersList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"no\"?><propfind xmlns=\"DAV:\"><prop><inbox xmlns=\"urn:schemas:httpmail:\"/><drafts xmlns=\"urn:schemas:httpmail:\"/><outbox xmlns=\"urn:schemas:httpmail:\"/><sentitems xmlns=\"urn:schemas:httpmail:\"/><deleteditems xmlns=\"urn:schemas:httpmail:\"/><junkemail xmlns=\"urn:schemas:httpmail:\"/></prop></propfind>"

    return-object v0
.end method

.method private handleUnexpectedRedirect(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 897
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected redirect during request processing. Expected response from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but told to redirect to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Location"

    .line 901
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected redirect during request processing. Expected response from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but not told where to redirect to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performFormBasedAuthentication(Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;)V
    .locals 23
    .param p1, "info"    # Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authCookies:Lorg/apache/http/client/CookieStore;

    if-eqz v3, :cond_0

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authCookies:Lorg/apache/http/client/CookieStore;

    invoke-interface {v3}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 604
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    move-result-object v15

    .line 607
    .local v15, "httpClient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    if-eqz p1, :cond_2

    .line 608
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->guessedAuthUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 615
    .local v18, "loginUrl":Ljava/lang/String;
    :goto_0
    new-instance v20, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;-><init>(Ljava/lang/String;)V

    .line 616
    .local v20, "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    const-string v3, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 619
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v19, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "destination"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->baseUrl:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "username"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->username:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "password"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->password:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "flags"

    const-string v5, "0"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "SubmitCreds"

    const-string v5, "Log+On"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "forcedownlevel"

    const-string v5, "0"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "trusted"

    const-string v5, "0"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 629
    .local v14, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v3}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 632
    .local v22, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->testAuthenticationResponse(Lorg/apache/http/HttpResponse;)Z

    move-result v10

    .line 633
    .local v10, "authenticated":Z
    if-nez v10, :cond_1

    .line 635
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->findFormAction(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 636
    .local v12, "formAction":Ljava/lang/String;
    if-nez v12, :cond_9

    .line 638
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->redirectUrl:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->redirectUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 639
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->redirectUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 641
    new-instance v20, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;

    .end local v20    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;-><init>(Ljava/lang/String;)V

    .line 642
    .restart local v20    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    const-string v3, "GET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v3}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 645
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->findFormAction(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v20

    .line 648
    .end local v20    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .local v21, "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    :goto_1
    if-eqz v12, :cond_7

    .line 650
    :try_start_0
    new-instance v13, Ljava/net/URI;

    invoke-direct {v13, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 651
    .local v13, "formActionUri":Ljava/net/URI;
    new-instance v17, Ljava/net/URI;

    invoke-direct/range {v17 .. v18}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 653
    .local v17, "loginUri":Ljava/net/URI;
    invoke-virtual {v13}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 655
    move-object/from16 v18, v12

    .line 682
    :goto_2
    new-instance v20, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v21    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .restart local v20    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    :try_start_1
    const-string v3, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v3}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 687
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->testAuthenticationResponse(Lorg/apache/http/HttpResponse;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 697
    .end local v12    # "formAction":Ljava/lang/String;
    .end local v13    # "formActionUri":Ljava/net/URI;
    .end local v17    # "loginUri":Ljava/net/URI;
    :cond_1
    if-eqz v10, :cond_8

    .line 698
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput-short v3, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S

    .line 699
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->cachedLoginUrl:Ljava/lang/String;

    .line 703
    return-void

    .line 609
    .end local v10    # "authenticated":Z
    .end local v14    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v18    # "loginUrl":Ljava/lang/String;
    .end local v19    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v20    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->cachedLoginUrl:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->cachedLoginUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->cachedLoginUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .restart local v18    # "loginUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 612
    .end local v18    # "loginUrl":Ljava/lang/String;
    :cond_3
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "No valid login URL available for form-based authentication."

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 659
    .restart local v10    # "authenticated":Z
    .restart local v12    # "formAction":Ljava/lang/String;
    .restart local v13    # "formActionUri":Ljava/net/URI;
    .restart local v14    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v17    # "loginUri":Ljava/net/URI;
    .restart local v18    # "loginUrl":Ljava/lang/String;
    .restart local v19    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v21    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_2
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 660
    move-object v7, v12

    .line 671
    .local v7, "urlPath":Ljava/lang/String;
    :cond_5
    :goto_3
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 672
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 673
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 674
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .local v2, "finalUri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 662
    .end local v2    # "finalUri":Ljava/net/URI;
    .end local v7    # "urlPath":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 663
    .restart local v7    # "urlPath":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v7, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 664
    .local v16, "lastPathPos":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-le v0, v3, :cond_5

    .line 665
    const/4 v3, 0x0

    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 666
    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    goto :goto_3

    .line 688
    .end local v7    # "urlPath":Ljava/lang/String;
    .end local v13    # "formActionUri":Ljava/net/URI;
    .end local v16    # "lastPathPos":I
    .end local v17    # "loginUri":Ljava/net/URI;
    :catch_0
    move-exception v11

    move-object/from16 v20, v21

    .line 689
    .end local v21    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .local v11, "e":Ljava/net/URISyntaxException;
    .restart local v20    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    :goto_4
    const-string v3, "URISyntaxException caught"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v11, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "URISyntaxException caught"

    invoke-direct {v3, v4, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 693
    .end local v11    # "e":Ljava/net/URISyntaxException;
    .end local v20    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .restart local v21    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    :cond_7
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "A valid URL for Exchange authentication could not be found."

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 701
    .end local v12    # "formAction":Ljava/lang/String;
    .end local v21    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .restart local v20    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    :cond_8
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Invalid credentials provided for authentication."

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 688
    .restart local v12    # "formAction":Ljava/lang/String;
    .restart local v13    # "formActionUri":Ljava/net/URI;
    .restart local v17    # "loginUri":Ljava/net/URI;
    :catch_1
    move-exception v11

    goto :goto_4

    .end local v13    # "formActionUri":Ljava/net/URI;
    .end local v17    # "loginUri":Ljava/net/URI;
    :cond_9
    move-object/from16 v21, v20

    .end local v20    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    .restart local v21    # "request":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    goto/16 :goto_1
.end method

.method private testAuthenticationResponse(Lorg/apache/http/HttpResponse;)Z
    .locals 13
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x12e

    const/16 v11, 0x12c

    const/16 v9, 0xc8

    const/4 v10, 0x0

    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "authenticated":Z
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 742
    .local v6, "statusCode":I
    if-lt v6, v9, :cond_0

    if-lt v6, v11, :cond_1

    :cond_0
    if-ne v6, v12, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authCookies:Lorg/apache/http/client/CookieStore;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authCookies:Lorg/apache/http/client/CookieStore;

    .line 743
    invoke-interface {v8}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 746
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->doInitialConnection()Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;

    move-result-object v3

    .line 747
    .local v3, "info":Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    iget v8, v3, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    if-lt v8, v9, :cond_3

    iget v8, v3, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    if-ge v8, v11, :cond_3

    .line 748
    const/4 v0, 0x1

    .line 785
    .end local v3    # "info":Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    :cond_2
    :goto_0
    return v0

    .line 749
    .restart local v3    # "info":Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;
    :cond_3
    iget v8, v3, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->statusCode:I

    if-ne v8, v12, :cond_2

    .line 756
    :try_start_0
    new-instance v8, Ljava/net/URI;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->baseUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 757
    .local v7, "thisPath":Ljava/lang/String;
    new-instance v8, Ljava/net/URI;

    iget-object v9, v3, Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;->redirectUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "redirectPath":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 760
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 762
    :cond_4
    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 763
    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 766
    :cond_5
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 767
    const/4 v0, 0x1

    goto :goto_0

    .line 769
    :cond_6
    const/16 v8, 0x2f

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 770
    .local v2, "found":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 771
    const/4 v8, 0x0

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, "replace":Ljava/lang/String;
    const-string v8, "/owa/"

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 773
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 774
    const/4 v0, 0x1

    goto :goto_0

    .line 778
    .end local v2    # "found":I
    .end local v4    # "redirectPath":Ljava/lang/String;
    .end local v5    # "replace":Ljava/lang/String;
    .end local v7    # "thisPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 779
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v8, "URISyntaxException"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    new-instance v8, Lcom/fsck/k9/mail/MessagingException;

    const-string v9, "URISyntaxException caught"

    invoke-direct {v8, v9, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method


# virtual methods
.method public checkSettings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticate()Z

    .line 171
    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCookies()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authCookies:Lorg/apache/http/client/CookieStore;

    return-object v0
.end method

.method public getAuthString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authString:Ljava/lang/String;

    return-object v0
.end method

.method getAuthentication()S
    .locals 1

    .prologue
    .line 161
    iget-short v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S

    return v0
.end method

.method public bridge synthetic getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    move-result-object v0

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->folderList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    .line 307
    .local v0, "folder":Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    .end local v0    # "folder":Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;-><init>(Lcom/fsck/k9/mail/store/webdav/WebDavStore;Ljava/lang/String;)V

    .line 309
    .restart local v0    # "folder":Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->folderList:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    return-object v0
.end method

.method public getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 801
    iget-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpClient:Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    if-nez v4, :cond_0

    .line 802
    iget-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpClientFactory:Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;->create()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpClient:Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    .line 804
    iget-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpClient:Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.protocol.handle-redirects"

    invoke-interface {v4, v5, v8}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 807
    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 808
    new-instance v4, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v4}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authCookies:Lorg/apache/http/client/CookieStore;

    .line 809
    iget-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v5, "http.cookie-store"

    iget-object v6, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authCookies:Lorg/apache/http/client/CookieStore;

    invoke-interface {v4, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 811
    iget-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpClient:Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 813
    .local v2, "reg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :try_start_0
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    new-instance v5, Lcom/fsck/k9/mail/store/webdav/WebDavSocketFactory;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->hostname:Ljava/lang/String;

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v7}, Lcom/fsck/k9/mail/store/webdav/WebDavSocketFactory;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 814
    .local v3, "s":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 823
    .end local v2    # "reg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3    # "s":Lorg/apache/http/conn/scheme/Scheme;
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpClient:Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    return-object v4

    .line 815
    .restart local v2    # "reg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_0
    move-exception v1

    .line 816
    .local v1, "nsa":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "NoSuchAlgorithmException in getHttpClient"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "NoSuchAlgorithmException in getHttpClient: "

    invoke-direct {v4, v5, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 818
    .end local v1    # "nsa":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 819
    .local v0, "kme":Ljava/security/KeyManagementException;
    const-string v4, "KeyManagementException in getHttpClient"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "KeyManagementException in getHttpClient: "

    invoke-direct {v4, v5, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method getMarkMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "urls"    # [Ljava/lang/String;
    .param p2, "read"    # Z

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x258

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 456
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v2, "<?xml version=\'1.0\' ?>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v2, "<a:propertyupdate xmlns:a=\'DAV:\' xmlns:b=\'urn:schemas:httpmail:\'>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v2, "<a:target>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 460
    .local v1, "url":Ljava/lang/String;
    const-string v4, " <a:href>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</a:href>\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    const-string v2, "</a:target>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v2, "<a:set>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v2, " <a:prop>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v2, "  <b:read>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b:read>\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v2, " </a:prop>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v2, "</a:set>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v2, "</a:propertyupdate>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 465
    :cond_1
    const-string v2, "0"

    goto :goto_1
.end method

.method getMessageCountXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "messageState"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\'1.0\' ?><a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\nSELECT \"DAV:visiblecount\"\r\n FROM \"\"\r\n WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND \"urn:schemas:httpmail:read\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n GROUP BY \"DAV:ishidden\"\r\n</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMessageEnvelopeXml([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uids"    # [Ljava/lang/String;

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 374
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v3, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v3, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v3, "SELECT \"DAV:uid\", \"DAV:getcontentlength\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v3, " \"urn:schemas:mailheader:mime-version\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v3, " \"urn:schemas:mailheader:content-type\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v3, " \"urn:schemas:mailheader:subject\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v3, " \"urn:schemas:mailheader:date\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v3, " \"urn:schemas:mailheader:thread-topic\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v3, " \"urn:schemas:mailheader:thread-index\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v3, " \"urn:schemas:mailheader:from\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v3, " \"urn:schemas:mailheader:to\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v3, " \"urn:schemas:mailheader:in-reply-to\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v3, " \"urn:schemas:mailheader:cc\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v3, " \"urn:schemas:httpmail:read\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v3, " \r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v3, " FROM \"\"\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v3, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 392
    if-eqz v2, :cond_0

    .line 393
    const-string v3, "  OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_0
    const-string v3, " \"DAV:uid\"=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v3, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method getMessageFlagsXml([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 432
    array-length v3, p1

    if-nez v3, :cond_0

    .line 433
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Attempt to get flags on 0 length array for uids"

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v3, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v3, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v3, "SELECT \"urn:schemas:httpmail:read\", \"DAV:uid\"\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v3, " FROM \"\"\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v3, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 444
    if-eqz v2, :cond_1

    .line 445
    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_1
    const-string v3, " \"DAV:uid\"=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    :cond_2
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v3, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method getMessageUrlsXml([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uids"    # [Ljava/lang/String;

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x258

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 413
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v3, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v3, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v3, "SELECT \"urn:schemas:httpmail:read\", \"DAV:uid\"\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v3, " FROM \"\"\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v3, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 419
    if-eqz v2, :cond_0

    .line 420
    const-string v3, "  OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_0
    const-string v3, " \"DAV:uid\"=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    :cond_1
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v3, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method getMessagesXml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    const-string v0, "<?xml version=\'1.0\' ?><a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\nSELECT \"DAV:uid\"\r\n FROM \"\"\r\n WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False\r\n</a:sql></a:searchrequest>\r\n"

    return-object v0
.end method

.method getMoveOrCopyMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "urls"    # [Ljava/lang/String;
    .param p2, "isMove"    # Z

    .prologue
    .line 478
    if-eqz p2, :cond_0

    const-string v0, "move"

    .line 479
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x258

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 480
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const-string v3, "<?xml version=\'1.0\' ?>\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v3, "<a:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xmlns:a=\'DAV:\' xmlns:b=\'urn:schemas:httpmail:\'>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v3, "<a:target>\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    array-length v4, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, p1, v3

    .line 484
    .local v2, "url":Ljava/lang/String;
    const-string v5, " <a:href>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</a:href>\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 478
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "copy"

    goto :goto_0

    .line 486
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    :cond_1
    const-string v3, "</a:target>\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v3, "</a:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getPersonalNamespaces(Z)Ljava/util/List;
    .locals 11
    .param p1, "forceListAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Folder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 179
    .local v2, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Folder;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    .line 185
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "Depth"

    const-string v9, "0"

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v8, "Brief"

    const-string v9, "t"

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->baseUrl:Ljava/lang/String;

    const-string v9, "PROPFIND"

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getSpecialFoldersList()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10, v5}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/mail/store/webdav/DataSet;

    move-result-object v0

    .line 190
    .local v0, "dataset":Lcom/fsck/k9/mail/store/webdav/DataSet;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/webdav/DataSet;->getSpecialFolderToUrl()Ljava/util/Map;

    move-result-object v6

    .line 191
    .local v6, "specialFoldersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "inbox"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "folderName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 193
    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v8, v3}, Lcom/fsck/k9/mail/store/StoreConfig;->setAutoExpandFolderName(Ljava/lang/String;)V

    .line 194
    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v8, v3}, Lcom/fsck/k9/mail/store/StoreConfig;->setInboxFolderName(Ljava/lang/String;)V

    .line 197
    :cond_0
    const-string v8, "drafts"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    if-eqz v3, :cond_1

    .line 199
    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v8, v3}, Lcom/fsck/k9/mail/store/StoreConfig;->setDraftsFolderName(Ljava/lang/String;)V

    .line 202
    :cond_1
    const-string v8, "deleteditems"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    if-eqz v3, :cond_2

    .line 204
    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v8, v3}, Lcom/fsck/k9/mail/store/StoreConfig;->setTrashFolderName(Ljava/lang/String;)V

    .line 207
    :cond_2
    const-string v8, "junkemail"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    if-eqz v3, :cond_3

    .line 209
    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v8, v3}, Lcom/fsck/k9/mail/store/StoreConfig;->setSpamFolderName(Ljava/lang/String;)V

    .line 219
    :cond_3
    const-string v8, "sentitems"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    if-eqz v3, :cond_4

    .line 221
    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v8, v3}, Lcom/fsck/k9/mail/store/StoreConfig;->setSentFolderName(Ljava/lang/String;)V

    .line 227
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 228
    .restart local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "Brief"

    const-string v9, "t"

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v8, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->baseUrl:Ljava/lang/String;

    const-string v9, "SEARCH"

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolderListXml()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10, v5}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/mail/store/webdav/DataSet;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/webdav/DataSet;->getHrefs()[Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "folderUrls":[Ljava/lang/String;
    array-length v9, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_6

    aget-object v7, v4, v8

    .line 233
    .local v7, "tempUrl":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->createFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    move-result-object v1

    .line 234
    .local v1, "folder":Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    if-eqz v1, :cond_5

    .line 235
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "folder":Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    .end local v7    # "tempUrl":Ljava/lang/String;
    :cond_6
    return-object v2
.end method

.method getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyCapable()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public isMoveCapable()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public isSendCapable()Z
    .locals 1

    .prologue
    .line 981
    const/4 v0, 0x1

    return v0
.end method

.method processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/mail/store/webdav/DataSet;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "messageBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/mail/store/webdav/DataSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 919
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/fsck/k9/mail/store/webdav/DataSet;

    move-result-object v0

    return-object v0
.end method

.method processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/fsck/k9/mail/store/webdav/DataSet;
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "messageBody"    # Ljava/lang/String;
    .param p5, "needsParsing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/fsck/k9/mail/store/webdav/DataSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 925
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lcom/fsck/k9/mail/store/webdav/DataSet;

    invoke-direct {v7}, Lcom/fsck/k9/mail/store/webdav/DataSet;-><init>()V

    .line 926
    .local v7, "dataset":Lcom/fsck/k9/mail/store/webdav/DataSet;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_WEBDAV:Z

    if-eqz v1, :cond_0

    .line 927
    const-string v1, "processRequest url = \'%s\', method = \'%s\', messageBody = \'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move-object v8, v7

    .line 976
    .end local v7    # "dataset":Lcom/fsck/k9/mail/store/webdav/DataSet;
    .local v8, "dataset":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 935
    .end local v8    # "dataset":Ljava/lang/Object;
    .restart local v7    # "dataset":Lcom/fsck/k9/mail/store/webdav/DataSet;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    .line 938
    const/4 v4, 0x0

    .line 939
    .local v4, "messageEntity":Lorg/apache/http/entity/StringEntity;
    if-eqz p3, :cond_3

    .line 940
    :try_start_0
    new-instance v11, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 941
    .end local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .local v11, "messageEntity":Lorg/apache/http/entity/StringEntity;
    :try_start_1
    const-string v1, "text/xml"

    invoke-virtual {v11, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v11

    .line 943
    .end local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    :cond_3
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/Map;Z)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v10

    .line 944
    .local v10, "istream":Ljava/io/InputStream;
    if-eqz v10, :cond_4

    if-eqz p5, :cond_4

    .line 947
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v16

    .line 948
    .local v16, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 949
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v15

    .line 950
    .local v15, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v15}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v18

    .line 951
    .local v18, "xr":Lorg/xml/sax/XMLReader;
    new-instance v12, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;

    invoke-direct {v12}, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;-><init>()V

    .line 953
    .local v12, "myHandler":Lcom/fsck/k9/mail/store/webdav/WebDavHandler;
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 955
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 957
    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;->getDataSet()Lcom/fsck/k9/mail/store/webdav/DataSet;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 966
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .end local v12    # "myHandler":Lcom/fsck/k9/mail/store/webdav/WebDavHandler;
    .end local v15    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v16    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v18    # "xr":Lorg/xml/sax/XMLReader;
    :cond_4
    move-object v8, v7

    .line 976
    .restart local v8    # "dataset":Ljava/lang/Object;
    goto :goto_0

    .line 958
    .end local v8    # "dataset":Ljava/lang/Object;
    :catch_0
    move-exception v14

    .line 959
    .local v14, "se":Lorg/xml/sax/SAXException;
    const-string v1, "SAXException in processRequest()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v14, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "SAXException in processRequest() "

    invoke-direct {v1, v2, v14}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 968
    .end local v10    # "istream":Ljava/io/InputStream;
    .end local v14    # "se":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v17

    .line 969
    .local v17, "uee":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string v1, "UnsupportedEncodingException: "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "UnsupportedEncodingException in processRequest() "

    move-object/from16 v0, v17

    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 961
    .end local v17    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v10    # "istream":Ljava/io/InputStream;
    :catch_2
    move-exception v13

    .line 962
    .local v13, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    const-string v1, "ParserConfigurationException in processRequest()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v13, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "ParserConfigurationException in processRequest() "

    invoke-direct {v1, v2, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 971
    .end local v10    # "istream":Ljava/io/InputStream;
    .end local v13    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v9

    .line 972
    .local v9, "ioe":Ljava/io/IOException;
    :goto_2
    const-string v1, "IOException: "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "IOException in processRequest() "

    invoke-direct {v1, v2, v9}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 971
    .end local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    :catch_4
    move-exception v9

    move-object v4, v11

    .end local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    goto :goto_2

    .line 968
    .end local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    :catch_5
    move-exception v17

    move-object v4, v11

    .end local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    goto :goto_1
.end method

.method public sendMessages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 986
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v2}, Lcom/fsck/k9/mail/store/StoreConfig;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    move-result-object v1

    .line 988
    .local v1, "tmpFolder":Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->open(I)V

    .line 989
    invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->appendWebDavMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 991
    .local v0, "retMessages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getSendSpoolFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->close()V

    .line 997
    :cond_0
    return-void

    .line 993
    .end local v0    # "retMessages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 994
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->close()V

    :cond_1
    throw v2
.end method

.method protected sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/Map;Z)Ljava/io/InputStream;
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "messageBody"    # Lorg/apache/http/entity/StringEntity;
    .param p5, "tryAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/entity/StringEntity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 829
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 830
    :cond_0
    const/4 v1, 0x0

    .line 893
    :goto_0
    return-object v1

    .line 833
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    move-result-object v9

    .line 837
    .local v9, "httpClient":Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;
    :try_start_0
    new-instance v10, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;-><init>(Ljava/lang/String;)V

    .line 841
    .local v10, "httpMethod":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    if-eqz p3, :cond_2

    .line 842
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 845
    :cond_2
    if-eqz p4, :cond_3

    .line 846
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 847
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 885
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "httpMethod":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    :catch_0
    move-exception v14

    .line 886
    .local v14, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v1, "UnsupportedEncodingException: "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v14, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "UnsupportedEncodingException"

    invoke-direct {v1, v2, v14}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 851
    .end local v14    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v10    # "httpMethod":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    :cond_3
    :try_start_1
    iget-short v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S

    if-nez v1, :cond_5

    .line 852
    if-eqz p5, :cond_4

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticate()Z

    move-result v1

    if-nez v1, :cond_6

    .line 853
    :cond_4
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "Unable to authenticate in sendRequest()."

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 888
    .end local v10    # "httpMethod":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    :catch_1
    move-exception v11

    .line 889
    .local v11, "ioe":Ljava/io/IOException;
    const-string v1, "IOException: "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v11, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "IOException"

    invoke-direct {v1, v2, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 855
    .end local v11    # "ioe":Ljava/io/IOException;
    .restart local v10    # "httpMethod":Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
    :cond_5
    :try_start_2
    iget-short v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 856
    const-string v1, "Authorization"

    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authString:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 860
    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v9, v10, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 861
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 863
    .local v13, "statusCode":I
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 865
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    const/16 v1, 0x191

    if-ne v13, v1, :cond_7

    .line 866
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "Invalid username or password for Basic authentication."

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 867
    :cond_7
    const/16 v1, 0x1b8

    if-ne v13, v1, :cond_a

    .line 868
    if-eqz p5, :cond_9

    iget-short v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->authenticationType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 870
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->performFormBasedAuthentication(Lcom/fsck/k9/mail/store/webdav/ConnectionInfo;)V

    .line 871
    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/Map;Z)Ljava/io/InputStream;

    .line 882
    :cond_8
    :goto_2
    if-eqz v7, :cond_d

    .line 883
    invoke-static {v7}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_0

    .line 873
    :cond_9
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "Authentication failure in sendRequest()."

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 875
    :cond_a
    const/16 v1, 0x12e

    if-ne v13, v1, :cond_b

    .line 876
    move-object/from16 v0, p1

    invoke-direct {p0, v12, v0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->handleUnexpectedRedirect(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    goto :goto_2

    .line 877
    :cond_b
    const/16 v1, 0xc8

    if-lt v13, v1, :cond_c

    const/16 v1, 0x12c

    if-lt v13, v1, :cond_8

    .line 878
    :cond_c
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " during request processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 879
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 893
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

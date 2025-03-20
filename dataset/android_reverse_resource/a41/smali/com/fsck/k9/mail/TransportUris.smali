.class public Lcom/fsck/k9/mail/TransportUris;
.super Ljava/lang/Object;
.source "TransportUris.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSmtpUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;
    .locals 13
    .param p0, "server"    # Lcom/fsck/k9/mail/ServerSettings;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 150
    invoke-static {v0}, Lcom/fsck/k9/mail/TransportUris;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 151
    .local v12, "userEnc":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 152
    invoke-static {v0}, Lcom/fsck/k9/mail/TransportUris;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "passwordEnc":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 154
    invoke-static {v0}, Lcom/fsck/k9/mail/TransportUris;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "clientCertificateAliasEnc":Ljava/lang/String;
    :goto_2
    sget-object v0, Lcom/fsck/k9/mail/TransportUris$1;->$SwitchMap$com$fsck$k9$mail$ConnectionSecurity:[I

    iget-object v3, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/ConnectionSecurity;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 166
    const-string v1, "smtp"

    .line 171
    .local v1, "scheme":Ljava/lang/String;
    :goto_3
    iget-object v8, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 173
    .local v8, "authType":Lcom/fsck/k9/mail/AuthType;
    if-eqz v8, :cond_4

    .line 174
    sget-object v0, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v0, v8, :cond_3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/fsck/k9/mail/AuthType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "userInfo":Ljava/lang/String;
    :goto_4
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v3, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    iget v4, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    return-object v0

    .line 150
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "userInfo":Ljava/lang/String;
    .end local v8    # "authType":Lcom/fsck/k9/mail/AuthType;
    .end local v9    # "clientCertificateAliasEnc":Ljava/lang/String;
    .end local v11    # "passwordEnc":Ljava/lang/String;
    .end local v12    # "userEnc":Ljava/lang/String;
    :cond_0
    const-string v12, ""

    goto :goto_0

    .line 152
    .restart local v12    # "userEnc":Ljava/lang/String;
    :cond_1
    const-string v11, ""

    goto :goto_1

    .line 154
    .restart local v11    # "passwordEnc":Ljava/lang/String;
    :cond_2
    const-string v9, ""

    goto :goto_2

    .line 159
    .restart local v9    # "clientCertificateAliasEnc":Ljava/lang/String;
    :pswitch_0
    const-string v1, "smtp+ssl+"

    .line 160
    .restart local v1    # "scheme":Ljava/lang/String;
    goto :goto_3

    .line 162
    .end local v1    # "scheme":Ljava/lang/String;
    :pswitch_1
    const-string v1, "smtp+tls+"

    .line 163
    .restart local v1    # "scheme":Ljava/lang/String;
    goto :goto_3

    .line 177
    .restart local v8    # "authType":Lcom/fsck/k9/mail/AuthType;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/fsck/k9/mail/AuthType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "userInfo":Ljava/lang/String;
    goto :goto_4

    .line 180
    .end local v2    # "userInfo":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "userInfo":Ljava/lang/String;
    goto :goto_4

    .line 185
    :catch_0
    move-exception v10

    .line 186
    .local v10, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t create SmtpTransport URI"

    invoke-direct {v0, v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createTransportUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;
    .locals 2
    .param p0, "server"    # Lcom/fsck/k9/mail/ServerSettings;

    .prologue
    .line 43
    sget-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v0, v1, :cond_0

    .line 44
    invoke-static {p0}, Lcom/fsck/k9/mail/TransportUris;->createSmtpUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v0, v1, :cond_1

    .line 46
    invoke-static {p0}, Lcom/fsck/k9/mail/TransportUris;->createWebDavUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid transport URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createWebDavUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "server"    # Lcom/fsck/k9/mail/ServerSettings;

    .prologue
    .line 211
    invoke-static {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->createUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeSmtpUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    .locals 14
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v5, 0x0

    .line 70
    .local v5, "authType":Lcom/fsck/k9/mail/AuthType;
    const/4 v6, 0x0

    .line 71
    .local v6, "username":Ljava/lang/String;
    const/4 v7, 0x0

    .line 72
    .local v7, "password":Ljava/lang/String;
    const/4 v8, 0x0

    .line 76
    .local v8, "clientCertificateAlias":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/net/URI;

    invoke-direct {v10, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v10, "smtpUri":Ljava/net/URI;
    invoke-virtual {v10}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "scheme":Ljava/lang/String;
    const-string v0, "smtp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget-object v4, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 96
    .local v4, "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget v3, v0, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultPort:I

    .line 107
    .local v3, "port":I
    :goto_0
    invoke-virtual {v10}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    invoke-virtual {v10}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 113
    :cond_0
    invoke-virtual {v10}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v10}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, "userInfoParts":[Ljava/lang/String;
    array-length v0, v12

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 116
    sget-object v5, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    .line 117
    const/4 v0, 0x0

    aget-object v0, v12, v0

    invoke-static {v0}, Lcom/fsck/k9/mail/TransportUris;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .end local v12    # "userInfoParts":[Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v0, Lcom/fsck/k9/mail/ServerSettings;

    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 77
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .end local v9    # "scheme":Ljava/lang/String;
    .end local v10    # "smtpUri":Ljava/net/URI;
    :catch_0
    move-exception v11

    .line 78
    .local v11, "use":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SmtpTransport URI"

    invoke-direct {v0, v1, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 97
    .end local v11    # "use":Ljava/net/URISyntaxException;
    .restart local v9    # "scheme":Ljava/lang/String;
    .restart local v10    # "smtpUri":Ljava/net/URI;
    :cond_2
    const-string v0, "smtp+tls"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    sget-object v4, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 99
    .restart local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget v3, v0, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultPort:I

    .restart local v3    # "port":I
    goto :goto_0

    .line 100
    .end local v3    # "port":I
    .end local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    :cond_3
    const-string v0, "smtp+ssl"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    sget-object v4, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 102
    .restart local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->SMTP:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget v3, v0, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultTlsPort:I

    .restart local v3    # "port":I
    goto :goto_0

    .line 104
    .end local v3    # "port":I
    .end local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported protocol ("

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, ")"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .restart local v12    # "userInfoParts":[Ljava/lang/String;
    :cond_5
    array-length v0, v12

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 119
    sget-object v5, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    .line 120
    const/4 v0, 0x0

    aget-object v0, v12, v0

    invoke-static {v0}, Lcom/fsck/k9/mail/TransportUris;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    const/4 v0, 0x1

    aget-object v0, v12, v0

    invoke-static {v0}, Lcom/fsck/k9/mail/TransportUris;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 122
    :cond_6
    array-length v0, v12

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 124
    const/4 v0, 0x2

    aget-object v0, v12, v0

    invoke-static {v0}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    move-result-object v5

    .line 125
    const/4 v0, 0x0

    aget-object v0, v12, v0

    invoke-static {v0}, Lcom/fsck/k9/mail/TransportUris;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 126
    sget-object v0, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v5, v0, :cond_7

    .line 127
    const/4 v0, 0x1

    aget-object v0, v12, v0

    invoke-static {v0}, Lcom/fsck/k9/mail/TransportUris;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 129
    :cond_7
    const/4 v0, 0x1

    aget-object v0, v12, v0

    invoke-static {v0}, Lcom/fsck/k9/mail/TransportUris;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1
.end method

.method public static decodeTransportUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "smtp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/fsck/k9/mail/TransportUris;->decodeSmtpUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v0, "webdav"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {p0}, Lcom/fsck/k9/mail/TransportUris;->decodeWebDavUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid transport URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeUtf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 224
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeWebDavUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->decodeUri(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;

    move-result-object v0

    return-object v0
.end method

.method private static encodeUtf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 216
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class Lcom/fsck/k9/mail/store/imap/ImapStoreUriDecoder;
.super Ljava/lang/Object;
.source "ImapStoreUriDecoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;
    .locals 20
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v5, 0x0

    .line 36
    .local v5, "authenticationType":Lcom/fsck/k9/mail/AuthType;
    const/4 v6, 0x0

    .line 37
    .local v6, "username":Ljava/lang/String;
    const/4 v7, 0x0

    .line 38
    .local v7, "password":Ljava/lang/String;
    const/4 v8, 0x0

    .line 39
    .local v8, "clientCertificateAlias":Ljava/lang/String;
    const/4 v10, 0x0

    .line 40
    .local v10, "pathPrefix":Ljava/lang/String;
    const/4 v9, 0x1

    .line 44
    .local v9, "autoDetectNamespace":Z
    :try_start_0
    new-instance v12, Ljava/net/URI;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v12, "imapUri":Ljava/net/URI;
    invoke-virtual {v12}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    .line 62
    .local v14, "scheme":Ljava/lang/String;
    const-string v1, "imap"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    sget-object v4, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 64
    .local v4, "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget v3, v1, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultPort:I

    .line 75
    .local v3, "port":I
    :goto_0
    invoke-virtual {v12}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/URI;->getPort()I

    move-result v1

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v1, v0, :cond_0

    .line 78
    invoke-virtual {v12}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 81
    :cond_0
    invoke-virtual {v12}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v12}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v17

    .line 83
    .local v17, "userinfo":Ljava/lang/String;
    const-string v1, ":"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 85
    .local v16, "userInfoParts":[Ljava/lang/String;
    const-string v1, ":"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    move-object/from16 v0, v16

    array-length v1, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v1, v0, :cond_6

    .line 90
    const/4 v1, 0x0

    aget-object v1, v16, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    move-result-object v5

    .line 91
    const/4 v1, 0x1

    aget-object v1, v16, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .end local v16    # "userInfoParts":[Ljava/lang/String;
    .end local v17    # "userinfo":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "path":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v1, v0, :cond_2

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 122
    .local v11, "cleanPath":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v18, 0x2

    move/from16 v0, v18

    if-lt v1, v0, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v18, 0x7c

    move/from16 v0, v18

    if-ne v1, v0, :cond_b

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v18, 0x31

    move/from16 v0, v18

    if-ne v1, v0, :cond_a

    const/4 v9, 0x1

    .line 124
    :goto_2
    if-nez v9, :cond_2

    .line 125
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 135
    .end local v11    # "cleanPath":Ljava/lang/String;
    :cond_2
    :goto_3
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;

    invoke-direct/range {v1 .. v10}, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v1

    .line 45
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .end local v12    # "imapUri":Ljava/net/URI;
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 46
    .local v15, "use":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v18, "Invalid ImapStore URI"

    move-object/from16 v0, v18

    invoke-direct {v1, v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 65
    .end local v15    # "use":Ljava/net/URISyntaxException;
    .restart local v12    # "imapUri":Ljava/net/URI;
    .restart local v14    # "scheme":Ljava/lang/String;
    :cond_3
    const-string v1, "imap+tls"

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    sget-object v4, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 67
    .restart local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget v3, v1, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultPort:I

    .restart local v3    # "port":I
    goto/16 :goto_0

    .line 68
    .end local v3    # "port":I
    .end local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    :cond_4
    const-string v1, "imap+ssl"

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    sget-object v4, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 70
    .restart local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget v3, v1, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultTlsPort:I

    .restart local v3    # "port":I
    goto/16 :goto_0

    .line 72
    .end local v3    # "port":I
    .end local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupported protocol ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .restart local v16    # "userInfoParts":[Ljava/lang/String;
    .restart local v17    # "userinfo":Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    .line 94
    const/4 v1, 0x0

    aget-object v1, v16, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 96
    :cond_7
    move-object/from16 v0, v16

    array-length v1, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v1, v0, :cond_8

    .line 99
    sget-object v5, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    .line 100
    const/4 v1, 0x0

    aget-object v1, v16, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    const/4 v1, 0x1

    aget-object v1, v16, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 102
    :cond_8
    move-object/from16 v0, v16

    array-length v1, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v1, v0, :cond_1

    .line 106
    const/4 v1, 0x0

    aget-object v1, v16, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    move-result-object v5

    .line 107
    const/4 v1, 0x1

    aget-object v1, v16, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    sget-object v1, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v1, v5, :cond_9

    .line 110
    const/4 v1, 0x2

    aget-object v1, v16, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 112
    :cond_9
    const/4 v1, 0x2

    aget-object v1, v16, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 123
    .end local v16    # "userInfoParts":[Ljava/lang/String;
    .end local v17    # "userinfo":Ljava/lang/String;
    .restart local v11    # "cleanPath":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 128
    :cond_b
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 129
    move-object v10, v11

    .line 130
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.class public Lcom/fsck/k9/mail/store/webdav/WebDavStoreUriDecoder;
.super Ljava/lang/Object;
.source "WebDavStoreUriDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;
    .locals 23
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v6, 0x0

    .line 27
    .local v6, "username":Ljava/lang/String;
    const/4 v7, 0x0

    .line 28
    .local v7, "password":Ljava/lang/String;
    const/4 v9, 0x0

    .line 29
    .local v9, "alias":Ljava/lang/String;
    const/4 v10, 0x0

    .line 30
    .local v10, "path":Ljava/lang/String;
    const/4 v11, 0x0

    .line 31
    .local v11, "authPath":Ljava/lang/String;
    const/4 v12, 0x0

    .line 36
    .local v12, "mailboxPath":Ljava/lang/String;
    :try_start_0
    new-instance v22, Ljava/net/URI;

    invoke-direct/range {v22 .. v23}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v22, "webDavUri":Ljava/net/URI;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 54
    .local v17, "scheme":Ljava/lang/String;
    const-string v1, "webdav"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    sget-object v4, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 62
    .local v4, "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "host":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "://"

    const/4 v5, 0x2

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 65
    .local v14, "hostParts":[Ljava/lang/String;
    array-length v1, v14

    const/4 v5, 0x1

    if-le v1, v5, :cond_0

    .line 66
    const/4 v1, 0x1

    aget-object v2, v14, v1

    .line 70
    .end local v14    # "hostParts":[Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 72
    .local v3, "port":I
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v19

    .line 73
    .local v19, "userInfo":Ljava/lang/String;
    if-eqz v19, :cond_1

    .line 74
    const-string v1, ":"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 75
    .local v20, "userInfoParts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v20, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    const-string v1, "\\\\"

    const/4 v5, 0x2

    invoke-virtual {v6, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v21

    .line 78
    .local v21, "userParts":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v1, v0

    const/4 v5, 0x1

    if-le v1, v5, :cond_5

    .line 79
    const/4 v1, 0x1

    aget-object v9, v21, v1

    .line 83
    :goto_1
    move-object/from16 v0, v20

    array-length v1, v0

    const/4 v5, 0x1

    if-le v1, v5, :cond_1

    .line 84
    const/4 v1, 0x1

    aget-object v1, v20, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "userParts":[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "\\|"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 89
    .local v16, "pathParts":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    move-object/from16 v0, v16

    array-length v13, v0

    .local v13, "count":I
    :goto_2
    if-ge v15, v13, :cond_8

    .line 90
    if-nez v15, :cond_6

    .line 91
    const/4 v1, 0x0

    aget-object v1, v16, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v16, v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_2

    .line 93
    const/4 v1, 0x0

    aget-object v10, v16, v1

    .line 89
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 37
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .end local v13    # "count":I
    .end local v15    # "i":I
    .end local v16    # "pathParts":[Ljava/lang/String;
    .end local v17    # "scheme":Ljava/lang/String;
    .end local v19    # "userInfo":Ljava/lang/String;
    .end local v22    # "webDavUri":Ljava/net/URI;
    :catch_0
    move-exception v18

    .line 38
    .local v18, "use":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid WebDavStore URI"

    move-object/from16 v0, v18

    invoke-direct {v1, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 56
    .end local v18    # "use":Ljava/net/URISyntaxException;
    .restart local v17    # "scheme":Ljava/lang/String;
    .restart local v22    # "webDavUri":Ljava/net/URI;
    :cond_3
    const-string v1, "webdav+"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    sget-object v4, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .restart local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    goto/16 :goto_0

    .line 59
    .end local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported protocol ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .restart local v19    # "userInfo":Ljava/lang/String;
    .restart local v20    # "userInfoParts":[Ljava/lang/String;
    .restart local v21    # "userParts":[Ljava/lang/String;
    :cond_5
    move-object v9, v6

    goto :goto_1

    .line 95
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "userParts":[Ljava/lang/String;
    .restart local v13    # "count":I
    .restart local v15    # "i":I
    .restart local v16    # "pathParts":[Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    if-ne v15, v1, :cond_7

    .line 96
    const/4 v1, 0x1

    aget-object v1, v16, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v1, v16, v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_2

    .line 98
    const/4 v1, 0x1

    aget-object v11, v16, v1

    goto :goto_3

    .line 100
    :cond_7
    const/4 v1, 0x2

    if-ne v15, v1, :cond_2

    .line 101
    const/4 v1, 0x2

    aget-object v1, v16, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    aget-object v1, v16, v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_2

    .line 103
    const/4 v1, 0x2

    aget-object v12, v16, v1

    goto :goto_3

    .line 108
    :cond_8
    new-instance v1, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

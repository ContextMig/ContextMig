.class Lcom/fsck/k9/mail/store/imap/ImapStoreUriCreator;
.super Ljava/lang/Object;
.source "ImapStoreUriCreator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;
    .locals 17
    .param p0, "server"    # Lcom/fsck/k9/mail/ServerSettings;

    .prologue
    .line 27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 28
    .local v16, "userEnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 29
    .local v14, "passwordEnc":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 30
    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 33
    .local v11, "clientCertificateAliasEnc":Ljava/lang/String;
    :goto_1
    sget-object v1, Lcom/fsck/k9/mail/store/imap/ImapStoreUriCreator$1;->$SwitchMap$com$fsck$k9$mail$ConnectionSecurity:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/ConnectionSecurity;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 42
    const-string v2, "imap"

    .line 46
    .local v2, "scheme":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 48
    .local v9, "authType":Lcom/fsck/k9/mail/AuthType;
    sget-object v1, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v9, v1, :cond_3

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/fsck/k9/mail/AuthType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "userInfo":Ljava/lang/String;
    :goto_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/ServerSettings;->getExtra()Ljava/util/Map;

    move-result-object v13

    .line 56
    .local v13, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_6

    .line 57
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "autoDetectNamespace"

    .line 58
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 59
    .local v10, "autoDetectNamespace":Z
    if-eqz v10, :cond_4

    const/4 v15, 0x0

    .line 61
    .local v15, "pathPrefix":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v10, :cond_5

    const-string v1, "1"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v15, :cond_0

    const-string v15, ""

    .end local v15    # "pathPrefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 66
    .end local v10    # "autoDetectNamespace":Z
    .local v6, "path":Ljava/lang/String;
    :goto_6
    new-instance v1, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 28
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "userInfo":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v9    # "authType":Lcom/fsck/k9/mail/AuthType;
    .end local v11    # "clientCertificateAliasEnc":Ljava/lang/String;
    .end local v13    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "passwordEnc":Ljava/lang/String;
    :cond_1
    const-string v14, ""

    goto/16 :goto_0

    .line 30
    .restart local v14    # "passwordEnc":Ljava/lang/String;
    :cond_2
    const-string v11, ""

    goto/16 :goto_1

    .line 35
    .restart local v11    # "clientCertificateAliasEnc":Ljava/lang/String;
    :pswitch_0
    const-string v2, "imap+ssl+"

    .line 36
    .restart local v2    # "scheme":Ljava/lang/String;
    goto/16 :goto_2

    .line 38
    .end local v2    # "scheme":Ljava/lang/String;
    :pswitch_1
    const-string v2, "imap+tls+"

    .line 39
    .restart local v2    # "scheme":Ljava/lang/String;
    goto/16 :goto_2

    .line 51
    .restart local v9    # "authType":Lcom/fsck/k9/mail/AuthType;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/fsck/k9/mail/AuthType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "userInfo":Ljava/lang/String;
    goto/16 :goto_3

    .line 59
    .restart local v10    # "autoDetectNamespace":Z
    .restart local v13    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    const-string v1, "pathPrefix"

    .line 60
    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    goto :goto_4

    .line 61
    .restart local v15    # "pathPrefix":Ljava/lang/String;
    :cond_5
    const-string v1, "0"

    goto :goto_5

    .line 64
    .end local v10    # "autoDetectNamespace":Z
    .end local v15    # "pathPrefix":Ljava/lang/String;
    :cond_6
    const-string v6, "/1|"
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6    # "path":Ljava/lang/String;
    goto :goto_6

    .line 67
    .end local v6    # "path":Ljava/lang/String;
    .end local v13    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v12

    .line 68
    .local v12, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t create ImapStore URI"

    invoke-direct {v1, v4, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

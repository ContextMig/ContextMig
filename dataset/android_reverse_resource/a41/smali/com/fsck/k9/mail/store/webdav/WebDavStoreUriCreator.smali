.class public Lcom/fsck/k9/mail/store/webdav/WebDavStoreUriCreator;
.super Ljava/lang/Object;
.source "WebDavStoreUriCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;
    .locals 15
    .param p0, "server"    # Lcom/fsck/k9/mail/ServerSettings;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    invoke-static {v0}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 24
    .local v14, "userEnc":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 28
    .local v12, "passwordEnc":Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/fsck/k9/mail/store/webdav/WebDavStoreUriCreator$1;->$SwitchMap$com$fsck$k9$mail$ConnectionSecurity:[I

    iget-object v3, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/ConnectionSecurity;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 34
    const-string v1, "webdav"

    .line 38
    .local v1, "scheme":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "userInfo":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/ServerSettings;->getExtra()Ljava/util/Map;

    move-result-object v10

    .line 42
    .local v10, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_4

    .line 43
    const-string v0, "path"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 44
    .local v13, "path":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 45
    :goto_2
    const-string v0, "authPath"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 46
    .local v8, "authPath":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 47
    :goto_3
    const-string v0, "mailboxPath"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 48
    .local v11, "mailboxPath":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 49
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    .end local v8    # "authPath":Ljava/lang/String;
    .end local v11    # "mailboxPath":Ljava/lang/String;
    .end local v13    # "path":Ljava/lang/String;
    .local v5, "uriPath":Ljava/lang/String;
    :goto_5
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v3, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    iget v4, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    return-object v0

    .line 25
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "userInfo":Ljava/lang/String;
    .end local v5    # "uriPath":Ljava/lang/String;
    .end local v10    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "passwordEnc":Ljava/lang/String;
    :cond_0
    const-string v12, ""

    goto/16 :goto_0

    .line 30
    .restart local v12    # "passwordEnc":Ljava/lang/String;
    :pswitch_0
    const-string v1, "webdav+ssl+"

    .line 31
    .restart local v1    # "scheme":Ljava/lang/String;
    goto :goto_1

    .line 44
    .restart local v2    # "userInfo":Ljava/lang/String;
    .restart local v10    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "path":Ljava/lang/String;
    :cond_1
    const-string v13, ""

    goto :goto_2

    .line 46
    .restart local v8    # "authPath":Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_3

    .line 48
    .restart local v11    # "mailboxPath":Ljava/lang/String;
    :cond_3
    const-string v11, ""

    goto :goto_4

    .line 51
    .end local v8    # "authPath":Ljava/lang/String;
    .end local v11    # "mailboxPath":Ljava/lang/String;
    .end local v13    # "path":Ljava/lang/String;
    :cond_4
    const-string v5, "/||"

    .restart local v5    # "uriPath":Ljava/lang/String;
    goto :goto_5

    .line 57
    :catch_0
    move-exception v9

    .line 58
    .local v9, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t create WebDavStore URI"

    invoke-direct {v0, v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

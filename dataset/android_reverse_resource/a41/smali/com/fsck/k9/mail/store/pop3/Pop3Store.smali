.class public Lcom/fsck/k9/mail/store/pop3/Pop3Store;
.super Lcom/fsck/k9/mail/store/RemoteStore;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;,
        Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ResponseInputStream;,
        Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;,
        Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;,
        Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;
    }
.end annotation


# static fields
.field private static final AUTH_COMMAND:Ljava/lang/String; = "AUTH"

.field private static final AUTH_CRAM_MD5_CAPABILITY:Ljava/lang/String; = "CRAM-MD5"

.field private static final AUTH_EXTERNAL_CAPABILITY:Ljava/lang/String; = "EXTERNAL"

.field private static final AUTH_PLAIN_CAPABILITY:Ljava/lang/String; = "PLAIN"

.field private static final CAPA_COMMAND:Ljava/lang/String; = "CAPA"

.field private static final DELE_COMMAND:Ljava/lang/String; = "DELE"

.field private static final LIST_COMMAND:Ljava/lang/String; = "LIST"

.field private static final PASS_COMMAND:Ljava/lang/String; = "PASS"

.field private static final QUIT_COMMAND:Ljava/lang/String; = "QUIT"

.field private static final RETR_COMMAND:Ljava/lang/String; = "RETR"

.field private static final SASL_CAPABILITY:Ljava/lang/String; = "SASL"

.field private static final STAT_COMMAND:Ljava/lang/String; = "STAT"

.field private static final STLS_CAPABILITY:Ljava/lang/String; = "STLS"

.field private static final STLS_COMMAND:Ljava/lang/String; = "STLS"

.field private static final TOP_CAPABILITY:Ljava/lang/String; = "TOP"

.field private static final TOP_COMMAND:Ljava/lang/String; = "TOP"

.field private static final UIDL_CAPABILITY:Ljava/lang/String; = "UIDL"

.field private static final UIDL_COMMAND:Ljava/lang/String; = "UIDL"

.field private static final USER_COMMAND:Ljava/lang/String; = "USER"


# instance fields
.field private mAuthType:Lcom/fsck/k9/mail/AuthType;

.field private mCapabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

.field private mClientCertificateAlias:Ljava/lang/String;

.field private mConnectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

.field private mFolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mTopNotSupported:Z

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;)V
    .locals 4
    .param p1, "storeConfig"    # Lcom/fsck/k9/mail/store/StoreConfig;
    .param p2, "socketFactory"    # Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/RemoteStore;-><init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;)V

    .line 210
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mFolders:Ljava/util/Map;

    .line 226
    :try_start_0
    invoke-interface {p1}, Lcom/fsck/k9/mail/store/StoreConfig;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->decodeUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    .local v1, "settings":Lcom/fsck/k9/mail/ServerSettings;
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mHost:Ljava/lang/String;

    .line 232
    iget v2, v1, Lcom/fsck/k9/mail/ServerSettings;->port:I

    iput v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mPort:I

    .line 234
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mConnectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 236
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mUsername:Ljava/lang/String;

    .line 237
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mPassword:Ljava/lang/String;

    .line 238
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mClientCertificateAlias:Ljava/lang/String;

    .line 239
    iget-object v2, v1, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    iput-object v2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mAuthType:Lcom/fsck/k9/mail/AuthType;

    .line 240
    return-void

    .line 227
    .end local v1    # "settings":Lcom/fsck/k9/mail/ServerSettings;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Error while decoding store URI"

    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$100(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mTrustedSocketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/AuthType;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mAuthType:Lcom/fsck/k9/mail/AuthType;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mTopNotSupported:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mTopNotSupported:Z

    return p1
.end method

.method static synthetic access$200(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/StoreConfig;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mPort:I

    return v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/ConnectionSecurity;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mConnectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mClientCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mTrustedSocketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    return-object v0
.end method

.method static synthetic access$902(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;)Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store;
    .param p1, "x1"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    return-object p1
.end method

.method public static createUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;
    .locals 13
    .param p0, "server"    # Lcom/fsck/k9/mail/ServerSettings;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    invoke-static {v0}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 167
    .local v12, "userEnc":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 168
    invoke-static {v0}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, "passwordEnc":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 170
    invoke-static {v0}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "clientCertificateAliasEnc":Ljava/lang/String;
    :goto_1
    sget-object v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$1;->$SwitchMap$com$fsck$k9$mail$ConnectionSecurity:[I

    iget-object v3, p0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/ConnectionSecurity;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 182
    const-string v1, "pop3"

    .line 186
    .local v1, "scheme":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 188
    .local v8, "authType":Lcom/fsck/k9/mail/AuthType;
    sget-object v0, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v0, v8, :cond_2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/fsck/k9/mail/AuthType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "userInfo":Ljava/lang/String;
    :goto_3
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v3, p0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    iget v4, p0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    return-object v0

    .line 168
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "userInfo":Ljava/lang/String;
    .end local v8    # "authType":Lcom/fsck/k9/mail/AuthType;
    .end local v9    # "clientCertificateAliasEnc":Ljava/lang/String;
    .end local v11    # "passwordEnc":Ljava/lang/String;
    :cond_0
    const-string v11, ""

    goto :goto_0

    .line 170
    .restart local v11    # "passwordEnc":Ljava/lang/String;
    :cond_1
    const-string v9, ""

    goto :goto_1

    .line 175
    .restart local v9    # "clientCertificateAliasEnc":Ljava/lang/String;
    :pswitch_0
    const-string v1, "pop3+ssl+"

    .line 176
    .restart local v1    # "scheme":Ljava/lang/String;
    goto :goto_2

    .line 178
    .end local v1    # "scheme":Ljava/lang/String;
    :pswitch_1
    const-string v1, "pop3+tls+"

    .line 179
    .restart local v1    # "scheme":Ljava/lang/String;
    goto :goto_2

    .line 191
    .restart local v8    # "authType":Lcom/fsck/k9/mail/AuthType;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/fsck/k9/mail/AuthType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    goto :goto_3

    .line 197
    :catch_0
    move-exception v10

    .line 198
    .local v10, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t create Pop3Store URI"

    invoke-direct {v0, v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static decodeUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    .locals 18
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v7, 0x0

    .line 86
    .local v7, "username":Ljava/lang/String;
    const/4 v8, 0x0

    .line 87
    .local v8, "password":Ljava/lang/String;
    const/4 v9, 0x0

    .line 91
    .local v9, "clientCertificateAlias":Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/net/URI;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v11, "pop3Uri":Ljava/net/URI;
    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 109
    .local v12, "scheme":Ljava/lang/String;
    const-string v1, "pop3"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    sget-object v5, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 111
    .local v5, "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->POP3:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget v4, v1, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultPort:I

    .line 122
    .local v4, "port":I
    :goto_0
    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 125
    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 128
    :cond_0
    sget-object v6, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    .line 129
    .local v6, "authType":Lcom/fsck/k9/mail/AuthType;
    invoke-virtual {v11}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 130
    const/4 v14, 0x0

    .local v14, "userIndex":I
    const/4 v10, 0x1

    .line 131
    .local v10, "passwordIndex":I
    invoke-virtual {v11}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v16

    .line 132
    .local v16, "userinfo":Ljava/lang/String;
    const-string v1, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 133
    .local v15, "userInfoParts":[Ljava/lang/String;
    array-length v1, v15

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    const-string v1, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 137
    add-int/lit8 v10, v10, 0x1

    .line 138
    const/4 v1, 0x0

    aget-object v1, v15, v1

    invoke-static {v1}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    move-result-object v6

    .line 140
    :cond_2
    aget-object v1, v15, v14

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    array-length v1, v15

    if-le v1, v10, :cond_3

    .line 142
    sget-object v1, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    if-ne v6, v1, :cond_7

    .line 143
    aget-object v1, v15, v10

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    .end local v10    # "passwordIndex":I
    .end local v14    # "userIndex":I
    .end local v15    # "userInfoParts":[Ljava/lang/String;
    .end local v16    # "userinfo":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v1, Lcom/fsck/k9/mail/ServerSettings;

    sget-object v2, Lcom/fsck/k9/mail/ServerSettings$Type;->POP3:Lcom/fsck/k9/mail/ServerSettings$Type;

    invoke-direct/range {v1 .. v9}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Lcom/fsck/k9/mail/ServerSettings$Type;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 92
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .end local v6    # "authType":Lcom/fsck/k9/mail/AuthType;
    .end local v11    # "pop3Uri":Ljava/net/URI;
    .end local v12    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 93
    .local v13, "use":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Pop3Store URI"

    invoke-direct {v1, v2, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v13    # "use":Ljava/net/URISyntaxException;
    .restart local v11    # "pop3Uri":Ljava/net/URI;
    .restart local v12    # "scheme":Ljava/lang/String;
    :cond_4
    const-string v1, "pop3+tls"

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 113
    sget-object v5, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 114
    .restart local v5    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->POP3:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget v4, v1, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultPort:I

    .restart local v4    # "port":I
    goto :goto_0

    .line 115
    .end local v4    # "port":I
    .end local v5    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    :cond_5
    const-string v1, "pop3+ssl"

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    sget-object v5, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 117
    .restart local v5    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    sget-object v1, Lcom/fsck/k9/mail/ServerSettings$Type;->POP3:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget v4, v1, Lcom/fsck/k9/mail/ServerSettings$Type;->defaultTlsPort:I

    .restart local v4    # "port":I
    goto :goto_0

    .line 119
    .end local v4    # "port":I
    .end local v5    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported protocol ("

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "port":I
    .restart local v5    # "connectionSecurity":Lcom/fsck/k9/mail/ConnectionSecurity;
    .restart local v6    # "authType":Lcom/fsck/k9/mail/AuthType;
    .restart local v10    # "passwordIndex":I
    .restart local v14    # "userIndex":I
    .restart local v15    # "userInfoParts":[Ljava/lang/String;
    .restart local v16    # "userinfo":Ljava/lang/String;
    :cond_7
    aget-object v1, v15, v10

    invoke-static {v1}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method


# virtual methods
.method public checkSettings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/StoreConfig;->getInboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;-><init>(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Ljava/lang/String;)V

    .line 263
    .local v0, "folder":Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->open(I)V

    .line 264
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;

    iget-boolean v1, v1, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Capabilities;->uidl:Z

    if-nez v1, :cond_0

    .line 274
    const-string v1, "UIDL"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->access$000(Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->close()V

    .line 281
    return-void

    .line 279
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;->close()V

    throw v1
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mFolders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Folder;

    .line 245
    .local v0, "folder":Lcom/fsck/k9/mail/Folder;
    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;

    .end local v0    # "folder":Lcom/fsck/k9/mail/Folder;
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;-><init>(Lcom/fsck/k9/mail/store/pop3/Pop3Store;Ljava/lang/String;)V

    .line 247
    .restart local v0    # "folder":Lcom/fsck/k9/mail/Folder;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mFolders:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_0
    return-object v0
.end method

.method public getPersonalNamespaces(Z)Ljava/util/List;
    .locals 2
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
    .line 254
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 255
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Folder;>;"
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/StoreConfig;->getInboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-object v0
.end method

.method public isSeenFlagSupported()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/fsck/k9/mail/store/imap/ImapStore;
.super Lcom/fsck/k9/mail/store/RemoteStore;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;
    }
.end annotation


# instance fields
.field private authType:Lcom/fsck/k9/mail/AuthType;

.field private clientCertificateAlias:Ljava/lang/String;

.field private combinedPrefix:Ljava/lang/String;

.field private connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private final folderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/imap/ImapFolder;",
            ">;"
        }
    .end annotation
.end field

.field private folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

.field private host:Ljava/lang/String;

.field private oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

.field private password:Ljava/lang/String;

.field private pathDelimiter:Ljava/lang/String;

.field private pathPrefix:Ljava/lang/String;

.field private permanentFlagsIndex:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;Landroid/net/ConnectivityManager;Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;)V
    .locals 4
    .param p1, "storeConfig"    # Lcom/fsck/k9/mail/store/StoreConfig;
    .param p2, "trustedSocketFactory"    # Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;
    .param p3, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p4, "oauthTokenProvider"    # Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/RemoteStore;-><init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;)V

    .line 42
    const-class v3, Lcom/fsck/k9/mail/Flag;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->permanentFlagsIndex:Ljava/util/Set;

    .line 54
    iput-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathDelimiter:Ljava/lang/String;

    .line 56
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->connections:Ljava/util/Deque;

    .line 65
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->folderCache:Ljava/util/Map;

    .line 82
    :try_start_0
    invoke-interface {p1}, Lcom/fsck/k9/mail/store/StoreConfig;->getStoreUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/store/imap/ImapStore;->decodeUri(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    .local v1, "settings":Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;
    iget-object v3, v1, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->host:Ljava/lang/String;

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->host:Ljava/lang/String;

    .line 88
    iget v3, v1, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->port:I

    iput v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->port:I

    .line 90
    iget-object v3, v1, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 91
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 92
    iput-object p4, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    .line 94
    iget-object v3, v1, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->authType:Lcom/fsck/k9/mail/AuthType;

    .line 95
    iget-object v3, v1, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->username:Ljava/lang/String;

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->username:Ljava/lang/String;

    .line 96
    iget-object v3, v1, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->password:Ljava/lang/String;

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->password:Ljava/lang/String;

    .line 97
    iget-object v3, v1, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->clientCertificateAlias:Ljava/lang/String;

    iput-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->clientCertificateAlias:Ljava/lang/String;

    .line 100
    iget-boolean v3, v1, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->autoDetectNamespace:Z

    if-eqz v3, :cond_0

    :goto_0
    iput-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathPrefix:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->newInstance()Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    .line 103
    return-void

    .line 83
    .end local v1    # "settings":Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Error while decoding store URI"

    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "settings":Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;
    :cond_0
    iget-object v2, v1, Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;->pathPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathDelimiter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathDelimiter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/fsck/k9/mail/store/imap/ImapStore;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->port:I

    return v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mail/store/imap/ImapStore;)Lcom/fsck/k9/mail/ConnectionSecurity;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/mail/store/imap/ImapStore;)Lcom/fsck/k9/mail/AuthType;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->authType:Lcom/fsck/k9/mail/AuthType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->clientCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/mail/store/imap/ImapStore;)Lcom/fsck/k9/mail/store/StoreConfig;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/mail/store/imap/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathPrefix:Ljava/lang/String;

    return-object p1
.end method

.method public static createUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "server"    # Lcom/fsck/k9/mail/ServerSettings;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/fsck/k9/mail/store/imap/ImapStoreUriCreator;->create(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeUri(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/fsck/k9/mail/store/imap/ImapStoreUriDecoder;->decode(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;

    move-result-object v0

    return-object v0
.end method

.method private getFolders(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "folderNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    .local v1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapFolder;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 360
    .local v0, "folderName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapFolder;

    move-result-object v2

    .line 361
    .local v2, "imapFolder":Lcom/fsck/k9/mail/store/imap/ImapFolder;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    .end local v0    # "folderName":Ljava/lang/String;
    .end local v2    # "imapFolder":Lcom/fsck/k9/mail/store/imap/ImapFolder;
    :cond_0
    return-object v1
.end method

.method private listFolders(Lcom/fsck/k9/mail/store/imap/ImapConnection;Z)Ljava/util/Set;
    .locals 16
    .param p1, "connection"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .param p2, "subscribedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/store/imap/ImapConnection;",
            "Z)",
            "Ljava/util/Set",
            "<",
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
    .line 165
    if-eqz p2, :cond_5

    const-string v1, "LSUB"

    .line 167
    .local v1, "commandResponse":Ljava/lang/String;
    :goto_0
    const-string v11, "%s \"\" %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "*"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 168
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 171
    .local v10, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    if-eqz p2, :cond_6

    .line 172
    invoke-static {v10}, Lcom/fsck/k9/mail/store/imap/ListResponse;->parseLsub(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 174
    .local v8, "listResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ListResponse;>;"
    :goto_1
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v5, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 176
    .local v5, "folderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/store/imap/ListResponse;

    .line 177
    .local v7, "listResponse":Lcom/fsck/k9/mail/store/imap/ListResponse;
    const/4 v6, 0x1

    .line 181
    .local v6, "includeFolder":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/imap/ImapStore;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    invoke-virtual {v7}, Lcom/fsck/k9/mail/store/imap/ListResponse;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 194
    .local v2, "decodedFolderName":Ljava/lang/String;
    move-object v4, v2

    .line 196
    .local v4, "folder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathDelimiter:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 197
    invoke-virtual {v7}, Lcom/fsck/k9/mail/store/imap/ListResponse;->getHierarchyDelimiter()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathDelimiter:Ljava/lang/String;

    .line 198
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    .line 201
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v12}, Lcom/fsck/k9/mail/store/StoreConfig;->getInboxFolderName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v12}, Lcom/fsck/k9/mail/store/StoreConfig;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    .line 212
    .local v9, "prefixLength":I
    if-lez v9, :cond_3

    .line 214
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v12, v9, :cond_2

    .line 215
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 217
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 218
    const/4 v6, 0x0

    .line 223
    :cond_3
    const-string v12, "\\NoSelect"

    invoke-virtual {v7, v12}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 224
    const/4 v6, 0x0

    .line 227
    :cond_4
    if-eqz v6, :cond_0

    .line 228
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 165
    .end local v1    # "commandResponse":Ljava/lang/String;
    .end local v2    # "decodedFolderName":Ljava/lang/String;
    .end local v4    # "folder":Ljava/lang/String;
    .end local v5    # "folderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "includeFolder":Z
    .end local v7    # "listResponse":Lcom/fsck/k9/mail/store/imap/ListResponse;
    .end local v8    # "listResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ListResponse;>;"
    .end local v9    # "prefixLength":I
    .end local v10    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :cond_5
    const-string v1, "LIST"

    goto/16 :goto_0

    .line 172
    .restart local v1    # "commandResponse":Ljava/lang/String;
    .restart local v10    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :cond_6
    invoke-static {v10}, Lcom/fsck/k9/mail/store/imap/ListResponse;->parseList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_1

    .line 182
    .restart local v5    # "folderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "includeFolder":Z
    .restart local v7    # "listResponse":Lcom/fsck/k9/mail/store/imap/ListResponse;
    .restart local v8    # "listResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ListResponse;>;"
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/nio/charset/CharacterCodingException;
    const-string v12, "Folder name not correctly encoded with the UTF-7 variant  as defined by RFC 3501: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 185
    invoke-virtual {v7}, Lcom/fsck/k9/mail/store/imap/ListResponse;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 183
    invoke-static {v3, v12, v13}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 232
    .end local v3    # "e":Ljava/nio/charset/CharacterCodingException;
    .end local v6    # "includeFolder":Z
    .end local v7    # "listResponse":Lcom/fsck/k9/mail/store/imap/ListResponse;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v11}, Lcom/fsck/k9/mail/store/StoreConfig;->getInboxFolderName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    return-object v5
.end method

.method private pollConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->connections:Ljava/util/Deque;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapConnection;

    monitor-exit v1

    return-object v0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method autoconfigureFolders(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V
    .locals 12
    .param p1, "connection"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 238
    const-string v6, "SPECIAL-USE"

    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 239
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    const-string v6, "No detected folder auto-configuration methods."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    const-string v6, "Folder auto-configuration: Using RFC6154/SPECIAL-USE."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_2
    const-string v6, "LIST (SPECIAL-USE) \"\" %s"

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 252
    .local v5, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-static {v5}, Lcom/fsck/k9/mail/store/imap/ListResponse;->parseList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 254
    .local v4, "listResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ListResponse;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/store/imap/ListResponse;

    .line 257
    .local v3, "listResponse":Lcom/fsck/k9/mail/store/imap/ListResponse;
    :try_start_0
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ListResponse;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 265
    .local v1, "decodedFolderName":Ljava/lang/String;
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathDelimiter:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 266
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ListResponse;->getHierarchyDelimiter()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathDelimiter:Ljava/lang/String;

    .line 267
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    .line 270
    :cond_4
    const-string v7, "\\Archive"

    invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "\\All"

    invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 271
    :cond_5
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v7, v1}, Lcom/fsck/k9/mail/store/StoreConfig;->setArchiveFolderName(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 273
    const-string v7, "Folder auto-configuration detected Archive folder: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    .end local v1    # "decodedFolderName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/nio/charset/CharacterCodingException;
    const-string v7, "Folder name not correctly encoded with the UTF-7 variant as defined by RFC 3501: %s"

    new-array v8, v11, [Ljava/lang/Object;

    .line 260
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ListResponse;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 259
    invoke-static {v2, v7, v8}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    .end local v2    # "e":Ljava/nio/charset/CharacterCodingException;
    .restart local v1    # "decodedFolderName":Ljava/lang/String;
    :cond_6
    const-string v7, "\\Drafts"

    invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 276
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v7, v1}, Lcom/fsck/k9/mail/store/StoreConfig;->setDraftsFolderName(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 278
    const-string v7, "Folder auto-configuration detected Drafts folder: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_7
    const-string v7, "\\Sent"

    invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 281
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v7, v1}, Lcom/fsck/k9/mail/store/StoreConfig;->setSentFolderName(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 283
    const-string v7, "Folder auto-configuration detected Sent folder: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 285
    :cond_8
    const-string v7, "\\Junk"

    invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 286
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v7, v1}, Lcom/fsck/k9/mail/store/StoreConfig;->setSpamFolderName(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 288
    const-string v7, "Folder auto-configuration detected Spam folder: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 290
    :cond_9
    const-string v7, "\\Trash"

    invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 291
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v7, v1}, Lcom/fsck/k9/mail/store/StoreConfig;->setTrashFolderName(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 293
    const-string v7, "Folder auto-configuration detected Trash folder: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public checkSettings()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->createImapConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-result-object v0

    .line 304
    .local v0, "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->open()V

    .line 305
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->autoconfigureFolders(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    .line 306
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    return-void

    .line 307
    .end local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :catch_0
    move-exception v1

    .line 308
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Unable to connect"

    invoke-direct {v2, v3, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method createImapConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .locals 5

    .prologue
    .line 345
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapConnection;

    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapStore$StoreImapSettings;-><init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Lcom/fsck/k9/mail/store/imap/ImapStore$1;)V

    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mTrustedSocketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->oauthTokenProvider:Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/mail/store/imap/ImapConnection;-><init>(Lcom/fsck/k9/mail/store/imap/ImapSettings;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;Landroid/net/ConnectivityManager;Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;)V

    return-object v0
.end method

.method getCombinedPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathPrefix:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 122
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "tmpPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathDelimiter:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->pathDelimiter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "tmpDelim":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    .line 136
    .end local v0    # "tmpDelim":Ljava/lang/String;
    .end local v1    # "tmpPrefix":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    return-object v2

    .line 123
    .restart local v1    # "tmpPrefix":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 126
    .restart local v0    # "tmpDelim":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    goto :goto_1

    .line 129
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    goto :goto_1

    .line 132
    .end local v0    # "tmpDelim":Ljava/lang/String;
    .end local v1    # "tmpPrefix":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    iput-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->combinedPrefix:Ljava/lang/String;

    goto :goto_1
.end method

.method getConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 314
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->pollConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-result-object v0

    .local v0, "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    const-string v2, "NOOP"

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    if-nez v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->createImapConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-result-object v0

    .line 327
    :cond_1
    return-object v0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    goto :goto_0
.end method

.method public bridge synthetic getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapFolder;

    move-result-object v0

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapFolder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->folderCache:Ljava/util/Map;

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->folderCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;

    .line 110
    .local v0, "folder":Lcom/fsck/k9/mail/store/imap/ImapFolder;
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;

    .end local v0    # "folder":Lcom/fsck/k9/mail/store/imap/ImapFolder;
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;-><init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;)V

    .line 112
    .restart local v0    # "folder":Lcom/fsck/k9/mail/store/imap/ImapFolder;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->folderCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    monitor-exit v2

    .line 116
    return-object v0

    .line 114
    .end local v0    # "folder":Lcom/fsck/k9/mail/store/imap/ImapFolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getFolderNameCodec()Lcom/fsck/k9/mail/store/imap/FolderNameCodec;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    return-object v0
.end method

.method getPermanentFlagsIndex()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->permanentFlagsIndex:Ljava/util/Set;

    return-object v0
.end method

.method public getPersonalNamespaces(Z)Ljava/util/List;
    .locals 6
    .param p1, "forceListAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapFolder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-result-object v0

    .line 144
    .local v0, "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v0, v4}, Lcom/fsck/k9/mail/store/imap/ImapStore;->listFolders(Lcom/fsck/k9/mail/store/imap/ImapConnection;Z)Ljava/util/Set;

    move-result-object v1

    .line 146
    .local v1, "folderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    invoke-interface {v4}, Lcom/fsck/k9/mail/store/StoreConfig;->subscribedFoldersOnly()Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    :cond_0
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getFolders(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 159
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    .line 154
    :goto_0
    return-object v4

    .line 150
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v0, v4}, Lcom/fsck/k9/mail/store/imap/ImapStore;->listFolders(Lcom/fsck/k9/mail/store/imap/ImapConnection;Z)Ljava/util/Set;

    move-result-object v3

    .line 152
    .local v3, "subscribedFolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 154
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getFolders(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 159
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    goto :goto_0

    .line 155
    .end local v1    # "folderNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "subscribedFolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 156
    .local v2, "ioe":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 157
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "Unable to get folder list."

    invoke-direct {v4, v5, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .end local v2    # "ioe":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    throw v4

    .line 155
    :catch_1
    move-exception v4

    move-object v2, v4

    goto :goto_1
.end method

.method public getPusher(Lcom/fsck/k9/mail/PushReceiver;)Lcom/fsck/k9/mail/Pusher;
    .locals 1
    .param p1, "receiver"    # Lcom/fsck/k9/mail/PushReceiver;

    .prologue
    .line 397
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapPusher;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapPusher;-><init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Lcom/fsck/k9/mail/PushReceiver;)V

    return-object v0
.end method

.method getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    return-object v0
.end method

.method public isCopyCapable()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public isExpungeCapable()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public isMoveCapable()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public isPushCapable()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x1

    return v0
.end method

.method releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .prologue
    .line 337
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->connections:Ljava/util/Deque;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapStore;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 340
    monitor-exit v1

    .line 342
    :cond_0
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

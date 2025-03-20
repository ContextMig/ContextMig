.class public abstract Lcom/fsck/k9/mail/store/RemoteStore;
.super Lcom/fsck/k9/mail/Store;
.source "RemoteStore.java"


# static fields
.field public static final SOCKET_CONNECT_TIMEOUT:I = 0x7530

.field public static final SOCKET_READ_TIMEOUT:I = 0xea60

.field private static sStores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/Store;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

.field protected mTrustedSocketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/mail/store/RemoteStore;->sStores:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;)V
    .locals 0
    .param p1, "storeConfig"    # Lcom/fsck/k9/mail/store/StoreConfig;
    .param p2, "trustedSocketFactory"    # Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fsck/k9/mail/Store;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/fsck/k9/mail/store/RemoteStore;->mStoreConfig:Lcom/fsck/k9/mail/store/StoreConfig;

    .line 38
    iput-object p2, p0, Lcom/fsck/k9/mail/store/RemoteStore;->mTrustedSocketFactory:Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;

    .line 39
    return-void
.end method

.method public static createStoreUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;
    .locals 2
    .param p0, "server"    # Lcom/fsck/k9/mail/ServerSettings;

    .prologue
    .line 130
    sget-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->IMAP:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v0, v1, :cond_0

    .line 131
    invoke-static {p0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->createUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 132
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->POP3:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v0, v1, :cond_1

    .line 133
    invoke-static {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->createUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    sget-object v0, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v1, p0, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-ne v0, v1, :cond_2

    .line 135
    invoke-static {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->createUri(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid store URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeStoreUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "imap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->decodeUri(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapStoreSettings;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    const-string v0, "pop3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->decodeUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "webdav"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-static {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->decodeUri(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavStoreSettings;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid store URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/fsck/k9/mail/store/StoreConfig;)Lcom/fsck/k9/mail/Store;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeConfig"    # Lcom/fsck/k9/mail/store/StoreConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 45
    const-class v4, Lcom/fsck/k9/mail/store/RemoteStore;

    monitor-enter v4

    :try_start_0
    invoke-interface {p1}, Lcom/fsck/k9/mail/store/StoreConfig;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "uri":Ljava/lang/String;
    const-string v3, "local"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Asked to get non-local Store object but given LocalStore URI"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v2    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 51
    .restart local v2    # "uri":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/fsck/k9/mail/store/RemoteStore;->sStores:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Store;

    .line 52
    .local v1, "store":Lcom/fsck/k9/mail/Store;
    if-nez v1, :cond_2

    .line 53
    const-string v3, "imap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "oAuth2TokenProvider":Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapStore;

    .end local v1    # "store":Lcom/fsck/k9/mail/Store;
    new-instance v5, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;

    invoke-direct {v5, p0}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;-><init>(Landroid/content/Context;)V

    const-string v3, "connectivity"

    .line 58
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-direct {v1, p1, v5, v3, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;-><init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;Landroid/net/ConnectivityManager;Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;)V

    .line 66
    .end local v0    # "oAuth2TokenProvider":Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;
    .restart local v1    # "store":Lcom/fsck/k9/mail/Store;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 67
    sget-object v3, Lcom/fsck/k9/mail/store/RemoteStore;->sStores:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_2
    if-nez v1, :cond_5

    .line 72
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to locate an applicable Store for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_3
    const-string v3, "pop3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 61
    new-instance v1, Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .end local v1    # "store":Lcom/fsck/k9/mail/Store;
    new-instance v3, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;

    invoke-direct {v3, p0}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v3}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;-><init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;)V

    .restart local v1    # "store":Lcom/fsck/k9/mail/Store;
    goto :goto_0

    .line 62
    :cond_4
    const-string v3, "webdav"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    new-instance v1, Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    .end local v1    # "store":Lcom/fsck/k9/mail/Store;
    new-instance v3, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;

    invoke-direct {v3}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;-><init>()V

    invoke-direct {v1, p1, v3}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;-><init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "store":Lcom/fsck/k9/mail/Store;
    goto :goto_0

    .line 75
    :cond_5
    monitor-exit v4

    return-object v1
.end method

.method public static removeInstance(Lcom/fsck/k9/mail/store/StoreConfig;)V
    .locals 3
    .param p0, "storeConfig"    # Lcom/fsck/k9/mail/store/StoreConfig;

    .prologue
    .line 84
    invoke-interface {p0}, Lcom/fsck/k9/mail/store/StoreConfig;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "uri":Ljava/lang/String;
    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Asked to get non-local Store object but given LocalStore URI"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    sget-object v1, Lcom/fsck/k9/mail/store/RemoteStore;->sStores:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

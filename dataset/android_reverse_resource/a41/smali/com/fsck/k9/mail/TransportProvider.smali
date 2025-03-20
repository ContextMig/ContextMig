.class public Lcom/fsck/k9/mail/TransportProvider;
.super Ljava/lang/Object;
.source "TransportProvider.java"


# static fields
.field private static transportProvider:Lcom/fsck/k9/mail/TransportProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/fsck/k9/mail/TransportProvider;

    invoke-direct {v0}, Lcom/fsck/k9/mail/TransportProvider;-><init>()V

    sput-object v0, Lcom/fsck/k9/mail/TransportProvider;->transportProvider:Lcom/fsck/k9/mail/TransportProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fsck/k9/mail/TransportProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/fsck/k9/mail/TransportProvider;->transportProvider:Lcom/fsck/k9/mail/TransportProvider;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getTransport(Landroid/content/Context;Lcom/fsck/k9/mail/store/StoreConfig;)Lcom/fsck/k9/mail/Transport;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storeConfig"    # Lcom/fsck/k9/mail/store/StoreConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lcom/fsck/k9/mail/store/StoreConfig;->getTransportUri()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "smtp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "oauth2TokenProvider":Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;
    new-instance v2, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;

    new-instance v3, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;

    invoke-direct {v3, p1}, Lcom/fsck/k9/mail/ssl/DefaultTrustedSocketFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p2, v3, v0}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;-><init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .end local v0    # "oauth2TokenProvider":Lcom/fsck/k9/mail/oauth/OAuth2TokenProvider;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 25
    :cond_0
    :try_start_1
    const-string v2, "webdav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    new-instance v2, Lcom/fsck/k9/mail/transport/WebDavTransport;

    invoke-direct {v2, p2}, Lcom/fsck/k9/mail/transport/WebDavTransport;-><init>(Lcom/fsck/k9/mail/store/StoreConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 21
    .end local v1    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 28
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to locate an applicable Transport for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

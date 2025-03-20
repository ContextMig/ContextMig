.class public Lcom/fsck/k9/mail/transport/WebDavTransport;
.super Lcom/fsck/k9/mail/Transport;
.source "WebDavTransport.java"


# instance fields
.field private store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/StoreConfig;)V
    .locals 2
    .param p1, "storeConfig"    # Lcom/fsck/k9/mail/store/StoreConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fsck/k9/mail/Transport;-><init>()V

    .line 19
    new-instance v0, Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    new-instance v1, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;

    invoke-direct {v1}, Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;-><init>(Lcom/fsck/k9/mail/store/StoreConfig;Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient$WebDavHttpClientFactory;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/transport/WebDavTransport;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    .line 21
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, ">>> New WebDavTransport creation complete"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, ">>> open called on WebDavTransport "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/WebDavTransport;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/webdav/WebDavHttpClient;

    .line 31
    return-void
.end method

.method public sendMessage(Lcom/fsck/k9/mail/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/WebDavTransport;->store:Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->sendMessages(Ljava/util/List;)V

    .line 40
    return-void
.end method

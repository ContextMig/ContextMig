.class Lcom/fsck/k9/mail/store/webdav/WebDavMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "WebDavMessage.java"


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->mUrl:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->mUid:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 26
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    .line 101
    .local v0, "wdFolder":Lcom/fsck/k9/mail/store/webdav/WebDavFolder;
    const-string v1, "Deleting message by moving to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->getStore()Lcom/fsck/k9/mail/store/webdav/WebDavStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fsck/k9/mail/store/webdav/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;

    .line 103
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 3
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 108
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/fsck/k9/mail/Folder;->setFlags(Ljava/util/List;Ljava/util/Set;Z)V

    .line 109
    return-void
.end method

.method public setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 79
    return-void
.end method

.method public setNewHeaders(Lcom/fsck/k9/mail/store/webdav/ParsedMessageEnvelope;)V
    .locals 8
    .param p1, "envelope"    # Lcom/fsck/k9/mail/store/webdav/ParsedMessageEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/webdav/ParsedMessageEnvelope;->getHeaderList()[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "headers":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/webdav/ParsedMessageEnvelope;->getMessageHeaders()Ljava/util/Map;

    move-result-object v3

    .line 84
    .local v3, "messageHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, v2, v5

    .line 85
    .local v0, "header":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, "headerValue":Ljava/lang/String;
    const-string v7, "Content-Length"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 88
    .local v4, "size":I
    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->setSize(I)V

    .line 91
    .end local v4    # "size":I
    :cond_0
    if-eqz v1, :cond_1

    const-string v7, ""

    .line 92
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "header":Ljava/lang/String;
    .end local v1    # "headerValue":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->mSize:I

    .line 75
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 32
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    check-cast v5, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/webdav/WebDavFolder;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    :cond_1
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "urlParts":[Ljava/lang/String;
    array-length v3, v4

    .line 40
    .local v3, "length":I
    add-int/lit8 v5, v3, -0x1

    aget-object v0, v4, v5

    .line 42
    .local v0, "end":Ljava/lang/String;
    const-string v5, ""

    iput-object v5, p0, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->mUrl:Ljava/lang/String;

    .line 43
    const-string p1, ""

    .line 49
    :try_start_0
    invoke-static {v0}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v5, "\\+"

    const-string v6, "%20"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_3

    .line 57
    if-eqz v1, :cond_2

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    .line 53
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v5, "IllegalArgumentException caught in setUrl: "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "i":I
    :cond_2
    aget-object p1, v4, v1

    goto :goto_2

    .line 64
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavMessage;->mUrl:Ljava/lang/String;

    .line 67
    return-void
.end method

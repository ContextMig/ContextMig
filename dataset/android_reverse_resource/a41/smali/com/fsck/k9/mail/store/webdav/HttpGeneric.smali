.class public Lcom/fsck/k9/mail/store/webdav/HttpGeneric;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpGeneric.java"


# instance fields
.field public METHOD_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 19
    const-string v0, "POST"

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 35
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 19
    const-string v6, "POST"

    iput-object v6, p0, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    .line 37
    const-string v6, "Starting uri = \'%s\'"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "urlParts":[Ljava/lang/String;
    array-length v3, v5

    .line 41
    .local v3, "length":I
    add-int/lit8 v6, v3, -0x1

    aget-object v0, v5, v6

    .line 42
    .local v0, "end":Ljava/lang/String;
    const-string v4, ""

    .line 48
    .local v4, "url":Ljava/lang/String;
    if-le v3, v11, :cond_0

    .line 49
    :try_start_0
    invoke-static {v0}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/fsck/k9/mail/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v6, "\\+"

    const-string v7, "%20"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v6, v3, -0x1

    if-ge v1, v6, :cond_2

    .line 58
    if-eqz v1, :cond_1

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    .line 54
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v6, "IllegalArgumentException caught in HttpGeneric(String uri): %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-static {v2, v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "i":I
    :cond_1
    aget-object v4, v5, v1

    goto :goto_2

    .line 64
    :cond_2
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_WEBDAV:Z

    if-eqz v6, :cond_3

    .line 65
    const-string v6, "url = \'%s\' length = %s, end = \'%s\' length = %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    const-string v6, "url = %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setURI(Ljava/net/URI;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 19
    const-string v0, "POST"

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->setURI(Ljava/net/URI;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/fsck/k9/mail/store/webdav/HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    .line 82
    :cond_0
    return-void
.end method

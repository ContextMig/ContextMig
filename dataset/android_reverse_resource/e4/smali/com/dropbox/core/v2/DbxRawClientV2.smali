.class public abstract Lcom/dropbox/core/v2/DbxRawClientV2;
.super Ljava/lang/Object;
.source "DbxRawClientV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;
    }
.end annotation


# static fields
.field private static final JSON:Lcom/fasterxml/jackson/core/JsonFactory;

.field private static final RAND:Ljava/util/Random;

.field public static final USER_AGENT_ID:Ljava/lang/String; = "OfficialDropboxJavaSDKv2"


# instance fields
.field private final host:Lcom/dropbox/core/DbxHost;

.field private final requestConfig:Lcom/dropbox/core/DbxRequestConfig;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->JSON:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->RAND:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "host"    # Lcom/dropbox/core/DbxHost;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestConfig"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "host"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    .line 70
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->host:Lcom/dropbox/core/DbxHost;

    .line 71
    iput-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/DbxRawClientV2;)Lcom/dropbox/core/DbxRequestConfig;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/DbxRawClientV2;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    return-object v0
.end method

.method private static executeRetriable(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;
    .locals 4
    .param p0, "maxRetries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "execution":Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;, "Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution<TT;>;"
    if-nez p0, :cond_0

    .line 284
    invoke-interface {p1}, Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;->execute()Ljava/lang/Object;

    move-result-object v2

    .line 290
    :goto_0
    return-object v2

    .line 287
    :cond_0
    const/4 v1, 0x0

    .line 290
    .local v1, "retries":I
    :goto_1
    :try_start_0
    invoke-interface {p1}, Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/RetryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "ex":Lcom/dropbox/core/RetryException;
    if-ge v1, p0, :cond_1

    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 294
    invoke-virtual {v0}, Lcom/dropbox/core/RetryException;->getBackoffMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/dropbox/core/v2/DbxRawClientV2;->sleepQuietlyWithJitter(J)V

    goto :goto_1

    .line 296
    :cond_1
    throw v0
.end method

.method private static headerSafeJson(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "serializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 211
    .local v2, "out":Ljava/io/StringWriter;
    :try_start_0
    sget-object v3, Lcom/dropbox/core/v2/DbxRawClientV2;->JSON:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    .line 214
    .local v1, "g":Lcom/fasterxml/jackson/core/JsonGenerator;
    const/16 v3, 0x7e

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 215
    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 216
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 217
    .end local v1    # "g":Lcom/fasterxml/jackson/core/JsonGenerator;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "Impossible"

    invoke-static {v3, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private static sleepQuietlyWithJitter(J)V
    .locals 8
    .param p0, "millis"    # J

    .prologue
    .line 305
    sget-object v1, Lcom/dropbox/core/v2/DbxRawClientV2;->RAND:Ljava/util/Random;

    const/16 v6, 0x3e8

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v2, v1

    .line 306
    .local v2, "jitter":J
    add-long v4, p0, v2

    .line 308
    .local v4, "sleepMillis":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private static writeAsBytes(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "serializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TT;>;"
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v2, "Impossible"

    invoke-static {v2, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method protected abstract addAuthHeaders(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p4, "noAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            "ResT:",
            "Ljava/lang/Object;",
            "ErrT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TArgT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TResT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TErrT;>;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<TResT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 142
    .local p3, "arg":Ljava/lang/Object;, "TArgT;"
    .local p5, "extraHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    .local p6, "argSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TArgT;>;"
    .local p7, "responseSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TResT;>;"
    .local p8, "errorSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TErrT;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    .local v5, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    if-nez p4, :cond_0

    .line 144
    invoke-virtual {p0, v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->addAuthHeaders(Ljava/util/List;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {v5, v0}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    .line 147
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v1, "Dropbox-API-Arg"

    invoke-static {p6, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->headerSafeJson(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v0, 0x0

    new-array v4, v0, [B

    .line 152
    .local v4, "body":[B
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v8

    new-instance v0, Lcom/dropbox/core/v2/DbxRawClientV2$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2$2;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V

    iget-object v1, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    .line 195
    invoke-static {v0, v1}, Lcom/dropbox/core/v2/DbxRawClientV2$2;->access$200(Lcom/dropbox/core/v2/DbxRawClientV2$2;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;

    move-result-object v0

    .line 152
    invoke-static {v8, v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->executeRetriable(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/DbxDownloader;

    return-object v0
.end method

.method public getHost()Lcom/dropbox/core/DbxHost;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->host:Lcom/dropbox/core/DbxHost;

    return-object v0
.end method

.method public getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p4, "noAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            "ResT:",
            "Ljava/lang/Object;",
            "ErrT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TArgT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TResT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TErrT;>;)TResT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 90
    .local p3, "arg":Ljava/lang/Object;, "TArgT;"
    .local p5, "argSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TArgT;>;"
    .local p6, "responseSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TResT;>;"
    .local p7, "errorSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TErrT;>;"
    invoke-static {p5, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->writeAsBytes(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)[B

    move-result-object v4

    .line 91
    .local v4, "body":[B
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v5, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    if-nez p4, :cond_0

    .line 93
    invoke-virtual {p0, v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->addAuthHeaders(Ljava/util/List;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getNotify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {v5, v0}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    .line 100
    :cond_1
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/json; charset=utf-8"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v8

    new-instance v0, Lcom/dropbox/core/v2/DbxRawClientV2$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2$1;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V

    iget-object v1, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    .line 129
    invoke-static {v0, v1}, Lcom/dropbox/core/v2/DbxRawClientV2$1;->access$100(Lcom/dropbox/core/v2/DbxRawClientV2$1;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;

    move-result-object v0

    .line 102
    invoke-static {v8, v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->executeRetriable(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p4, "noAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TArgT;>;)",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 230
    .local p3, "arg":Ljava/lang/Object;, "TArgT;"
    .local p5, "argSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TArgT;>;"
    invoke-static {p1, p2}, Lcom/dropbox/core/DbxRequestUtil;->buildUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "uri":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    if-nez p4, :cond_0

    .line 233
    invoke-virtual {p0, v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->addAuthHeaders(Ljava/util/List;)V

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {v1, v3}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    .line 236
    new-instance v3, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v4, "Content-Type"

    const-string/jumbo v5, "application/octet-stream"

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    const-string/jumbo v4, "OfficialDropboxJavaSDKv2"

    invoke-static {v1, v3, v4}, Lcom/dropbox/core/DbxRequestUtil;->addUserAgentHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 238
    new-instance v3, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v4, "Dropbox-API-Arg"

    invoke-static {p5, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->headerSafeJson(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :try_start_0
    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v3}, Lcom/dropbox/core/DbxRequestConfig;->getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/dropbox/core/http/HttpRequestor;->startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "ex":Ljava/io/IOException;
    new-instance v3, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v3, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method

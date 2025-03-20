.class Lcom/dropbox/sync/android/NativeHttp;
.super Ljava/lang/Object;
.source "NativeHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/NativeHttp$3;,
        Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;,
        Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;,
        Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_HTTP:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final sContentLengthHeaderKey:Ljava/lang/String; = "Content-Length"

.field private static final sXDropboxRequestId:Ljava/lang/String; = "X-Dropbox-Request-ID"

.field private static final sXServerResponseTime:Ljava/lang/String; = "X-Server-Response-Time"


# instance fields
.field private final mBuffer:[B

.field private final mEnv:Lcom/dropbox/sync/android/NativeEnv;

.field private mIsShutDown:Z

.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mRequestor:Lcom/dropbox/sync/android/CoreHttpRequestor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/dropbox/sync/android/NativeHttp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    .line 676
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V

    .line 677
    invoke-static {}, Lcom/dropbox/sync/android/NativeHttp;->nativeClassInit()V

    .line 678
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/NativeHttp;->mIsShutDown:Z

    .line 68
    iput-object v1, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 69
    iput-object v1, p0, Lcom/dropbox/sync/android/NativeHttp;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    .line 70
    iput-object v1, p0, Lcom/dropbox/sync/android/NativeHttp;->mRequestor:Lcom/dropbox/sync/android/CoreHttpRequestor;

    .line 71
    iput-object v1, p0, Lcom/dropbox/sync/android/NativeHttp;->mBuffer:[B

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/NativeEnv;)V
    .locals 1
    .param p1, "nativeEnv"    # Lcom/dropbox/sync/android/NativeEnv;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/NativeHttp;->mIsShutDown:Z

    .line 55
    new-instance v0, Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreLogger;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 56
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeHttp;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    .line 57
    new-instance v0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeHttp;->mRequestor:Lcom/dropbox/sync/android/CoreHttpRequestor;

    .line 59
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeHttp;->mBuffer:[B

    .line 60
    return-void
.end method

.method static synthetic access$000(JJJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # J

    .prologue
    .line 28
    invoke-static/range {p0 .. p5}, Lcom/dropbox/sync/android/NativeHttp;->nativeUpdateFileProgress(JJJ)V

    return-void
.end method

.method private doGet(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headerNames"    # [Ljava/lang/String;
    .param p3, "headerValues"    # [Ljava/lang/String;
    .param p4, "responseTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v7, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v8, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    const-string v9, "Sending HTTP GET"

    invoke-virtual {v7, v8, v9}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance v7, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;-><init>(Lcom/dropbox/sync/android/DbxAccount;)V

    invoke-virtual {v7}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->startTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v7

    sget-object v8, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_get:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    invoke-virtual {v7, v8}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setMethod(Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setIsStreamingReq(Z)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v7

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setEndpoint(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v2

    .line 467
    .local v2, "event":Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    invoke-direct {p0, p2, p3}, Lcom/dropbox/sync/android/NativeHttp;->makeHeaders([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 469
    .local v3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/sync/android/CoreHttpRequestor$Header;>;"
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 470
    .local v1, "bodyOut":Ljava/io/ByteArrayOutputStream;
    iget-object v7, p0, Lcom/dropbox/sync/android/NativeHttp;->mRequestor:Lcom/dropbox/sync/android/CoreHttpRequestor;

    invoke-virtual {v7}, Lcom/dropbox/sync/android/CoreHttpRequestor;->startSingleRequest()Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;

    move-result-object v4

    .line 471
    .local v4, "req":Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;
    const/4 v0, 0x0

    .line 473
    .local v0, "bodyIn":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4, p1, v3, p4}, Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;->doGet(Ljava/lang/String;Ljava/lang/Iterable;I)Lcom/dropbox/sync/android/CoreHttpRequestor$Response;

    move-result-object v5

    .line 474
    .local v5, "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    iget v7, v5, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    invoke-virtual {v2, v7}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setHttpResponseCode(I)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v7

    invoke-static {v5}, Lcom/dropbox/sync/android/NativeHttp;->getServerResponseTime(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setXServerResponseTime(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v7

    invoke-static {v5}, Lcom/dropbox/sync/android/NativeHttp;->getsDropboxRequestId(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setXDropboxRequestId(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v7

    invoke-static {v5}, Lcom/dropbox/sync/android/NativeHttp;->getContentLength(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setContentLength(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 480
    iget-object v0, v5, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->body:Ljava/io/InputStream;

    .line 481
    iget-object v7, p0, Lcom/dropbox/sync/android/NativeHttp;->mBuffer:[B

    const/4 v8, 0x0

    invoke-static {v0, v1, v7, v8}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V

    .line 482
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 488
    .local v6, "respBytes":[B
    iget-object v7, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v8, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP GET status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v2}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v7

    array-length v8, v6

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setReadResponseBytes(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->log()V

    .line 493
    const/4 v2, 0x0

    .line 495
    new-instance v7, Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;

    iget v8, v5, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    invoke-direct {v7, v8, v6}, Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;-><init>(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    if-eqz v2, :cond_0

    .line 499
    invoke-virtual {v2}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->log()V

    .line 501
    :cond_0
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/io/Closeable;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v8}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V

    return-object v7

    .line 498
    .end local v5    # "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    .end local v6    # "respBytes":[B
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_1

    .line 499
    invoke-virtual {v2}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->log()V

    .line 501
    :cond_1
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/io/Closeable;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v8}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V

    throw v7
.end method

.method private doGetToFile(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headerNames"    # [Ljava/lang/String;
    .param p3, "headerValues"    # [Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "progressHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v5, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    const-string v17, "Sending HTTP GET"

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/NativeHttp;->makeHeaders([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 542
    .local v13, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/sync/android/CoreHttpRequestor$Header;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/NativeHttp;->mRequestor:Lcom/dropbox/sync/android/CoreHttpRequestor;

    invoke-virtual {v4}, Lcom/dropbox/sync/android/CoreHttpRequestor;->startSingleRequest()Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;

    move-result-object v14

    .line 543
    .local v14, "req":Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;
    const/4 v11, 0x0

    .line 544
    .local v11, "bodyIn":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 546
    .local v12, "bodyOut":Ljava/io/OutputStream;
    const/4 v4, -0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v13, v4}, Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;->doGet(Ljava/lang/String;Ljava/lang/Iterable;I)Lcom/dropbox/sync/android/CoreHttpRequestor$Response;

    move-result-object v15

    .line 547
    .local v15, "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    iget-object v11, v15, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->body:Ljava/io/InputStream;

    .line 551
    const/16 v4, 0xc8

    iget v5, v15, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    if-ne v4, v5, :cond_0

    .line 552
    invoke-static {v15}, Lcom/dropbox/sync/android/NativeHttp;->getContentLength(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)J

    move-result-wide v8

    .line 553
    .local v8, "contentLength":J
    move-wide/from16 v6, p5

    .line 554
    .local v6, "passProgressHandle":J
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dropbox/sync/android/NativeHttp;->mBuffer:[B

    move-object/from16 v18, v0

    new-instance v4, Lcom/dropbox/sync/android/NativeHttp$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/dropbox/sync/android/NativeHttp$1;-><init>(Lcom/dropbox/sync/android/NativeHttp;JJ)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v11, v0, v1, v4}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;[BLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V

    .line 561
    const/16 v16, 0x0

    .line 566
    .local v16, "respBytes":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v5, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "HTTP GET status "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v15, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v6    # "passProgressHandle":J
    .end local v8    # "contentLength":J
    :goto_0
    new-instance v4, Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;

    iget v5, v15, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0}, Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;-><init>(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/io/Closeable;

    const/16 v17, 0x0

    aput-object v12, v5, v17

    const/16 v17, 0x1

    aput-object v11, v5, v17

    const/16 v17, 0x2

    aput-object v14, v5, v17

    invoke-static {v5}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V

    return-object v4

    .line 569
    .end local v16    # "respBytes":[B
    :cond_0
    :try_start_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 570
    .local v10, "bodyArrayOut":Ljava/io/ByteArrayOutputStream;
    move-object v12, v10

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/NativeHttp;->mBuffer:[B

    const/4 v5, 0x0

    invoke-static {v11, v12, v4, v5}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V

    .line 572
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    .line 577
    .restart local v16    # "respBytes":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v5, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "HTTP GET status "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v15, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 583
    .end local v10    # "bodyArrayOut":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    .end local v16    # "respBytes":[B
    :catchall_0
    move-exception v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/io/Closeable;

    const/16 v17, 0x0

    aput-object v12, v5, v17

    const/16 v17, 0x1

    aput-object v11, v5, v17

    const/16 v17, 0x2

    aput-object v14, v5, v17

    invoke-static {v5}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V

    throw v4
.end method

.method private doPost(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headerNames"    # [Ljava/lang/String;
    .param p3, "headerValues"    # [Ljava/lang/String;
    .param p4, "requestData"    # [B
    .param p5, "responseTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v11, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v12, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    const-string v13, "Sending HTTP POST"

    invoke-virtual {v11, v12, v13}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v11, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;-><init>(Lcom/dropbox/sync/android/DbxAccount;)V

    invoke-virtual {v11}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->startTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v11

    sget-object v12, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_post:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    invoke-virtual {v11, v12}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setMethod(Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setIsStreamingReq(Z)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setEndpoint(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v11

    move-object/from16 v0, p4

    array-length v12, v0

    int-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setPostLength(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v5

    .line 405
    .local v5, "event":Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeHttp;->makeHeaders([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 408
    .local v6, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/sync/android/CoreHttpRequestor$Header;>;"
    new-instance v11, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;

    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-direct {v11, v12, v13}, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v11, p0, Lcom/dropbox/sync/android/NativeHttp;->mRequestor:Lcom/dropbox/sync/android/CoreHttpRequestor;

    invoke-virtual {v11}, Lcom/dropbox/sync/android/CoreHttpRequestor;->startSingleRequest()Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;

    move-result-object v7

    .line 411
    .local v7, "req":Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;
    const/4 v10, 0x0

    .line 412
    .local v10, "uploader":Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    const/4 v3, 0x0

    .line 413
    .local v3, "bodyOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 415
    .local v2, "bodyIn":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v5}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->startTimerForDurationRequest()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 416
    move-object/from16 v0, p4

    array-length v11, v0

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v7, v0, v6, v11, v1}, Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;->startPost(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;

    move-result-object v10

    .line 417
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    .end local v3    # "bodyOut":Ljava/io/ByteArrayOutputStream;
    .local v4, "bodyOut":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v11, v10, Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;->body:Ljava/io/OutputStream;

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 419
    invoke-virtual {v5}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDurationRequest()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 421
    invoke-virtual {v5}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->startTimerForDurationResponse()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 422
    invoke-virtual {v10}, Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;->finish()Lcom/dropbox/sync/android/CoreHttpRequestor$Response;

    move-result-object v8

    .line 423
    .local v8, "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    iget v11, v8, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    invoke-virtual {v5, v11}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setHttpResponseCode(I)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v11

    invoke-static {v8}, Lcom/dropbox/sync/android/NativeHttp;->getServerResponseTime(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setXServerResponseTime(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v11

    invoke-static {v8}, Lcom/dropbox/sync/android/NativeHttp;->getsDropboxRequestId(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setXDropboxRequestId(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v11

    invoke-static {v8}, Lcom/dropbox/sync/android/NativeHttp;->getContentLength(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setContentLength(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 428
    iget-object v2, v8, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->body:Ljava/io/InputStream;

    .line 429
    iget-object v11, p0, Lcom/dropbox/sync/android/NativeHttp;->mBuffer:[B

    const/4 v12, 0x0

    invoke-static {v2, v4, v11, v12}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V

    .line 430
    invoke-virtual {v5}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDurationResponse()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 432
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 438
    .local v9, "respBytes":[B
    iget-object v11, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v12, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HTTP POST status "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v5}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v11

    array-length v12, v9

    int-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setReadResponseBytes(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v11

    invoke-virtual {v11}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->log()V

    .line 443
    const/4 v5, 0x0

    .line 445
    new-instance v11, Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;

    iget v12, v8, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    invoke-direct {v11, v12, v9}, Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;-><init>(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 447
    if-eqz v5, :cond_0

    .line 448
    invoke-virtual {v5}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v12

    invoke-virtual {v12}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->log()V

    .line 450
    :cond_0
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/io/Closeable;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    const/4 v13, 0x2

    aput-object v2, v12, v13

    const/4 v13, 0x3

    aput-object v7, v12, v13

    invoke-static {v12}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V

    return-object v11

    .line 447
    .end local v4    # "bodyOut":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    .end local v9    # "respBytes":[B
    .restart local v3    # "bodyOut":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v11

    :goto_0
    if-eqz v5, :cond_1

    .line 448
    invoke-virtual {v5}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v12

    invoke-virtual {v12}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->log()V

    .line 450
    :cond_1
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/io/Closeable;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    const/4 v13, 0x2

    aput-object v2, v12, v13

    const/4 v13, 0x3

    aput-object v7, v12, v13

    invoke-static {v12}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V

    throw v11

    .line 447
    .end local v3    # "bodyOut":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bodyOut":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "bodyOut":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bodyOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_0
.end method

.method private doPostStreaming(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headerNames"    # [Ljava/lang/String;
    .param p3, "headerValues"    # [Ljava/lang/String;
    .param p4, "requestData"    # [B
    .param p5, "responseTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v11, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    const-string v12, "Sending HTTP POST"

    invoke-virtual {v3, v11, v12}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v3, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    const/4 v11, 0x0

    invoke-direct {v3, v11}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;-><init>(Lcom/dropbox/sync/android/DbxAccount;)V

    sget-object v11, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_post:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    invoke-virtual {v3, v11}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setMethod(Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v3

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setIsStreamingReq(Z)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setEndpoint(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v3

    move-object/from16 v0, p4

    array-length v11, v0

    int-to-double v12, v11

    invoke-virtual {v3, v12, v13}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setPostLength(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->startTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v7

    .line 186
    .local v7, "event":Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/NativeHttp;->makeHeaders([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 188
    .local v9, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/sync/android/CoreHttpRequestor$Header;>;"
    new-instance v3, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;

    const-string v11, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-direct {v3, v11, v12}, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeHttp;->mRequestor:Lcom/dropbox/sync/android/CoreHttpRequestor;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/CoreHttpRequestor;->startSingleRequest()Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;

    move-result-object v6

    .line 191
    .local v6, "req":Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;
    const/4 v5, 0x0

    .line 192
    .local v5, "uploader":Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    const/4 v4, 0x0

    .line 193
    .local v4, "bodyIn":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 195
    .local v8, "didHandoff":Z
    :try_start_0
    invoke-virtual {v7}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->startTimerForDurationRequest()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 196
    move-object/from16 v0, p4

    array-length v3, v0

    move/from16 v0, p5

    invoke-virtual {v6, p1, v9, v3, v0}, Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;->startPost(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;

    move-result-object v5

    .line 197
    iget-object v3, v5, Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;->body:Ljava/io/OutputStream;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 198
    invoke-virtual {v7}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDurationRequest()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 200
    invoke-virtual {v7}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->startTimerForDurationResponse()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 201
    invoke-virtual {v5}, Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;->finish()Lcom/dropbox/sync/android/CoreHttpRequestor$Response;

    move-result-object v10

    .line 202
    .local v10, "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    iget-object v4, v10, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->body:Ljava/io/InputStream;

    .line 207
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v11, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HTTP POST status "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget v3, v10, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    invoke-virtual {v7, v3}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setHttpResponseCode(I)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v3

    invoke-static {v10}, Lcom/dropbox/sync/android/NativeHttp;->getServerResponseTime(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setXServerResponseTime(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v3

    invoke-static {v10}, Lcom/dropbox/sync/android/NativeHttp;->getsDropboxRequestId(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setXDropboxRequestId(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v3

    invoke-static {v10}, Lcom/dropbox/sync/android/NativeHttp;->getContentLength(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-virtual {v3, v12, v13}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setContentLength(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 215
    new-instance v2, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;

    iget v3, v10, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    invoke-direct/range {v2 .. v7}, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;-><init>(ILjava/io/InputStream;Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .local v2, "response":Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;
    const/4 v8, 0x1

    .line 219
    if-nez v8, :cond_0

    .line 222
    invoke-virtual {v7}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->log()V

    .line 224
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v5, v3, v11

    const/4 v11, 0x1

    aput-object v4, v3, v11

    const/4 v11, 0x2

    aput-object v6, v3, v11

    invoke-static {v3}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V

    :cond_0
    return-object v2

    .line 219
    .end local v2    # "response":Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;
    .end local v10    # "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    :catchall_0
    move-exception v3

    if-nez v8, :cond_1

    .line 222
    invoke-virtual {v7}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v11

    invoke-virtual {v11}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->log()V

    .line 224
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/io/Closeable;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v6, v11, v12

    invoke-static {v11}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V

    :cond_1
    throw v3
.end method

.method private doPutFile(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JJJ)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    .locals 25
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headerNames"    # [Ljava/lang/String;
    .param p3, "headerValues"    # [Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "startOffset"    # J
    .param p7, "length"    # J
    .param p9, "progressHandle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v5, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    const-string v8, "Sending HTTP PUT"

    invoke-virtual {v4, v5, v8}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/NativeHttp;->makeHeaders([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 599
    .local v19, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/sync/android/CoreHttpRequestor$Header;>;"
    new-instance v4, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;

    const-string v5, "Content-Type"

    const-string v8, "application/octet-stream"

    invoke-direct {v4, v5, v8}, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/NativeHttp;->mRequestor:Lcom/dropbox/sync/android/CoreHttpRequestor;

    invoke-virtual {v4}, Lcom/dropbox/sync/android/CoreHttpRequestor;->startSingleRequest()Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;

    move-result-object v20

    .line 606
    .local v20, "req":Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;
    const/4 v4, -0x1

    const/4 v5, -0x1

    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;->startPut(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v23

    .line 608
    .local v23, "uploader":Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    const/16 v21, 0x0

    .line 609
    .local v21, "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    const/16 v17, 0x0

    .line 612
    .local v17, "bodyIn":Ljava/io/InputStream;
    move-wide/from16 v6, p9

    .line 613
    .local v6, "passProgressHandle":J
    :try_start_1
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;->body:Ljava/io/OutputStream;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dropbox/sync/android/NativeHttp;->mBuffer:[B

    new-instance v4, Lcom/dropbox/sync/android/NativeHttp$2;

    move-object/from16 v5, p0

    move-wide/from16 v8, p7

    invoke-direct/range {v4 .. v9}, Lcom/dropbox/sync/android/NativeHttp$2;-><init>(Lcom/dropbox/sync/android/NativeHttp;JJ)V

    move-object v9, v12

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move-object/from16 v16, v4

    invoke-static/range {v9 .. v16}, Lcom/dropbox/sync/android/CoreIOUtil;->copyFileToStream(Ljava/io/File;Ljava/io/OutputStream;[BJJLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V

    .line 621
    invoke-virtual/range {v23 .. v23}, Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;->finish()Lcom/dropbox/sync/android/CoreHttpRequestor$Response;

    move-result-object v21

    .line 622
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->body:Ljava/io/InputStream;

    move-object/from16 v17, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;->close()V

    .line 628
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 630
    .local v18, "bodyOut":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/NativeHttp;->mBuffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4, v5}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V

    .line 631
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    .line 636
    .local v22, "respBytes":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v5, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP PUT status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    iget v9, v0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance v4, Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->statusCode:I

    move-object/from16 v0, v22

    invoke-direct {v4, v5, v0}, Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;-><init>(I[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 641
    const/4 v5, 0x2

    :try_start_4
    new-array v5, v5, [Ljava/io/Closeable;

    const/4 v8, 0x0

    aput-object v18, v5, v8

    const/4 v8, 0x1

    aput-object v17, v5, v8

    invoke-static {v5}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 644
    invoke-virtual/range {v20 .. v20}, Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;->close()V

    return-object v4

    .line 624
    .end local v18    # "bodyOut":Ljava/io/ByteArrayOutputStream;
    .end local v22    # "respBytes":[B
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;->close()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 644
    .end local v6    # "passProgressHandle":J
    .end local v17    # "bodyIn":Ljava/io/InputStream;
    .end local v21    # "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    .end local v23    # "uploader":Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    :catchall_1
    move-exception v4

    invoke-virtual/range {v20 .. v20}, Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;->close()V

    throw v4

    .line 641
    .restart local v6    # "passProgressHandle":J
    .restart local v17    # "bodyIn":Ljava/io/InputStream;
    .restart local v18    # "bodyOut":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "resp":Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    .restart local v23    # "uploader":Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    :catchall_2
    move-exception v4

    const/4 v5, 0x2

    :try_start_6
    new-array v5, v5, [Ljava/io/Closeable;

    const/4 v8, 0x0

    aput-object v18, v5, v8

    const/4 v8, 0x1

    aput-object v17, v5, v8

    invoke-static {v5}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method private static getContentLength(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)J
    .locals 2
    .param p0, "resp"    # Lcom/dropbox/sync/android/CoreHttpRequestor$Response;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->headers:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->headers:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 510
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getNativeErrorInfo(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;
    .locals 7
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/dropbox/sync/android/NativeHttp;->isShutDown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v4, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " request canceled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/dropbox/sync/android/CoreLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v3, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;

    sget-object v4, Lcom/dropbox/sync/android/DbxError;->SHUTDOWN:Lcom/dropbox/sync/android/DbxError;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;-><init>(Lcom/dropbox/sync/android/DbxError;I)V

    .line 377
    :goto_0
    return-object v3

    .line 332
    :cond_0
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v4, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    instance-of v3, p2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_1

    instance-of v3, p2, Ljava/lang/Error;

    if-eqz v3, :cond_2

    .line 337
    :cond_1
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v4, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    invoke-static {p2, v3, v4}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 341
    :cond_2
    instance-of v3, p2, Ljava/io/IOException;

    if-nez v3, :cond_3

    .line 342
    new-instance v3, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;

    sget-object v4, Lcom/dropbox/sync/android/DbxError;->INTERNAL:Lcom/dropbox/sync/android/DbxError;

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;-><init>(Lcom/dropbox/sync/android/DbxError;I)V

    goto :goto_0

    :cond_3
    move-object v1, p2

    .line 344
    check-cast v1, Ljava/io/IOException;

    .line 348
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->NETWORK:Lcom/dropbox/sync/android/DbxError;

    .line 349
    .local v0, "errCode":Lcom/dropbox/sync/android/DbxError;
    const/4 v2, 0x2

    .line 350
    .local v2, "logLevel":I
    instance-of v3, v1, Lcom/dropbox/sync/android/CoreIOUtil$FileReadException;

    if-nez v3, :cond_4

    instance-of v3, v1, Lcom/dropbox/sync/android/CoreIOUtil$FileWriteException;

    if-eqz v3, :cond_5

    .line 353
    :cond_4
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->SYSTEM:Lcom/dropbox/sync/android/DbxError;

    .line 354
    const/4 v2, 0x2

    .line 355
    check-cast v1, Lcom/dropbox/sync/android/CoreIOUtil$WrappedException;

    .end local v1    # "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreIOUtil$WrappedException;->getUnderlying()Ljava/io/IOException;

    move-result-object v1

    .line 357
    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_5
    instance-of v3, v1, Lcom/dropbox/sync/android/CoreIOUtil$ReadException;

    if-nez v3, :cond_6

    instance-of v3, v1, Lcom/dropbox/sync/android/CoreIOUtil$WriteException;

    if-eqz v3, :cond_7

    .line 360
    :cond_6
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->NETWORK:Lcom/dropbox/sync/android/DbxError;

    .line 361
    const/4 v2, 0x1

    .line 362
    check-cast v1, Lcom/dropbox/sync/android/CoreIOUtil$WrappedException;

    .end local v1    # "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreIOUtil$WrappedException;->getUnderlying()Ljava/io/IOException;

    move-result-object v1

    .line 366
    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_7
    instance-of v3, v1, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_9

    .line 367
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->TIMEOUT:Lcom/dropbox/sync/android/DbxError;

    .line 368
    const/4 v2, 0x1

    .line 377
    :cond_8
    :goto_1
    new-instance v3, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;

    invoke-direct {v3, v0, v2}, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;-><init>(Lcom/dropbox/sync/android/DbxError;I)V

    goto/16 :goto_0

    .line 369
    :cond_9
    instance-of v3, v1, Ljava/net/ConnectException;

    if-eqz v3, :cond_a

    .line 370
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->CONNECTION:Lcom/dropbox/sync/android/DbxError;

    .line 371
    const/4 v2, 0x1

    goto :goto_1

    .line 372
    :cond_a
    instance-of v3, v1, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_8

    .line 373
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->SSL:Lcom/dropbox/sync/android/DbxError;

    .line 374
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private static getServerResponseTime(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)Ljava/lang/String;
    .locals 2
    .param p0, "resp"    # Lcom/dropbox/sync/android/CoreHttpRequestor$Response;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->headers:Ljava/util/Map;

    const-string v1, "X-Server-Response-Time"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->headers:Ljava/util/Map;

    const-string v1, "X-Server-Response-Time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 519
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getsDropboxRequestId(Lcom/dropbox/sync/android/CoreHttpRequestor$Response;)Ljava/lang/String;
    .locals 2
    .param p0, "resp"    # Lcom/dropbox/sync/android/CoreHttpRequestor$Response;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->headers:Ljava/util/Map;

    const-string v1, "X-Dropbox-Request-ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreHttpRequestor$Response;->headers:Ljava/util/Map;

    const-string v1, "X-Dropbox-Request-ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleHttpError(Ljava/lang/String;Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 290
    new-instance v3, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;-><init>(Lcom/dropbox/sync/android/DbxAccount;)V

    invoke-virtual {v3, p2}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->setMethod(Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->setEndpoint(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->setExceptionTypeName(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->setExceptionMessage(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;

    move-result-object v0

    .line 295
    .local v0, "event":Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->setCauseTypeName(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;

    .line 297
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->setCauseMessage(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;

    .line 299
    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->log()V

    .line 302
    :try_start_0
    invoke-direct {p0, p2}, Lcom/dropbox/sync/android/NativeHttp;->prettyMethodNameForLogging(Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/dropbox/sync/android/NativeHttp;->getNativeErrorInfo(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;

    move-result-object v1

    .line 303
    .local v1, "info":Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;
    iget-object v3, v1, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;->dbxError:Lcom/dropbox/sync/android/DbxError;

    sget-object v4, Lcom/dropbox/sync/android/DbxError;->SHUTDOWN:Lcom/dropbox/sync/android/DbxError;

    if-ne v3, v4, :cond_1

    .line 307
    iget-object v3, v1, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;->dbxError:Lcom/dropbox/sync/android/DbxError;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxError;->getNativeCode()I

    move-result v3

    iget v4, v1, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;->logLevel:I

    const-string v5, "HTTP request canceled."

    invoke-static {v3, v4, v5}, Lcom/dropbox/sync/android/CoreLogger;->setErrorStatus(IILjava/lang/String;)Z

    .line 317
    .end local v1    # "info":Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;
    :goto_0
    return-void

    .line 310
    .restart local v1    # "info":Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;
    :cond_1
    iget-object v3, v1, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;->dbxError:Lcom/dropbox/sync/android/DbxError;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxError;->getNativeCode()I

    move-result v4

    iget v5, v1, Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;->logLevel:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/dropbox/sync/android/CoreLogger;->setErrorStatus(IILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v1    # "info":Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;
    :catch_0
    move-exception v2

    .line 315
    .local v2, "tt":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v4, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    const-string v5, "Failed to set error code: "

    invoke-virtual {v3, v4, v5, v2}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 310
    .end local v2    # "tt":Ljava/lang/Throwable;
    .restart local v1    # "info":Lcom/dropbox/sync/android/NativeHttp$HttpErrorInfo;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method private httpGetToFile(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headerNames"    # [Ljava/lang/String;
    .param p3, "headerValues"    # [Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "progressHandle"    # J

    .prologue
    .line 256
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/sync/android/NativeHttp;->doGetToFile(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_get_to_file:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    invoke-direct {p0, p1, v1, v0}, Lcom/dropbox/sync/android/NativeHttp;->handleHttpError(Ljava/lang/String;Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;Ljava/lang/Throwable;)V

    .line 259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private httpPutFile(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JJJ)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headerNames"    # [Ljava/lang/String;
    .param p3, "headerValues"    # [Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "startOffset"    # J
    .param p7, "length"    # J
    .param p9, "progressHandle"    # J

    .prologue
    .line 267
    :try_start_0
    invoke-direct/range {p0 .. p10}, Lcom/dropbox/sync/android/NativeHttp;->doPutFile(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JJJ)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_put_file:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    invoke-direct {p0, p1, v1, v0}, Lcom/dropbox/sync/android/NativeHttp;->handleHttpError(Ljava/lang/String;Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;Ljava/lang/Throwable;)V

    .line 270
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private httpRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headerNames"    # [Ljava/lang/String;
    .param p3, "headerValues"    # [Ljava/lang/String;
    .param p4, "requestData"    # [B
    .param p5, "responseTimeout"    # I

    .prologue
    .line 158
    if-eqz p4, :cond_0

    .line 159
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/sync/android/NativeHttp;->doPost(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 161
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/dropbox/sync/android/NativeHttp;->doGet(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Lcom/dropbox/sync/android/NativeHttp$NativeHttpResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "t":Ljava/lang/Throwable;
    if-nez p4, :cond_1

    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_get:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/dropbox/sync/android/NativeHttp;->handleHttpError(Ljava/lang/String;Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;Ljava/lang/Throwable;)V

    .line 165
    const/4 v1, 0x0

    goto :goto_0

    .line 164
    :cond_1
    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_post:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    goto :goto_1
.end method

.method private httpShutDown()V
    .locals 3

    .prologue
    .line 146
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/dropbox/sync/android/NativeHttp;->setShutDown(Z)V

    .line 147
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeHttp;->mRequestor:Lcom/dropbox/sync/android/CoreHttpRequestor;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreHttpRequestor;->shutDown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeHttp;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/NativeHttp;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private httpStreamingRequest(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headerNames"    # [Ljava/lang/String;
    .param p3, "headerValues"    # [Ljava/lang/String;
    .param p4, "requestData"    # [B
    .param p5, "responseTimeout"    # I

    .prologue
    const/4 v2, 0x0

    .line 235
    if-eqz p4, :cond_0

    .line 236
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/sync/android/NativeHttp;->doPostStreaming(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;

    move-result-object v1

    .line 247
    :goto_0
    return-object v1

    .line 240
    :cond_0
    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_get:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    new-instance v3, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    const-string v4, "doGetStreaming not yet implemented"

    invoke-direct {v3, v4}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/dropbox/sync/android/NativeHttp;->handleHttpError(Ljava/lang/String;Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 243
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "t":Ljava/lang/Throwable;
    if-nez p4, :cond_1

    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_get:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/dropbox/sync/android/NativeHttp;->handleHttpError(Ljava/lang/String;Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 247
    goto :goto_0

    .line 246
    :cond_1
    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_post:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    goto :goto_1
.end method

.method private declared-synchronized isShutDown()Z
    .locals 1

    .prologue
    .line 667
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/NativeHttp;->mIsShutDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeHeaders([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "headerNames"    # [Ljava/lang/String;
    .param p2, "headerValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    .local v0, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/sync/android/CoreHttpRequestor$Header;>;"
    invoke-direct {p0}, Lcom/dropbox/sync/android/NativeHttp;->makeUserAgentHeader()Lcom/dropbox/sync/android/CoreHttpRequestor$Header;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 385
    new-instance v2, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-direct {v2, v3, v4}, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_0
    return-object v0
.end method

.method private makeUserAgentHeader()Lcom/dropbox/sync/android/CoreHttpRequestor$Header;
    .locals 3

    .prologue
    .line 649
    new-instance v0, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/dropbox/sync/android/NativeHttp;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/NativeEnv;->getConfig()Lcom/dropbox/sync/android/NativeEnv$Config;

    move-result-object v2

    iget-object v2, v2, Lcom/dropbox/sync/android/NativeEnv$Config;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeUpdateFileProgress(JJJ)V
.end method

.method private prettyMethodNameForLogging(Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;)Ljava/lang/String;
    .locals 2
    .param p1, "httpMethod"    # Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    .prologue
    .line 275
    sget-object v0, Lcom/dropbox/sync/android/NativeHttp$3;->$SwitchMap$com$dropbox$sync$android$analytics$HttpRequestEvents$HttpMethod:[I

    invoke-virtual {p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 285
    invoke-virtual {p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 277
    :pswitch_0
    const-string v0, "GET"

    goto :goto_0

    .line 279
    :pswitch_1
    const-string v0, "POST"

    goto :goto_0

    .line 281
    :pswitch_2
    const-string v0, "PUT-file"

    goto :goto_0

    .line 283
    :pswitch_3
    const-string v0, "GET-to-file"

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized setShutDown(Z)V
    .locals 1
    .param p1, "isShutDown"    # Z

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/dropbox/sync/android/NativeHttp;->mIsShutDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    monitor-exit p0

    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

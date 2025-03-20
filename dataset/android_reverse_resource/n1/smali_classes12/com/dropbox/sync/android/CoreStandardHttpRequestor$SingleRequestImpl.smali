.class Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;
.super Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;
.source "CoreStandardHttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreStandardHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleRequestImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;
    }
.end annotation


# instance fields
.field private mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConn:Ljavax/net/ssl/HttpsURLConnection;

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mStarted:Z

.field private mUploader:Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;

.field final synthetic this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/CoreStandardHttpRequestor;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;-><init>(Lcom/dropbox/sync/android/CoreHttpRequestor;)V

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    iput-boolean v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mStarted:Z

    .line 159
    iput-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 160
    iput-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mUploader:Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;

    .line 161
    iput-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mInputStream:Ljava/io/InputStream;

    .line 162
    iput-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mOutputStream:Ljava/io/OutputStream;

    .line 164
    return-void
.end method

.method static synthetic access$600(Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$700(Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;
    .param p1, "x1"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->setInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method private prepRequest(Ljava/lang/String;Ljava/lang/Iterable;I)Ljavax/net/ssl/HttpsURLConnection;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "responseTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Header;",
            ">;I)",
            "Ljavax/net/ssl/HttpsURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/sync/android/CoreHttpRequestor$Header;>;"
    const/16 v6, 0x7530

    const/4 v5, 0x0

    .line 390
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 391
    .local v3, "urlObject":Ljava/net/URL;
    iget-object v4, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    invoke-static {v4}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$800(Lcom/dropbox/sync/android/CoreStandardHttpRequestor;)Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 395
    .local v0, "conn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$900()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 399
    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SSLSocketFactoryWrapper;->getInstance()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 402
    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 403
    invoke-static {p3, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 404
    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 405
    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    .line 406
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;

    .line 407
    .local v1, "header":Lcom/dropbox/sync/android/CoreHttpRequestor$Header;
    iget-object v4, v1, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;->key:Ljava/lang/String;

    iget-object v5, v1, Lcom/dropbox/sync/android/CoreHttpRequestor$Header;->value:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    .end local v1    # "header":Lcom/dropbox/sync/android/CoreHttpRequestor$Header;
    :cond_0
    return-object v0
.end method

.method private setConn(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 2
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    monitor-enter v1

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->checkCanceled()V

    .line 180
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setInputStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    monitor-enter v1

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->checkCanceled()V

    .line 194
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mInputStream:Ljava/io/InputStream;

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setOutputStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    monitor-enter v1

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->checkCanceled()V

    .line 201
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mOutputStream:Ljava/io/OutputStream;

    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setUploader(Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;)V
    .locals 2
    .param p1, "uploader"    # Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    monitor-enter v1

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->checkCanceled()V

    .line 187
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mUploader:Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    iget-object v6, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    monitor-enter v6

    .line 275
    :try_start_0
    iget-boolean v7, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mStarted:Z

    if-nez v7, :cond_0

    .line 276
    monitor-exit v6

    .line 307
    :goto_0
    return v4

    .line 284
    :cond_0
    invoke-static {}, Lcom/dropbox/sync/android/CoreAndroidUtil;->isUiThread()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 287
    iget-object v7, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mUploader:Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mInputStream:Ljava/io/InputStream;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v7, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 291
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 292
    .local v0, "cancelConn":Ljavax/net/ssl/HttpsURLConnection;
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mUploader:Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;

    .line 293
    .local v3, "cancelUploader":Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mInputStream:Ljava/io/InputStream;

    .line 294
    .local v1, "cancelInput":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mOutputStream:Ljava/io/OutputStream;

    .line 295
    .local v2, "cancelOutput":Ljava/io/OutputStream;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    iget-object v6, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    invoke-static {v6}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$200(Lcom/dropbox/sync/android/CoreStandardHttpRequestor;)Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v6

    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Failed to close HTTP stream."

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/io/Closeable;

    new-instance v10, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$ConnectionCloser;

    invoke-direct {v10, v0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$ConnectionCloser;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    aput-object v10, v9, v4

    aput-object v3, v9, v5

    const/4 v5, 0x2

    aput-object v1, v9, v5

    const/4 v5, 0x3

    aput-object v2, v9, v5

    invoke-static {v6, v7, v8, v9}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAllLoggingErrors(Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;Ljava/lang/String;[Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method public checkCanceled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    invoke-static {v0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$000(Lcom/dropbox/sync/android/CoreStandardHttpRequestor;)V

    .line 168
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    invoke-static {v0, p0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$400(Lcom/dropbox/sync/android/CoreStandardHttpRequestor;Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;)V

    .line 323
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public doGet(Ljava/lang/String;Ljava/lang/Iterable;I)Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "responseTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Header;",
            ">;I)",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/sync/android/CoreHttpRequestor$Header;>;"
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    monitor-enter v3

    .line 209
    :try_start_0
    iget-boolean v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mStarted:Z

    if-eqz v2, :cond_0

    .line 210
    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v4, "Can\'t use SingleRequest for more than one request."

    invoke-direct {v2, v4}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 212
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mStarted:Z

    .line 213
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->prepRequest(Ljava/lang/String;Ljava/lang/Iterable;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->setConn(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 214
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 219
    :try_start_2
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 223
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    invoke-direct {p0, v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->setInputStream(Ljava/io/InputStream;)V

    .line 224
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v2, v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$100(Ljavax/net/ssl/HttpsURLConnection;Ljava/io/InputStream;)Lcom/dropbox/sync/android/CoreHttpRequestor$Response;

    move-result-object v2

    return-object v2

    .line 220
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v1, "SingleRequest not closed before finalization."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    return-void
.end method

.method public bridge synthetic startPost(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Iterable;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->startPost(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;

    move-result-object v0

    return-object v0
.end method

.method public startPost(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "contentLength"    # I
    .param p4, "responseTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Header;",
            ">;II)",
            "Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/sync/android/CoreHttpRequestor$Header;>;"
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    monitor-enter v2

    .line 232
    :try_start_0
    iget-boolean v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mStarted:Z

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v3, "Can\'t use SingleRequest for more than one request."

    invoke-direct {v1, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 235
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mStarted:Z

    .line 236
    invoke-direct {p0, p1, p2, p4}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->prepRequest(Ljava/lang/String;Ljava/lang/Iterable;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->setConn(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 237
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0, v1, p3}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;-><init>(Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;Ljavax/net/ssl/HttpsURLConnection;I)V

    .line 240
    .local v0, "up":Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;
    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->setUploader(Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;)V

    .line 241
    return-object v0
.end method

.method public bridge synthetic startPut(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Iterable;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->startPut(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;

    move-result-object v0

    return-object v0
.end method

.method public startPut(Ljava/lang/String;Ljava/lang/Iterable;II)Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "contentLength"    # I
    .param p4, "responseTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/sync/android/CoreHttpRequestor$Header;",
            ">;II)",
            "Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/dropbox/sync/android/CoreHttpRequestor$Header;>;"
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    monitor-enter v2

    .line 249
    :try_start_0
    iget-boolean v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mStarted:Z

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v3, "Can\'t use SingleRequest for more than one request."

    invoke-direct {v1, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 252
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mStarted:Z

    .line 253
    invoke-direct {p0, p1, p2, p4}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->prepRequest(Ljava/lang/String;Ljava/lang/Iterable;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->setConn(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 254
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "PUT"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;

    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0, v1, p3}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;-><init>(Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;Ljavax/net/ssl/HttpsURLConnection;I)V

    .line 257
    .local v0, "up":Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;
    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->setUploader(Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;)V

    .line 258
    return-object v0
.end method

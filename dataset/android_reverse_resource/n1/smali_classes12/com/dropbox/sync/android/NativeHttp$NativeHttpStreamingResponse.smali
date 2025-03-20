.class Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;
.super Ljava/lang/Object;
.source "NativeHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeHttpStreamingResponse"
.end annotation


# instance fields
.field private final event:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

.field private mBytesRead:J

.field private final request:Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;

.field public final responseCode:I

.field private final responseStream:Ljava/io/InputStream;

.field private final uploader:Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;


# direct methods
.method constructor <init>(ILjava/io/InputStream;Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "responseStream"    # Ljava/io/InputStream;
    .param p3, "uploader"    # Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
    .param p4, "request"    # Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;
    .param p5, "event"    # Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->mBytesRead:J

    .line 109
    iput-object p4, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->request:Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;

    .line 110
    iput p1, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->responseCode:I

    .line 111
    iput-object p2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->responseStream:Ljava/io/InputStream;

    .line 112
    iput-object p3, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->uploader:Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;

    .line 113
    iput-object p5, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->event:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    .line 114
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->uploader:Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->responseStream:Ljava/io/InputStream;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->request:Lcom/dropbox/sync/android/CoreHttpRequestor$SingleRequest;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/dropbox/sync/android/CoreIOUtil;->closeAll([Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->event:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDurationResponse()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->mBytesRead:J

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setReadResponseBytes(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->log()V

    .line 126
    return-void

    .line 121
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->event:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDurationResponse()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v1

    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->mBytesRead:J

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->setReadResponseBytes(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->log()V

    throw v0
.end method

.method public read([B)I
    .locals 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 130
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->responseStream:Ljava/io/InputStream;

    if-nez v2, :cond_1

    move v0, v1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->responseStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 135
    .local v0, "read":I
    if-eq v0, v1, :cond_0

    .line 136
    iget-wide v2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->mBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dropbox/sync/android/NativeHttp$NativeHttpStreamingResponse;->mBytesRead:J

    goto :goto_0
.end method

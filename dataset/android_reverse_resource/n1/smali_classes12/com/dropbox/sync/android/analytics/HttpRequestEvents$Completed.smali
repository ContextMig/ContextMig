.class public Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
.super Lcom/dropbox/sync/android/AnalyticsEvent;
.source "HttpRequestEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/analytics/HttpRequestEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Completed"
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 0
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/AnalyticsEvent;-><init>(Lcom/dropbox/sync/android/DbxAccount;)V

    .line 21
    return-void
.end method


# virtual methods
.method public log()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "event"

    const-string v1, "http_request.completed"

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 107
    invoke-super {p0}, Lcom/dropbox/sync/android/AnalyticsEvent;->log()V

    .line 108
    return-void
.end method

.method public setContentLength(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 3
    .param p1, "contentLength"    # D

    .prologue
    .line 60
    const-string v0, "content_length"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 61
    return-object p0
.end method

.method public setEndpoint(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "endpoint"

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 35
    return-object p0
.end method

.method public setHttpResponseCode(I)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 2
    .param p1, "httpResponseCode"    # I

    .prologue
    .line 50
    const-string v0, "http_response_code"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 51
    return-object p0
.end method

.method public setIsStreamingReq(Z)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 2
    .param p1, "isStreamingReq"    # Z

    .prologue
    .line 100
    const-string v1, "is_streaming_req"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 101
    return-object p0

    .line 100
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setMethod(Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 2
    .param p1, "method"    # Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    .prologue
    .line 28
    const-string v0, "method"

    invoke-virtual {p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 29
    return-object p0
.end method

.method public setPostLength(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 3
    .param p1, "postLength"    # D

    .prologue
    .line 39
    const-string v0, "post_length"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 40
    return-object p0
.end method

.method public setReadResponseBytes(D)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 3
    .param p1, "readResponseBytes"    # D

    .prologue
    .line 65
    const-string v0, "read_response_bytes"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 66
    return-object p0
.end method

.method public setXDropboxRequestId(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 1
    .param p1, "xDropboxRequestId"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "x_dropbox_request_id"

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 45
    return-object p0
.end method

.method public setXServerResponseTime(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 1
    .param p1, "xServerResponseTime"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "x_server_response_time"

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 56
    return-object p0
.end method

.method public startTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 1

    .prologue
    .line 70
    const-string v0, "duration_ms"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->startTimerForKey(Ljava/lang/String;)V

    .line 71
    return-object p0
.end method

.method public startTimerForDurationRequest()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 1

    .prologue
    .line 80
    const-string v0, "duration_request_ms"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->startTimerForKey(Ljava/lang/String;)V

    .line 81
    return-object p0
.end method

.method public startTimerForDurationResponse()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 1

    .prologue
    .line 90
    const-string v0, "duration_response_ms"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->startTimerForKey(Ljava/lang/String;)V

    .line 91
    return-object p0
.end method

.method public stopTimerForDuration()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 1

    .prologue
    .line 75
    const-string v0, "duration_ms"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForKey(Ljava/lang/String;)V

    .line 76
    return-object p0
.end method

.method public stopTimerForDurationRequest()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 1

    .prologue
    .line 85
    const-string v0, "duration_request_ms"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForKey(Ljava/lang/String;)V

    .line 86
    return-object p0
.end method

.method public stopTimerForDurationResponse()Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;
    .locals 1

    .prologue
    .line 95
    const-string v0, "duration_response_ms"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Completed;->stopTimerForKey(Ljava/lang/String;)V

    .line 96
    return-object p0
.end method

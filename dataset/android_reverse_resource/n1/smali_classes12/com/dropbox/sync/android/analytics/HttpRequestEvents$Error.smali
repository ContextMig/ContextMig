.class public Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;
.super Lcom/dropbox/sync/android/AnalyticsEvent;
.source "HttpRequestEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/analytics/HttpRequestEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 0
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/AnalyticsEvent;-><init>(Lcom/dropbox/sync/android/DbxAccount;)V

    .line 117
    return-void
.end method


# virtual methods
.method public log()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "event"

    const-string v1, "http_request.error"

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 157
    invoke-super {p0}, Lcom/dropbox/sync/android/AnalyticsEvent;->log()V

    .line 158
    return-void
.end method

.method public setCauseMessage(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;
    .locals 1
    .param p1, "causeMessage"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "cause_message"

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 151
    return-object p0
.end method

.method public setCauseTypeName(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;
    .locals 1
    .param p1, "causeTypeName"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "cause_type_name"

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 146
    return-object p0
.end method

.method public setEndpoint(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, "endpoint"

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 131
    return-object p0
.end method

.method public setExceptionMessage(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "exception_message"

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 141
    return-object p0
.end method

.method public setExceptionTypeName(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;
    .locals 1
    .param p1, "exceptionTypeName"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v0, "exception_type_name"

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 136
    return-object p0
.end method

.method public setMethod(Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;
    .locals 2
    .param p1, "method"    # Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    .prologue
    .line 124
    const-string v0, "method"

    invoke-virtual {p1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$Error;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/sync/android/AnalyticsEvent;

    .line 125
    return-object p0
.end method

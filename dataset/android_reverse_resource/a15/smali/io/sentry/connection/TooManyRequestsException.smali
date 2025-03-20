.class public Lio/sentry/connection/TooManyRequestsException;
.super Lio/sentry/connection/ConnectionException;
.source "TooManyRequestsException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "recommendedLockdownTime"    # Ljava/lang/Long;
    .param p4, "responseCode"    # Ljava/lang/Integer;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 15
    return-void
.end method

.class Lio/sentry/event/EventBuilder$HostnameCache$1;
.super Ljava/lang/Object;
.source "EventBuilder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/event/EventBuilder$HostnameCache;->updateCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/event/EventBuilder$HostnameCache;


# direct methods
.method constructor <init>(Lio/sentry/event/EventBuilder$HostnameCache;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lio/sentry/event/EventBuilder$HostnameCache$1;->this$0:Lio/sentry/event/EventBuilder$HostnameCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0}, Lio/sentry/event/EventBuilder$HostnameCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 529
    :try_start_0
    iget-object v0, p0, Lio/sentry/event/EventBuilder$HostnameCache$1;->this$0:Lio/sentry/event/EventBuilder$HostnameCache;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/event/EventBuilder$HostnameCache;->access$102(Lio/sentry/event/EventBuilder$HostnameCache;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lio/sentry/event/EventBuilder$HostnameCache$1;->this$0:Lio/sentry/event/EventBuilder$HostnameCache;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lio/sentry/event/EventBuilder$HostnameCache$1;->this$0:Lio/sentry/event/EventBuilder$HostnameCache;

    invoke-static {v1}, Lio/sentry/event/EventBuilder$HostnameCache;->access$300(Lio/sentry/event/EventBuilder$HostnameCache;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lio/sentry/event/EventBuilder$HostnameCache;->access$202(Lio/sentry/event/EventBuilder$HostnameCache;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    iget-object v0, p0, Lio/sentry/event/EventBuilder$HostnameCache$1;->this$0:Lio/sentry/event/EventBuilder$HostnameCache;

    invoke-static {v0}, Lio/sentry/event/EventBuilder$HostnameCache;->access$400(Lio/sentry/event/EventBuilder$HostnameCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 535
    const/4 v0, 0x0

    return-object v0

    .line 532
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/sentry/event/EventBuilder$HostnameCache$1;->this$0:Lio/sentry/event/EventBuilder$HostnameCache;

    invoke-static {v1}, Lio/sentry/event/EventBuilder$HostnameCache;->access$400(Lio/sentry/event/EventBuilder$HostnameCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.class final Lio/sentry/connection/AsyncConnection$EventSubmitter;
.super Ljava/lang/Object;
.source "AsyncConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/connection/AsyncConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventSubmitter"
.end annotation


# instance fields
.field private final event:Lio/sentry/event/Event;

.field private mdcContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/sentry/connection/AsyncConnection;


# direct methods
.method private constructor <init>(Lio/sentry/connection/AsyncConnection;Lio/sentry/event/Event;Ljava/util/Map;)V
    .locals 0
    .param p2, "event"    # Lio/sentry/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/event/Event;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p3, "mdcContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->this$0:Lio/sentry/connection/AsyncConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->event:Lio/sentry/event/Event;

    .line 169
    iput-object p3, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->mdcContext:Ljava/util/Map;

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/connection/AsyncConnection;Lio/sentry/event/Event;Ljava/util/Map;Lio/sentry/connection/AsyncConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/connection/AsyncConnection;
    .param p2, "x1"    # Lio/sentry/event/Event;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Lio/sentry/connection/AsyncConnection$1;

    .prologue
    .line 163
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/connection/AsyncConnection$EventSubmitter;-><init>(Lio/sentry/connection/AsyncConnection;Lio/sentry/event/Event;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 174
    invoke-static {}, Lio/sentry/environment/SentryEnvironment;->startManagingThread()V

    .line 176
    invoke-static {}, Lorg/slf4j/MDC;->getCopyOfContextMap()Ljava/util/Map;

    move-result-object v1

    .line 177
    .local v1, "previous":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->mdcContext:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 178
    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    .line 185
    :goto_0
    :try_start_0
    iget-object v2, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->this$0:Lio/sentry/connection/AsyncConnection;

    invoke-static {v2}, Lio/sentry/connection/AsyncConnection;->access$300(Lio/sentry/connection/AsyncConnection;)Lio/sentry/connection/Connection;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->event:Lio/sentry/event/Event;

    invoke-interface {v2, v3}, Lio/sentry/connection/Connection;->send(Lio/sentry/event/Event;)V
    :try_end_0
    .catch Lio/sentry/connection/LockedDownException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/sentry/connection/TooManyRequestsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-nez v1, :cond_1

    .line 192
    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    .line 197
    :goto_1
    invoke-static {}, Lio/sentry/environment/SentryEnvironment;->stopManagingThread()V

    .line 199
    :goto_2
    return-void

    .line 180
    :cond_0
    iget-object v2, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->mdcContext:Ljava/util/Map;

    invoke-static {v2}, Lorg/slf4j/MDC;->setContextMap(Ljava/util/Map;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {v1}, Lorg/slf4j/MDC;->setContextMap(Ljava/util/Map;)V

    goto :goto_1

    .line 186
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 187
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_3
    :try_start_1
    invoke-static {}, Lio/sentry/connection/AsyncConnection;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping an Event due to lockdown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->event:Lio/sentry/event/Event;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    if-nez v1, :cond_2

    .line 192
    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    .line 197
    :goto_4
    invoke-static {}, Lio/sentry/environment/SentryEnvironment;->stopManagingThread()V

    goto :goto_2

    .line 194
    :cond_2
    invoke-static {v1}, Lorg/slf4j/MDC;->setContextMap(Ljava/util/Map;)V

    goto :goto_4

    .line 188
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lio/sentry/connection/AsyncConnection;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "An exception occurred while sending the event to Sentry."

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    if-nez v1, :cond_3

    .line 192
    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    .line 197
    :goto_5
    invoke-static {}, Lio/sentry/environment/SentryEnvironment;->stopManagingThread()V

    goto :goto_2

    .line 194
    :cond_3
    invoke-static {v1}, Lorg/slf4j/MDC;->setContextMap(Ljava/util/Map;)V

    goto :goto_5

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_4

    .line 192
    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    .line 197
    :goto_6
    invoke-static {}, Lio/sentry/environment/SentryEnvironment;->stopManagingThread()V

    throw v2

    .line 194
    :cond_4
    invoke-static {v1}, Lorg/slf4j/MDC;->setContextMap(Ljava/util/Map;)V

    goto :goto_6

    .line 186
    :catch_2
    move-exception v2

    move-object v0, v2

    goto :goto_3
.end method

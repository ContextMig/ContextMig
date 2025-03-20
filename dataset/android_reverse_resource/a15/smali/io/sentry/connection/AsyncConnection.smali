.class public Lio/sentry/connection/AsyncConnection;
.super Ljava/lang/Object;
.source "AsyncConnection.java"

# interfaces
.implements Lio/sentry/connection/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/connection/AsyncConnection$1;,
        Lio/sentry/connection/AsyncConnection$ShutDownHook;,
        Lio/sentry/connection/AsyncConnection$EventSubmitter;
    }
.end annotation


# static fields
.field private static final lockdownLogger:Lorg/slf4j/Logger;

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final actualConnection:Lio/sentry/connection/Connection;

.field private volatile closed:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private gracefulShutdown:Z

.field private final shutDownHook:Lio/sentry/connection/AsyncConnection$ShutDownHook;

.field private final shutdownTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lio/sentry/connection/AsyncConnection;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/sentry/SentryClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lockdown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/connection/AsyncConnection;->lockdownLogger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/sentry/connection/Connection;Ljava/util/concurrent/ExecutorService;ZJ)V
    .locals 2
    .param p1, "actualConnection"    # Lio/sentry/connection/Connection;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "gracefulShutdown"    # Z
    .param p4, "shutdownTimeout"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lio/sentry/connection/AsyncConnection$ShutDownHook;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/sentry/connection/AsyncConnection$ShutDownHook;-><init>(Lio/sentry/connection/AsyncConnection;Lio/sentry/connection/AsyncConnection$1;)V

    iput-object v0, p0, Lio/sentry/connection/AsyncConnection;->shutDownHook:Lio/sentry/connection/AsyncConnection$ShutDownHook;

    .line 67
    iput-object p1, p0, Lio/sentry/connection/AsyncConnection;->actualConnection:Lio/sentry/connection/Connection;

    .line 68
    if-nez p2, :cond_1

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 73
    :goto_0
    if-eqz p3, :cond_0

    .line 74
    iput-boolean p3, p0, Lio/sentry/connection/AsyncConnection;->gracefulShutdown:Z

    .line 75
    invoke-direct {p0}, Lio/sentry/connection/AsyncConnection;->addShutdownHook()V

    .line 77
    :cond_0
    iput-wide p4, p0, Lio/sentry/connection/AsyncConnection;->shutdownTimeout:J

    .line 78
    return-void

    .line 71
    :cond_1
    iput-object p2, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method static synthetic access$300(Lio/sentry/connection/AsyncConnection;)Lio/sentry/connection/Connection;
    .locals 1
    .param p0, "x0"    # Lio/sentry/connection/AsyncConnection;

    .prologue
    .line 24
    iget-object v0, p0, Lio/sentry/connection/AsyncConnection;->actualConnection:Lio/sentry/connection/Connection;

    return-object v0
.end method

.method static synthetic access$400()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lio/sentry/connection/AsyncConnection;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/connection/AsyncConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lio/sentry/connection/AsyncConnection;->doClose()V

    return-void
.end method

.method private addShutdownHook()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/connection/AsyncConnection;->shutDownHook:Lio/sentry/connection/AsyncConnection$ShutDownHook;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 86
    return-void
.end method

.method private doClose()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    sget-object v4, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "Gracefully shutting down Sentry async threads."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 131
    const/4 v4, 0x1

    iput-boolean v4, p0, Lio/sentry/connection/AsyncConnection;->closed:Z

    .line 132
    iget-object v4, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 134
    :try_start_0
    iget-wide v4, p0, Lio/sentry/connection/AsyncConnection;->shutdownTimeout:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 136
    const-wide/16 v2, 0x1388

    .line 138
    .local v2, "waitBetweenLoggingMs":J
    :goto_0
    iget-object v4, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v2, v3, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    .end local v2    # "waitBetweenLoggingMs":J
    :cond_0
    :goto_1
    sget-object v4, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "Shutdown finished."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v4, p0, Lio/sentry/connection/AsyncConnection;->actualConnection:Lio/sentry/connection/Connection;

    invoke-interface {v4}, Lio/sentry/connection/Connection;->close()V

    .line 157
    :goto_2
    return-void

    .line 141
    .restart local v2    # "waitBetweenLoggingMs":J
    :cond_1
    :try_start_1
    sget-object v4, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "Still waiting on async executor to terminate."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    .end local v2    # "waitBetweenLoggingMs":J
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 151
    sget-object v4, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "Graceful shutdown interrupted, forcing the shutdown."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 152
    iget-object v4, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    sget-object v4, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "{} tasks failed to execute before shutdown."

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    iget-object v4, p0, Lio/sentry/connection/AsyncConnection;->actualConnection:Lio/sentry/connection/Connection;

    invoke-interface {v4}, Lio/sentry/connection/Connection;->close()V

    goto :goto_2

    .line 143
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_2
    :try_start_3
    iget-object v4, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-wide v6, p0, Lio/sentry/connection/AsyncConnection;->shutdownTimeout:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    sget-object v4, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "Graceful shutdown took too much time, forcing the shutdown."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 146
    .restart local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    sget-object v4, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "{} tasks failed to execute before shutdown."

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 155
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lio/sentry/connection/AsyncConnection;->actualConnection:Lio/sentry/connection/Connection;

    invoke-interface {v5}, Lio/sentry/connection/Connection;->close()V

    throw v4
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v0, p0, Lio/sentry/connection/AsyncConnection;->gracefulShutdown:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lio/sentry/connection/AsyncConnection;->shutDownHook:Lio/sentry/connection/AsyncConnection$ShutDownHook;

    invoke-static {v0}, Lio/sentry/util/Util;->safelyRemoveShutdownHook(Ljava/lang/Thread;)Z

    .line 117
    iget-object v0, p0, Lio/sentry/connection/AsyncConnection;->shutDownHook:Lio/sentry/connection/AsyncConnection$ShutDownHook;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/sentry/connection/AsyncConnection$ShutDownHook;->access$202(Lio/sentry/connection/AsyncConnection$ShutDownHook;Z)Z

    .line 120
    :cond_0
    invoke-direct {p0}, Lio/sentry/connection/AsyncConnection;->doClose()V

    .line 121
    return-void
.end method

.method public send(Lio/sentry/event/Event;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/event/Event;

    .prologue
    .line 95
    iget-boolean v0, p0, Lio/sentry/connection/AsyncConnection;->closed:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/sentry/connection/AsyncConnection$EventSubmitter;

    invoke-static {}, Lorg/slf4j/MDC;->getCopyOfContextMap()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lio/sentry/connection/AsyncConnection$EventSubmitter;-><init>(Lio/sentry/connection/AsyncConnection;Lio/sentry/event/Event;Ljava/util/Map;Lio/sentry/connection/AsyncConnection$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 98
    :cond_0
    return-void
.end method

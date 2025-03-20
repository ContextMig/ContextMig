.class public Lio/sentry/connection/BufferedConnection;
.super Ljava/lang/Object;
.source "BufferedConnection.java"

# interfaces
.implements Lio/sentry/connection/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/connection/BufferedConnection$ShutDownHook;,
        Lio/sentry/connection/BufferedConnection$Flusher;
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private actualConnection:Lio/sentry/connection/Connection;

.field private buffer:Lio/sentry/buffer/Buffer;

.field private volatile closed:Z

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private gracefulShutdown:Z

.field private final shutDownHook:Lio/sentry/connection/BufferedConnection$ShutDownHook;

.field private shutdownTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lio/sentry/connection/BufferedConnection;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/connection/BufferedConnection;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/sentry/connection/Connection;Lio/sentry/buffer/Buffer;JZJ)V
    .locals 7
    .param p1, "actualConnection"    # Lio/sentry/connection/Connection;
    .param p2, "buffer"    # Lio/sentry/buffer/Buffer;
    .param p3, "flushtime"    # J
    .param p5, "gracefulShutdown"    # Z
    .param p6, "shutdownTimeout"    # J

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lio/sentry/connection/BufferedConnection$ShutDownHook;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lio/sentry/connection/BufferedConnection$ShutDownHook;-><init>(Lio/sentry/connection/BufferedConnection;Lio/sentry/connection/BufferedConnection$1;)V

    iput-object v0, p0, Lio/sentry/connection/BufferedConnection;->shutDownHook:Lio/sentry/connection/BufferedConnection$ShutDownHook;

    .line 46
    new-instance v0, Lio/sentry/connection/BufferedConnection$1;

    invoke-direct {v0, p0}, Lio/sentry/connection/BufferedConnection$1;-><init>(Lio/sentry/connection/BufferedConnection;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/connection/BufferedConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/connection/BufferedConnection;->closed:Z

    .line 89
    iput-object p1, p0, Lio/sentry/connection/BufferedConnection;->actualConnection:Lio/sentry/connection/Connection;

    .line 90
    iput-object p2, p0, Lio/sentry/connection/BufferedConnection;->buffer:Lio/sentry/buffer/Buffer;

    .line 91
    iput-boolean p5, p0, Lio/sentry/connection/BufferedConnection;->gracefulShutdown:Z

    .line 92
    iput-wide p6, p0, Lio/sentry/connection/BufferedConnection;->shutdownTimeout:J

    .line 94
    if-eqz p5, :cond_0

    .line 95
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/connection/BufferedConnection;->shutDownHook:Lio/sentry/connection/BufferedConnection$ShutDownHook;

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 98
    :cond_0
    new-instance v1, Lio/sentry/connection/BufferedConnection$Flusher;

    invoke-direct {v1, p0, p3, p4}, Lio/sentry/connection/BufferedConnection$Flusher;-><init>(Lio/sentry/connection/BufferedConnection;J)V

    .line 99
    .local v1, "flusher":Lio/sentry/connection/BufferedConnection$Flusher;
    iget-object v0, p0, Lio/sentry/connection/BufferedConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p3

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 100
    return-void
.end method

.method static synthetic access$200(Lio/sentry/connection/BufferedConnection;)Lio/sentry/buffer/Buffer;
    .locals 1
    .param p0, "x0"    # Lio/sentry/connection/BufferedConnection;

    .prologue
    .line 34
    iget-object v0, p0, Lio/sentry/connection/BufferedConnection;->buffer:Lio/sentry/buffer/Buffer;

    return-object v0
.end method

.method static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lio/sentry/connection/BufferedConnection;->logger:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lio/sentry/connection/BufferedConnection;)Z
    .locals 1
    .param p0, "x0"    # Lio/sentry/connection/BufferedConnection;

    .prologue
    .line 34
    iget-boolean v0, p0, Lio/sentry/connection/BufferedConnection;->closed:Z

    return v0
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-boolean v4, p0, Lio/sentry/connection/BufferedConnection;->gracefulShutdown:Z

    if-eqz v4, :cond_0

    .line 135
    iget-object v4, p0, Lio/sentry/connection/BufferedConnection;->shutDownHook:Lio/sentry/connection/BufferedConnection$ShutDownHook;

    invoke-static {v4}, Lio/sentry/util/Util;->safelyRemoveShutdownHook(Ljava/lang/Thread;)Z

    .line 136
    iget-object v4, p0, Lio/sentry/connection/BufferedConnection;->shutDownHook:Lio/sentry/connection/BufferedConnection$ShutDownHook;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lio/sentry/connection/BufferedConnection$ShutDownHook;->access$102(Lio/sentry/connection/BufferedConnection$ShutDownHook;Z)Z

    .line 139
    :cond_0
    sget-object v4, Lio/sentry/connection/BufferedConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "Gracefully shutting down Sentry buffer threads."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 140
    const/4 v4, 0x1

    iput-boolean v4, p0, Lio/sentry/connection/BufferedConnection;->closed:Z

    .line 141
    iget-object v4, p0, Lio/sentry/connection/BufferedConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 143
    :try_start_0
    iget-wide v4, p0, Lio/sentry/connection/BufferedConnection;->shutdownTimeout:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 145
    const-wide/16 v2, 0x1388

    .line 147
    .local v2, "waitBetweenLoggingMs":J
    :goto_0
    iget-object v4, p0, Lio/sentry/connection/BufferedConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    .end local v2    # "waitBetweenLoggingMs":J
    :cond_1
    :goto_1
    sget-object v4, Lio/sentry/connection/BufferedConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "Shutdown finished."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v4, p0, Lio/sentry/connection/BufferedConnection;->actualConnection:Lio/sentry/connection/Connection;

    invoke-interface {v4}, Lio/sentry/connection/Connection;->close()V

    .line 166
    :goto_2
    return-void

    .line 150
    .restart local v2    # "waitBetweenLoggingMs":J
    :cond_2
    :try_start_1
    sget-object v4, Lio/sentry/connection/BufferedConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "Still waiting on buffer flusher executor to terminate."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    .end local v2    # "waitBetweenLoggingMs":J
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 160
    sget-object v4, Lio/sentry/connection/BufferedConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "Graceful shutdown interrupted, forcing the shutdown."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lio/sentry/connection/BufferedConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    sget-object v4, Lio/sentry/connection/BufferedConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "{} tasks failed to execute before the shutdown."

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    iget-object v4, p0, Lio/sentry/connection/BufferedConnection;->actualConnection:Lio/sentry/connection/Connection;

    invoke-interface {v4}, Lio/sentry/connection/Connection;->close()V

    goto :goto_2

    .line 152
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_3
    :try_start_3
    iget-object v4, p0, Lio/sentry/connection/BufferedConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v6, p0, Lio/sentry/connection/BufferedConnection;->shutdownTimeout:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 153
    sget-object v4, Lio/sentry/connection/BufferedConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "Graceful shutdown took too much time, forcing the shutdown."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lio/sentry/connection/BufferedConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 155
    .restart local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    sget-object v4, Lio/sentry/connection/BufferedConnection;->logger:Lorg/slf4j/Logger;

    const-string v5, "{} tasks failed to execute before the shutdown."

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 164
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lio/sentry/connection/BufferedConnection;->actualConnection:Lio/sentry/connection/Connection;

    invoke-interface {v5}, Lio/sentry/connection/Connection;->close()V

    throw v4
.end method

.method public send(Lio/sentry/event/Event;)V
    .locals 5
    .param p1, "event"    # Lio/sentry/event/Event;

    .prologue
    .line 105
    :try_start_0
    iget-object v3, p0, Lio/sentry/connection/BufferedConnection;->actualConnection:Lio/sentry/connection/Connection;

    invoke-interface {v3, p1}, Lio/sentry/connection/Connection;->send(Lio/sentry/event/Event;)V
    :try_end_0
    .catch Lio/sentry/connection/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    iget-object v3, p0, Lio/sentry/connection/BufferedConnection;->buffer:Lio/sentry/buffer/Buffer;

    invoke-interface {v3, p1}, Lio/sentry/buffer/Buffer;->discard(Lio/sentry/event/Event;)V

    .line 124
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lio/sentry/connection/ConnectionException;
    invoke-virtual {v0}, Lio/sentry/connection/ConnectionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v1, v3, Ljava/io/NotSerializableException;

    .line 109
    .local v1, "notSerializable":Z
    invoke-virtual {v0}, Lio/sentry/connection/ConnectionException;->getResponseCode()Ljava/lang/Integer;

    move-result-object v2

    .line 110
    .local v2, "responseCode":Ljava/lang/Integer;
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1ad

    if-eq v3, v4, :cond_1

    .line 114
    :cond_0
    iget-object v3, p0, Lio/sentry/connection/BufferedConnection;->buffer:Lio/sentry/buffer/Buffer;

    invoke-interface {v3, p1}, Lio/sentry/buffer/Buffer;->discard(Lio/sentry/event/Event;)V

    .line 118
    :cond_1
    throw v0
.end method

.method public wrapConnectionWithBufferWriter(Lio/sentry/connection/Connection;)Lio/sentry/connection/Connection;
    .locals 1
    .param p1, "connectionToWrap"    # Lio/sentry/connection/Connection;

    .prologue
    .line 181
    new-instance v0, Lio/sentry/connection/BufferedConnection$2;

    invoke-direct {v0, p0, p1}, Lio/sentry/connection/BufferedConnection$2;-><init>(Lio/sentry/connection/BufferedConnection;Lio/sentry/connection/Connection;)V

    return-object v0
.end method

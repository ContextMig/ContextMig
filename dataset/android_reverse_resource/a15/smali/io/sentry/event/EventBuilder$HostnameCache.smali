.class final Lio/sentry/event/EventBuilder$HostnameCache;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/event/EventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HostnameCache"
.end annotation


# static fields
.field public static final GET_HOSTNAME_TIMEOUT:J

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final cacheDuration:J

.field private volatile expirationTimestamp:J

.field private volatile hostname:Ljava/lang/String;

.field private updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 477
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/event/EventBuilder$HostnameCache;->GET_HOSTNAME_TIMEOUT:J

    .line 478
    const-class v0, Lio/sentry/event/EventBuilder$HostnameCache;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/event/EventBuilder$HostnameCache;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "cacheDuration"    # J

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const-string v0, "unavailable"

    iput-object v0, p0, Lio/sentry/event/EventBuilder$HostnameCache;->hostname:Ljava/lang/String;

    .line 494
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/event/EventBuilder$HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 502
    iput-wide p1, p0, Lio/sentry/event/EventBuilder$HostnameCache;->cacheDuration:J

    .line 503
    return-void
.end method

.method synthetic constructor <init>(JLio/sentry/event/EventBuilder$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lio/sentry/event/EventBuilder$1;

    .prologue
    .line 473
    invoke-direct {p0, p1, p2}, Lio/sentry/event/EventBuilder$HostnameCache;-><init>(J)V

    return-void
.end method

.method static synthetic access$102(Lio/sentry/event/EventBuilder$HostnameCache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/event/EventBuilder$HostnameCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lio/sentry/event/EventBuilder$HostnameCache;->hostname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/event/EventBuilder$HostnameCache;J)J
    .locals 1
    .param p0, "x0"    # Lio/sentry/event/EventBuilder$HostnameCache;
    .param p1, "x1"    # J

    .prologue
    .line 473
    iput-wide p1, p0, Lio/sentry/event/EventBuilder$HostnameCache;->expirationTimestamp:J

    return-wide p1
.end method

.method static synthetic access$300(Lio/sentry/event/EventBuilder$HostnameCache;)J
    .locals 2
    .param p0, "x0"    # Lio/sentry/event/EventBuilder$HostnameCache;

    .prologue
    .line 473
    iget-wide v0, p0, Lio/sentry/event/EventBuilder$HostnameCache;->cacheDuration:J

    return-wide v0
.end method

.method static synthetic access$400(Lio/sentry/event/EventBuilder$HostnameCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lio/sentry/event/EventBuilder$HostnameCache;

    .prologue
    .line 473
    iget-object v0, p0, Lio/sentry/event/EventBuilder$HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 513
    iget-wide v0, p0, Lio/sentry/event/EventBuilder$HostnameCache;->expirationTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lio/sentry/event/EventBuilder$HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lio/sentry/event/EventBuilder$HostnameCache;->updateCache()V

    .line 518
    :cond_0
    iget-object v0, p0, Lio/sentry/event/EventBuilder$HostnameCache;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public updateCache()V
    .locals 8

    .prologue
    .line 525
    new-instance v2, Lio/sentry/event/EventBuilder$HostnameCache$1;

    invoke-direct {v2, p0}, Lio/sentry/event/EventBuilder$HostnameCache$1;-><init>(Lio/sentry/event/EventBuilder$HostnameCache;)V

    .line 540
    .local v2, "hostRetriever":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    :try_start_0
    sget-object v3, Lio/sentry/event/EventBuilder$HostnameCache;->logger:Lorg/slf4j/Logger;

    const-string v4, "Updating the hostname cache"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 541
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 542
    .local v1, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 543
    sget-wide v4, Lio/sentry/event/EventBuilder$HostnameCache;->GET_HOSTNAME_TIMEOUT:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v1    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/sentry/event/EventBuilder$HostnameCache;->expirationTimestamp:J

    .line 546
    sget-object v3, Lio/sentry/event/EventBuilder$HostnameCache;->logger:Lorg/slf4j/Logger;

    const-string v4, "Localhost hostname lookup failed, keeping the value \'{}\'. If this persists it may mean your DNS is incorrectly configured and you may want to hardcode your server name: https://docs.sentry.io/clients/java/config/"

    iget-object v5, p0, Lio/sentry/event/EventBuilder$HostnameCache;->hostname:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

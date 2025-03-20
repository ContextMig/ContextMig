.class public final Lio/sentry/Sentry;
.super Ljava/lang/Object;
.source "Sentry.java"


# static fields
.field private static autoInitAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final logger:Lorg/slf4j/Logger;

.field private static volatile storedClient:Lio/sentry/SentryClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lio/sentry/Sentry;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/Sentry;->logger:Lorg/slf4j/Logger;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lio/sentry/Sentry;->storedClient:Lio/sentry/SentryClient;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/sentry/Sentry;->autoInitAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static capture(Lio/sentry/event/EventBuilder;)V
    .locals 1
    .param p0, "eventBuilder"    # Lio/sentry/event/EventBuilder;

    .prologue
    .line 177
    invoke-static {}, Lio/sentry/Sentry;->getStoredClient()Lio/sentry/SentryClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/sentry/SentryClient;->sendEvent(Lio/sentry/event/EventBuilder;)V

    .line 178
    return-void
.end method

.method public static getStoredClient()Lio/sentry/SentryClient;
    .locals 3

    .prologue
    .line 94
    sget-object v0, Lio/sentry/Sentry;->storedClient:Lio/sentry/SentryClient;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lio/sentry/Sentry;->storedClient:Lio/sentry/SentryClient;

    .line 106
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const-class v1, Lio/sentry/Sentry;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lio/sentry/Sentry;->storedClient:Lio/sentry/SentryClient;

    if-nez v0, :cond_1

    sget-object v0, Lio/sentry/Sentry;->autoInitAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lio/sentry/Sentry;->autoInitAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    invoke-static {}, Lio/sentry/Sentry;->init()Lio/sentry/SentryClient;

    .line 104
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    sget-object v0, Lio/sentry/Sentry;->storedClient:Lio/sentry/SentryClient;

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static init()Lio/sentry/SentryClient;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {v0, v0}, Lio/sentry/Sentry;->init(Ljava/lang/String;Lio/sentry/SentryClientFactory;)Lio/sentry/SentryClient;

    move-result-object v0

    return-object v0
.end method

.method public static init(Ljava/lang/String;Lio/sentry/SentryClientFactory;)Lio/sentry/SentryClient;
    .locals 1
    .param p0, "dsn"    # Ljava/lang/String;
    .param p1, "sentryClientFactory"    # Lio/sentry/SentryClientFactory;

    .prologue
    .line 81
    invoke-static {p0, p1}, Lio/sentry/SentryClientFactory;->sentryClient(Ljava/lang/String;Lio/sentry/SentryClientFactory;)Lio/sentry/SentryClient;

    move-result-object v0

    .line 82
    .local v0, "sentryClient":Lio/sentry/SentryClient;
    invoke-static {v0}, Lio/sentry/Sentry;->setStoredClient(Lio/sentry/SentryClient;)V

    .line 83
    return-object v0
.end method

.method public static setStoredClient(Lio/sentry/SentryClient;)V
    .locals 3
    .param p0, "client"    # Lio/sentry/SentryClient;

    .prologue
    .line 131
    sget-object v0, Lio/sentry/Sentry;->storedClient:Lio/sentry/SentryClient;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lio/sentry/Sentry;->logger:Lorg/slf4j/Logger;

    const-string v1, "Overwriting statically stored SentryClient instance {} with {}."

    sget-object v2, Lio/sentry/Sentry;->storedClient:Lio/sentry/SentryClient;

    invoke-interface {v0, v1, v2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    :cond_0
    sput-object p0, Lio/sentry/Sentry;->storedClient:Lio/sentry/SentryClient;

    .line 136
    return-void
.end method

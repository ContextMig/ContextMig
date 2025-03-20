.class public abstract Lio/sentry/connection/AbstractConnection;
.super Ljava/lang/Object;
.source "AbstractConnection.java"

# interfaces
.implements Lio/sentry/connection/Connection;


# static fields
.field private static final lockdownLogger:Lorg/slf4j/Logger;

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final authHeader:Ljava/lang/String;

.field private eventSendCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lio/sentry/connection/EventSendCallback;",
            ">;"
        }
    .end annotation
.end field

.field private lockdownManager:Lio/sentry/connection/LockdownManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lio/sentry/connection/AbstractConnection;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/connection/AbstractConnection;->logger:Lorg/slf4j/Logger;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/sentry/connection/AbstractConnection;

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

    sput-object v0, Lio/sentry/connection/AbstractConnection;->lockdownLogger:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lio/sentry/connection/LockdownManager;

    invoke-direct {v0}, Lio/sentry/connection/LockdownManager;-><init>()V

    iput-object v0, p0, Lio/sentry/connection/AbstractConnection;->lockdownManager:Lio/sentry/connection/LockdownManager;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/sentry/connection/AbstractConnection;->eventSendCallbacks:Ljava/util/Set;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sentry sentry_version=6,sentry_client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/sentry/environment/SentryEnvironment;->getSentryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sentry_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sentry_secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/connection/AbstractConnection;->authHeader:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method protected abstract doSend(Lio/sentry/event/Event;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/connection/ConnectionException;
        }
    .end annotation
.end method

.method protected getAuthHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/sentry/connection/AbstractConnection;->authHeader:Ljava/lang/String;

    return-object v0
.end method

.method public final send(Lio/sentry/event/Event;)V
    .locals 8
    .param p1, "event"    # Lio/sentry/event/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    iget-object v5, p0, Lio/sentry/connection/AbstractConnection;->lockdownManager:Lio/sentry/connection/LockdownManager;

    invoke-virtual {v5}, Lio/sentry/connection/LockdownManager;->isLockedDown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    new-instance v5, Lio/sentry/connection/LockedDownException;

    invoke-direct {v5}, Lio/sentry/connection/LockedDownException;-><init>()V

    throw v5
    :try_end_0
    .catch Lio/sentry/connection/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lio/sentry/connection/ConnectionException;
    iget-object v5, p0, Lio/sentry/connection/AbstractConnection;->eventSendCallbacks:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/connection/EventSendCallback;

    .line 91
    .local v1, "eventSendCallback":Lio/sentry/connection/EventSendCallback;
    :try_start_1
    invoke-interface {v1, p1, v0}, Lio/sentry/connection/EventSendCallback;->onFailure(Lio/sentry/event/Event;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v2

    .line 93
    .local v2, "exc":Ljava/lang/Exception;
    sget-object v5, Lio/sentry/connection/AbstractConnection;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An exception occurred while running an EventSendCallback.onFailure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    .end local v0    # "e":Lio/sentry/connection/ConnectionException;
    .end local v1    # "eventSendCallback":Lio/sentry/connection/EventSendCallback;
    .end local v2    # "exc":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    invoke-virtual {p0, p1}, Lio/sentry/connection/AbstractConnection;->doSend(Lio/sentry/event/Event;)V

    .line 78
    iget-object v5, p0, Lio/sentry/connection/AbstractConnection;->lockdownManager:Lio/sentry/connection/LockdownManager;

    invoke-virtual {v5}, Lio/sentry/connection/LockdownManager;->unlock()V

    .line 80
    iget-object v5, p0, Lio/sentry/connection/AbstractConnection;->eventSendCallbacks:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/connection/EventSendCallback;
    :try_end_2
    .catch Lio/sentry/connection/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    .restart local v1    # "eventSendCallback":Lio/sentry/connection/EventSendCallback;
    :try_start_3
    invoke-interface {v1, p1}, Lio/sentry/connection/EventSendCallback;->onSuccess(Lio/sentry/event/Event;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lio/sentry/connection/ConnectionException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 83
    :catch_2
    move-exception v2

    .line 84
    .restart local v2    # "exc":Ljava/lang/Exception;
    :try_start_4
    sget-object v5, Lio/sentry/connection/AbstractConnection;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An exception occurred while running an EventSendCallback.onSuccess: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lio/sentry/connection/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 98
    .end local v1    # "eventSendCallback":Lio/sentry/connection/EventSendCallback;
    .end local v2    # "exc":Ljava/lang/Exception;
    .restart local v0    # "e":Lio/sentry/connection/ConnectionException;
    :cond_1
    iget-object v5, p0, Lio/sentry/connection/AbstractConnection;->lockdownManager:Lio/sentry/connection/LockdownManager;

    invoke-virtual {v5, v0}, Lio/sentry/connection/LockdownManager;->lockdown(Lio/sentry/connection/ConnectionException;)Z

    move-result v4

    .line 99
    .local v4, "lockedDown":Z
    if-eqz v4, :cond_2

    .line 100
    sget-object v5, Lio/sentry/connection/AbstractConnection;->lockdownLogger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initiated a temporary lockdown because of exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lio/sentry/connection/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 103
    :cond_2
    throw v0

    .line 105
    .end local v0    # "e":Lio/sentry/connection/ConnectionException;
    .end local v4    # "lockedDown":Z
    :cond_3
    return-void
.end method

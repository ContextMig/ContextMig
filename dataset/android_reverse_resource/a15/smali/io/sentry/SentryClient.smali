.class public Lio/sentry/SentryClient;
.super Ljava/lang/Object;
.source "SentryClient.java"


# static fields
.field private static final lockdownLogger:Lorg/slf4j/Logger;

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final builderHelpers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/sentry/event/helper/EventBuilderHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final connection:Lio/sentry/connection/Connection;

.field private final contextManager:Lio/sentry/context/ContextManager;

.field protected dist:Ljava/lang/String;

.field protected environment:Ljava/lang/String;

.field protected extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mdcTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected release:Ljava/lang/String;

.field protected serverName:Ljava/lang/String;

.field private final shouldSendEventCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lio/sentry/event/helper/ShouldSendEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected tags:Ljava/util/Map;
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

.field private uncaughtExceptionHandler:Lio/sentry/SentryUncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lio/sentry/SentryClient;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryClient;->logger:Lorg/slf4j/Logger;

    .line 31
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

    sput-object v0, Lio/sentry/SentryClient;->lockdownLogger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/sentry/connection/Connection;Lio/sentry/context/ContextManager;)V
    .locals 1
    .param p1, "connection"    # Lio/sentry/connection/Connection;
    .param p2, "contextManager"    # Lio/sentry/context/ContextManager;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryClient;->tags:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryClient;->mdcTags:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryClient;->extra:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryClient;->shouldSendEventCallbacks:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryClient;->builderHelpers:Ljava/util/List;

    .line 105
    iput-object p1, p0, Lio/sentry/SentryClient;->connection:Lio/sentry/connection/Connection;

    .line 106
    iput-object p2, p0, Lio/sentry/SentryClient;->contextManager:Lio/sentry/context/ContextManager;

    .line 107
    return-void
.end method


# virtual methods
.method public addBuilderHelper(Lio/sentry/event/helper/EventBuilderHelper;)V
    .locals 2
    .param p1, "builderHelper"    # Lio/sentry/event/helper/EventBuilderHelper;

    .prologue
    .line 222
    sget-object v0, Lio/sentry/SentryClient;->logger:Lorg/slf4j/Logger;

    const-string v1, "Adding \'{}\' to the list of builder helpers."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lio/sentry/SentryClient;->builderHelpers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 374
    iget-object v0, p0, Lio/sentry/SentryClient;->extra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method public addMdcTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lio/sentry/SentryClient;->mdcTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method public addTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lio/sentry/SentryClient;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-void
.end method

.method public getContext()Lio/sentry/context/Context;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lio/sentry/SentryClient;->contextManager:Lio/sentry/context/ContextManager;

    invoke-interface {v0}, Lio/sentry/context/ContextManager;->getContext()Lio/sentry/context/Context;

    move-result-object v0

    return-object v0
.end method

.method public runBuilderHelpers(Lio/sentry/event/EventBuilder;)V
    .locals 3
    .param p1, "eventBuilder"    # Lio/sentry/event/EventBuilder;

    .prologue
    .line 116
    iget-object v2, p0, Lio/sentry/SentryClient;->builderHelpers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/event/helper/EventBuilderHelper;

    .line 117
    .local v0, "builderHelper":Lio/sentry/event/helper/EventBuilderHelper;
    invoke-interface {v0, p1}, Lio/sentry/event/helper/EventBuilderHelper;->helpBuildingEvent(Lio/sentry/event/EventBuilder;)V

    goto :goto_0

    .line 119
    .end local v0    # "builderHelper":Lio/sentry/event/helper/EventBuilderHelper;
    :cond_0
    return-void
.end method

.method public sendEvent(Lio/sentry/event/Event;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/event/Event;

    .prologue
    .line 127
    iget-object v3, p0, Lio/sentry/SentryClient;->shouldSendEventCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/event/helper/ShouldSendEventCallback;

    .line 128
    .local v2, "shouldSendEventCallback":Lio/sentry/event/helper/ShouldSendEventCallback;
    invoke-interface {v2, p1}, Lio/sentry/event/helper/ShouldSendEventCallback;->shouldSend(Lio/sentry/event/Event;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    sget-object v3, Lio/sentry/SentryClient;->logger:Lorg/slf4j/Logger;

    const-string v4, "Not sending Event because of ShouldSendEventCallback: {}"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    .end local v2    # "shouldSendEventCallback":Lio/sentry/event/helper/ShouldSendEventCallback;
    :goto_0
    return-void

    .line 135
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/sentry/SentryClient;->connection:Lio/sentry/connection/Connection;

    invoke-interface {v3, p1}, Lio/sentry/connection/Connection;->send(Lio/sentry/event/Event;)V
    :try_end_0
    .catch Lio/sentry/connection/LockedDownException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/sentry/connection/TooManyRequestsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {p0}, Lio/sentry/SentryClient;->getContext()Lio/sentry/context/Context;

    move-result-object v3

    invoke-virtual {p1}, Lio/sentry/event/Event;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/context/Context;->setLastEventId(Ljava/util/UUID;)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 137
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_1
    sget-object v3, Lio/sentry/SentryClient;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping an Event due to lockdown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-virtual {p0}, Lio/sentry/SentryClient;->getContext()Lio/sentry/context/Context;

    move-result-object v3

    invoke-virtual {p1}, Lio/sentry/event/Event;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/context/Context;->setLastEventId(Ljava/util/UUID;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lio/sentry/SentryClient;->logger:Lorg/slf4j/Logger;

    const-string v4, "An exception occurred while sending the event to Sentry."

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    invoke-virtual {p0}, Lio/sentry/SentryClient;->getContext()Lio/sentry/context/Context;

    move-result-object v3

    invoke-virtual {p1}, Lio/sentry/event/Event;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/context/Context;->setLastEventId(Ljava/util/UUID;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lio/sentry/SentryClient;->getContext()Lio/sentry/context/Context;

    move-result-object v4

    invoke-virtual {p1}, Lio/sentry/event/Event;->getId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/sentry/context/Context;->setLastEventId(Ljava/util/UUID;)V

    throw v3

    .line 136
    :catch_2
    move-exception v3

    move-object v0, v3

    goto :goto_1
.end method

.method public sendEvent(Lio/sentry/event/EventBuilder;)V
    .locals 6
    .param p1, "eventBuilder"    # Lio/sentry/event/EventBuilder;

    .prologue
    .line 151
    iget-object v4, p0, Lio/sentry/SentryClient;->release:Ljava/lang/String;

    invoke-static {v4}, Lio/sentry/util/Util;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    iget-object v4, p0, Lio/sentry/SentryClient;->release:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/sentry/event/EventBuilder;->withRelease(Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    .line 153
    iget-object v4, p0, Lio/sentry/SentryClient;->dist:Ljava/lang/String;

    invoke-static {v4}, Lio/sentry/util/Util;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    iget-object v4, p0, Lio/sentry/SentryClient;->dist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/sentry/event/EventBuilder;->withDist(Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    .line 158
    :cond_0
    iget-object v4, p0, Lio/sentry/SentryClient;->environment:Ljava/lang/String;

    invoke-static {v4}, Lio/sentry/util/Util;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    iget-object v4, p0, Lio/sentry/SentryClient;->environment:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/sentry/event/EventBuilder;->withEnvironment(Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    .line 162
    :cond_1
    iget-object v4, p0, Lio/sentry/SentryClient;->serverName:Ljava/lang/String;

    invoke-static {v4}, Lio/sentry/util/Util;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 163
    iget-object v4, p0, Lio/sentry/SentryClient;->serverName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/sentry/event/EventBuilder;->withServerName(Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    .line 166
    :cond_2
    iget-object v4, p0, Lio/sentry/SentryClient;->tags:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 167
    .local v3, "tagEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lio/sentry/event/EventBuilder;->withTag(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    goto :goto_0

    .line 170
    .end local v3    # "tagEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Lio/sentry/SentryClient;->extra:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    .local v1, "extraEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lio/sentry/event/EventBuilder;->withExtra(Ljava/lang/String;Ljava/lang/Object;)Lio/sentry/event/EventBuilder;

    goto :goto_1

    .line 174
    .end local v1    # "extraEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual {p0, p1}, Lio/sentry/SentryClient;->runBuilderHelpers(Lio/sentry/event/EventBuilder;)V

    .line 175
    invoke-virtual {p1}, Lio/sentry/event/EventBuilder;->build()Lio/sentry/event/Event;

    move-result-object v0

    .line 176
    .local v0, "event":Lio/sentry/event/Event;
    invoke-virtual {p0, v0}, Lio/sentry/SentryClient;->sendEvent(Lio/sentry/event/Event;)V

    .line 177
    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 0
    .param p1, "dist"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lio/sentry/SentryClient;->dist:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0
    .param p1, "environment"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lio/sentry/SentryClient;->environment:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0
    .param p1, "release"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lio/sentry/SentryClient;->release:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lio/sentry/SentryClient;->serverName:Ljava/lang/String;

    .line 298
    return-void
.end method

.method protected setupUncaughtExceptionHandler()V
    .locals 1

    .prologue
    .line 413
    invoke-static {}, Lio/sentry/SentryUncaughtExceptionHandler;->setup()Lio/sentry/SentryUncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryClient;->uncaughtExceptionHandler:Lio/sentry/SentryUncaughtExceptionHandler;

    .line 414
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SentryClient{release=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->release:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dist=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->dist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", environment=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->serverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->tags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mdcTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->mdcTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->extra:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->connection:Lio/sentry/connection/Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", builderHelpers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->builderHelpers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contextManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->contextManager:Lio/sentry/context/ContextManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uncaughtExceptionHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryClient;->uncaughtExceptionHandler:Lio/sentry/SentryUncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lio/sentry/event/EventBuilder;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/event/EventBuilder$1;,
        Lio/sentry/event/EventBuilder$HostnameCache;
    }
.end annotation


# static fields
.field private static final HOSTNAME_CACHE:Lio/sentry/event/EventBuilder$HostnameCache;

.field public static final HOSTNAME_CACHE_DURATION:J

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private alreadyBuilt:Z

.field private final event:Lio/sentry/event/Event;

.field private sdkIntegrations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/event/EventBuilder;->HOSTNAME_CACHE_DURATION:J

    .line 37
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/event/EventBuilder;->UTF_8:Ljava/nio/charset/Charset;

    .line 38
    new-instance v0, Lio/sentry/event/EventBuilder$HostnameCache;

    sget-wide v2, Lio/sentry/event/EventBuilder;->HOSTNAME_CACHE_DURATION:J

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/sentry/event/EventBuilder$HostnameCache;-><init>(JLio/sentry/event/EventBuilder$1;)V

    sput-object v0, Lio/sentry/event/EventBuilder;->HOSTNAME_CACHE:Lio/sentry/event/EventBuilder$HostnameCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/event/EventBuilder;-><init>(Ljava/util/UUID;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .param p1, "eventId"    # Ljava/util/UUID;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/event/EventBuilder;->alreadyBuilt:Z

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/sentry/event/EventBuilder;->sdkIntegrations:Ljava/util/Set;

    .line 58
    new-instance v0, Lio/sentry/event/Event;

    invoke-direct {v0, p1}, Lio/sentry/event/Event;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    .line 59
    return-void
.end method

.method private autoSetMissingValues()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0}, Lio/sentry/event/Event;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lio/sentry/event/Event;->setTimestamp(Ljava/util/Date;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0}, Lio/sentry/event/Event;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    const-string v1, "java"

    invoke-virtual {v0, v1}, Lio/sentry/event/Event;->setPlatform(Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0}, Lio/sentry/event/Event;->getSdk()Lio/sentry/event/Sdk;

    move-result-object v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    new-instance v1, Lio/sentry/event/Sdk;

    const-string v2, "sentry-java"

    sget-object v3, Lio/sentry/environment/SentryEnvironment;->SDK_VERSION:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/event/EventBuilder;->sdkIntegrations:Ljava/util/Set;

    invoke-direct {v1, v2, v3, v4}, Lio/sentry/event/Sdk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lio/sentry/event/Event;->setSdk(Lio/sentry/event/Sdk;)V

    .line 95
    :cond_2
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0}, Lio/sentry/event/Event;->getServerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    sget-object v1, Lio/sentry/event/EventBuilder;->HOSTNAME_CACHE:Lio/sentry/event/EventBuilder$HostnameCache;

    invoke-virtual {v1}, Lio/sentry/event/EventBuilder$HostnameCache;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/event/Event;->setServerName(Ljava/lang/String;)V

    .line 98
    :cond_3
    return-void
.end method

.method private makeImmutable()V
    .locals 5

    .prologue
    .line 105
    iget-object v3, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    iget-object v4, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v4}, Lio/sentry/event/Event;->getTags()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/event/Event;->setTags(Ljava/util/Map;)V

    .line 108
    iget-object v3, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    iget-object v4, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v4}, Lio/sentry/event/Event;->getBreadcrumbs()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/event/Event;->setBreadcrumbs(Ljava/util/List;)V

    .line 111
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v2, "tempContexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v3, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v3}, Lio/sentry/event/Event;->getContexts()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    .local v0, "contextEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    .end local v0    # "contextEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    iget-object v3, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/event/Event;->setContexts(Ljava/util/Map;)V

    .line 118
    iget-object v3, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    iget-object v4, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v4}, Lio/sentry/event/Event;->getExtra()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/event/Event;->setExtra(Ljava/util/Map;)V

    .line 121
    iget-object v3, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    iget-object v4, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v4}, Lio/sentry/event/Event;->getSentryInterfaces()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/event/Event;->setSentryInterfaces(Ljava/util/Map;)V

    .line 122
    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lio/sentry/event/Event;
    .locals 2

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/sentry/event/EventBuilder;->alreadyBuilt:Z

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A message can\'t be built twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 443
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lio/sentry/event/EventBuilder;->autoSetMissingValues()V

    .line 444
    invoke-direct {p0}, Lio/sentry/event/EventBuilder;->makeImmutable()V

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/event/EventBuilder;->alreadyBuilt:Z

    .line 448
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventBuilder{event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alreadyBuilt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/event/EventBuilder;->alreadyBuilt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBreadcrumbs(Ljava/util/List;)Lio/sentry/event/EventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/sentry/event/Breadcrumb;",
            ">;)",
            "Lio/sentry/event/EventBuilder;"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "breadcrumbs":Ljava/util/List;, "Ljava/util/List<Lio/sentry/event/Breadcrumb;>;"
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0, p1}, Lio/sentry/event/Event;->setBreadcrumbs(Ljava/util/List;)V

    .line 316
    return-object p0
.end method

.method public withContexts(Ljava/util/Map;)Lio/sentry/event/EventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lio/sentry/event/EventBuilder;"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "contexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0, p1}, Lio/sentry/event/Event;->setContexts(Ljava/util/Map;)V

    .line 327
    return-object p0
.end method

.method public withDist(Ljava/lang/String;)Lio/sentry/event/EventBuilder;
    .locals 1
    .param p1, "dist"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0, p1}, Lio/sentry/event/Event;->setDist(Ljava/lang/String;)V

    .line 176
    return-object p0
.end method

.method public withEnvironment(Ljava/lang/String;)Lio/sentry/event/EventBuilder;
    .locals 1
    .param p1, "environment"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0, p1}, Lio/sentry/event/Event;->setEnvironment(Ljava/lang/String;)V

    .line 187
    return-object p0
.end method

.method public withExtra(Ljava/lang/String;Ljava/lang/Object;)Lio/sentry/event/EventBuilder;
    .locals 1
    .param p1, "extraName"    # Ljava/lang/String;
    .param p2, "extraValue"    # Ljava/lang/Object;

    .prologue
    .line 349
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0}, Lio/sentry/event/Event;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-object p0
.end method

.method public withLevel(Lio/sentry/event/Event$Level;)Lio/sentry/event/EventBuilder;
    .locals 1
    .param p1, "level"    # Lio/sentry/event/Event$Level;

    .prologue
    .line 153
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0, p1}, Lio/sentry/event/Event;->setLevel(Lio/sentry/event/Event$Level;)V

    .line 154
    return-object p0
.end method

.method public withMessage(Ljava/lang/String;)Lio/sentry/event/EventBuilder;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0, p1}, Lio/sentry/event/Event;->setMessage(Ljava/lang/String;)V

    .line 132
    return-object p0
.end method

.method public withRelease(Ljava/lang/String;)Lio/sentry/event/EventBuilder;
    .locals 1
    .param p1, "release"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0, p1}, Lio/sentry/event/Event;->setRelease(Ljava/lang/String;)V

    .line 165
    return-object p0
.end method

.method public withSdkIntegration(Ljava/lang/String;)Lio/sentry/event/EventBuilder;
    .locals 1
    .param p1, "integration"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->sdkIntegrations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    return-object p0
.end method

.method public withSentryInterface(Lio/sentry/event/interfaces/SentryInterface;)Lio/sentry/event/EventBuilder;
    .locals 1
    .param p1, "sentryInterface"    # Lio/sentry/event/interfaces/SentryInterface;

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/sentry/event/EventBuilder;->withSentryInterface(Lio/sentry/event/interfaces/SentryInterface;Z)Lio/sentry/event/EventBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withSentryInterface(Lio/sentry/event/interfaces/SentryInterface;Z)Lio/sentry/event/EventBuilder;
    .locals 2
    .param p1, "sentryInterface"    # Lio/sentry/event/interfaces/SentryInterface;
    .param p2, "replace"    # Z

    .prologue
    .line 425
    if-nez p2, :cond_0

    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0}, Lio/sentry/event/Event;->getSentryInterfaces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lio/sentry/event/interfaces/SentryInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0}, Lio/sentry/event/Event;->getSentryInterfaces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lio/sentry/event/interfaces/SentryInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_1
    return-object p0
.end method

.method public withServerName(Ljava/lang/String;)Lio/sentry/event/EventBuilder;
    .locals 1
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0, p1}, Lio/sentry/event/Event;->setServerName(Ljava/lang/String;)V

    .line 338
    return-object p0
.end method

.method public withTag(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/event/EventBuilder;
    .locals 1
    .param p1, "tagKey"    # Ljava/lang/String;
    .param p2, "tagValue"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lio/sentry/event/EventBuilder;->event:Lio/sentry/event/Event;

    invoke-virtual {v0}, Lio/sentry/event/Event;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-object p0
.end method

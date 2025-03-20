.class public Lorg/mozilla/telemetry/Telemetry;
.super Ljava/lang/Object;
.source "Telemetry.java"


# instance fields
.field private final client:Lorg/mozilla/telemetry/net/TelemetryClient;

.field private final configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final pingBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduler:Lorg/mozilla/telemetry/schedule/TelemetryScheduler;

.field private final storage:Lorg/mozilla/telemetry/storage/TelemetryStorage;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Lorg/mozilla/telemetry/storage/TelemetryStorage;Lorg/mozilla/telemetry/net/TelemetryClient;Lorg/mozilla/telemetry/schedule/TelemetryScheduler;)V
    .locals 1
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .param p2, "storage"    # Lorg/mozilla/telemetry/storage/TelemetryStorage;
    .param p3, "client"    # Lorg/mozilla/telemetry/net/TelemetryClient;
    .param p4, "scheduler"    # Lorg/mozilla/telemetry/schedule/TelemetryScheduler;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->executor:Ljava/util/concurrent/ExecutorService;

    .line 41
    iput-object p1, p0, Lorg/mozilla/telemetry/Telemetry;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 42
    iput-object p2, p0, Lorg/mozilla/telemetry/Telemetry;->storage:Lorg/mozilla/telemetry/storage/TelemetryStorage;

    .line 43
    iput-object p3, p0, Lorg/mozilla/telemetry/Telemetry;->client:Lorg/mozilla/telemetry/net/TelemetryClient;

    .line 44
    iput-object p4, p0, Lorg/mozilla/telemetry/Telemetry;->scheduler:Lorg/mozilla/telemetry/schedule/TelemetryScheduler;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/telemetry/Telemetry;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/telemetry/Telemetry;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/mozilla/telemetry/Telemetry;)Lorg/mozilla/telemetry/storage/TelemetryStorage;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/telemetry/Telemetry;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->storage:Lorg/mozilla/telemetry/storage/TelemetryStorage;

    return-object v0
.end method

.method static synthetic access$200(Lorg/mozilla/telemetry/Telemetry;)Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/telemetry/Telemetry;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lorg/mozilla/telemetry/Telemetry;)Lorg/mozilla/telemetry/schedule/TelemetryScheduler;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/telemetry/Telemetry;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->scheduler:Lorg/mozilla/telemetry/schedule/TelemetryScheduler;

    return-object v0
.end method


# virtual methods
.method public addPingBuilder(Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;)Lorg/mozilla/telemetry/Telemetry;
    .locals 2
    .param p1, "builder"    # Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object p0
.end method

.method public getBuilders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/mozilla/telemetry/ping/TelemetryPingBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getClient()Lorg/mozilla/telemetry/net/TelemetryClient;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->client:Lorg/mozilla/telemetry/net/TelemetryClient;

    return-object v0
.end method

.method public getConfiguration()Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    return-object v0
.end method

.method public getStorage()Lorg/mozilla/telemetry/storage/TelemetryStorage;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->storage:Lorg/mozilla/telemetry/storage/TelemetryStorage;

    return-object v0
.end method

.method public queueEvent(Lorg/mozilla/telemetry/event/TelemetryEvent;)Lorg/mozilla/telemetry/Telemetry;
    .locals 2
    .param p1, "event"    # Lorg/mozilla/telemetry/event/TelemetryEvent;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->isCollectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-object p0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/mozilla/telemetry/Telemetry$2;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/telemetry/Telemetry$2;-><init>(Lorg/mozilla/telemetry/Telemetry;Lorg/mozilla/telemetry/event/TelemetryEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public queuePing(Ljava/lang/String;)Lorg/mozilla/telemetry/Telemetry;
    .locals 2
    .param p1, "pingType"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->isCollectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-object p0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/mozilla/telemetry/Telemetry$1;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/telemetry/Telemetry$1;-><init>(Lorg/mozilla/telemetry/Telemetry;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public recordSearch(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/telemetry/Telemetry;
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->isCollectionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-object p0

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    const-string v2, "core"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This configuration does not contain a core ping builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_1
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    const-string v2, "core"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;

    .line 187
    .local v0, "builder":Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;
    invoke-virtual {v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->getSearchesMeasurement()Lorg/mozilla/telemetry/measurement/SearchesMeasurement;

    move-result-object v1

    .line 188
    invoke-virtual {v1, p1, p2}, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;->recordSearch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordSessionEnd()Lorg/mozilla/telemetry/Telemetry;
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->isCollectionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    :goto_0
    return-object p0

    .line 153
    :cond_0
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    const-string v2, "core"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This configuration does not contain a core ping builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_1
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    const-string v2, "core"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;

    .line 158
    .local v0, "builder":Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;
    invoke-virtual {v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->getSessionDurationMeasurement()Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->recordSessionEnd()V

    goto :goto_0
.end method

.method public recordSessionStart()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->isCollectionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    const-string v2, "core"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This configuration does not contain a core ping builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_1
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    const-string v2, "core"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;

    .line 144
    .local v0, "builder":Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;
    invoke-virtual {v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->getSessionDurationMeasurement()Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/telemetry/measurement/SessionDurationMeasurement;->recordSessionStart()V

    .line 145
    invoke-virtual {v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->getSessionCountMeasurement()Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/telemetry/measurement/SessionCountMeasurement;->countSession()V

    goto :goto_0
.end method

.method public scheduleUpload()Lorg/mozilla/telemetry/Telemetry;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v0}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->isUploadEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-object p0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/mozilla/telemetry/Telemetry;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/mozilla/telemetry/Telemetry$3;

    invoke-direct {v1, p0}, Lorg/mozilla/telemetry/Telemetry$3;-><init>(Lorg/mozilla/telemetry/Telemetry;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public setDefaultSearchProvider(Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;)Lorg/mozilla/telemetry/Telemetry;
    .locals 3
    .param p1, "provider"    # Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;

    .prologue
    .line 194
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    const-string v2, "core"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This configuration does not contain a core ping builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    iget-object v1, p0, Lorg/mozilla/telemetry/Telemetry;->pingBuilders:Ljava/util/Map;

    const-string v2, "core"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;

    .line 199
    .local v0, "builder":Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;
    invoke-virtual {v0}, Lorg/mozilla/telemetry/ping/TelemetryCorePingBuilder;->getDefaultSearchMeasurement()Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;

    move-result-object v1

    .line 200
    invoke-virtual {v1, p1}, Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement;->setDefaultSearchEngineProvider(Lorg/mozilla/telemetry/measurement/DefaultSearchMeasurement$DefaultSearchEngineProvider;)V

    .line 202
    return-object p0
.end method

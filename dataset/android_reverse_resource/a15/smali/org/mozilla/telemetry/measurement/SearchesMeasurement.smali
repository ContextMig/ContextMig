.class public Lorg/mozilla/telemetry/measurement/SearchesMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "SearchesMeasurement.java"


# instance fields
.field private final configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 35
    const-string v0, "searches"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 38
    return-void
.end method

.method private static getEngineSearchCountKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "locationAndIdentifier"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "measurements-search-count-engine-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getSearchCountMapAndReset()Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v7}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 51
    .local v6, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 53
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v5, "object":Lorg/json/JSONObject;
    const-string v7, "measurements-search-count-keyset"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 56
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    .local v4, "locationAndIdentifier":Ljava/lang/String;
    invoke-static {v4}, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;->getEngineSearchCountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "key":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v6, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "locationAndIdentifier":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Should not happen: Can\'t construct search count JSON"

    invoke-direct {v7, v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 63
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "object":Lorg/json/JSONObject;
    .restart local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_2
    const-string v7, "measurements-search-count-keyset"

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 64
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    monitor-exit p0

    return-object v5
.end method

.method private storeCount(Ljava/lang/String;)V
    .locals 5
    .param p1, "locationAndIdentifier"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v3, p0, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v3}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 91
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;->getEngineSearchCountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, "count":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .line 96
    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 97
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    return-void
.end method

.method private storeKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "locationAndIdentifier"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v3, p0, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v3}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "measurements-search-count-keyset"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 107
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v2, "updatedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "measurements-search-count-keyset"

    .line 117
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 118
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method public flush()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;->getSearchCountMapAndReset()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized recordSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "locationAndIdentifier":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;->storeCount(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/SearchesMeasurement;->storeKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 79
    .end local v0    # "locationAndIdentifier":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

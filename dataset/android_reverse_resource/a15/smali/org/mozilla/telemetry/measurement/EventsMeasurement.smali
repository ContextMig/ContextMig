.class public Lorg/mozilla/telemetry/measurement/EventsMeasurement;
.super Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;
.source "EventsMeasurement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/mozilla/telemetry/measurement/EventsMeasurement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .prologue
    .line 38
    const-string v0, "events"

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/measurement/TelemetryMeasurement;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 41
    return-void
.end method

.method private declared-synchronized countEvent()V
    .locals 8

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v3}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 128
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "event_count"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 130
    .local v0, "count":J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "event_count"

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 131
    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 132
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 126
    .end local v0    # "count":J
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized readAndClearEventsFromDisk()Lorg/json/JSONArray;
    .locals 11

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 54
    .local v2, "events":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->getEventFile()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 56
    .local v3, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 59
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 67
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "event":Lorg/json/JSONArray;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70
    invoke-direct {p0}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->resetEventCount()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 71
    .end local v1    # "event":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    sget-object v8, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Could not parse event from disk"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 76
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v6, v7

    .line 79
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_5
    new-instance v2, Lorg/json/JSONArray;

    .end local v2    # "events":Lorg/json/JSONArray;
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 90
    :try_start_6
    invoke-static {v6}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_0

    .line 93
    sget-object v8, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Events file could not be deleted"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 97
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    monitor-exit p0

    return-object v2

    .line 90
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "events":Lorg/json/JSONArray;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_7
    invoke-static {v7}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_3

    .line 93
    sget-object v8, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Events file could not be deleted"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 80
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    sget-object v8, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->LOG_TAG:Ljava/lang/String;

    const-string v9, "IOException while reading events from disk"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 90
    :try_start_9
    invoke-static {v6}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_0

    .line 93
    sget-object v8, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Events file could not be deleted"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 53
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "events":Lorg/json/JSONArray;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 90
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    :goto_4
    :try_start_a
    invoke-static {v6}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_2

    .line 93
    sget-object v9, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Events file could not be deleted"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 90
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "events":Lorg/json/JSONArray;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 80
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 76
    :catch_4
    move-exception v0

    goto :goto_1

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :cond_3
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private declared-synchronized resetEventCount()V
    .locals 6

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "event_count"

    const-wide/16 v4, 0x0

    .line 139
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 136
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized saveEventToDisk(Lorg/mozilla/telemetry/event/TelemetryEvent;)V
    .locals 6
    .param p1, "event"    # Lorg/mozilla/telemetry/event/TelemetryEvent;

    .prologue
    .line 105
    monitor-enter p0

    const/4 v1, 0x0

    .line 108
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->getEventFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 111
    .local v3, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {p1}, Lorg/mozilla/telemetry/event/TelemetryEvent;->toJSON()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 113
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 114
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 116
    invoke-direct {p0}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->countEvent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 121
    :try_start_2
    invoke-static {v2}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 123
    monitor-exit p0

    return-void

    .line 117
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_3
    sget-object v4, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->LOG_TAG:Ljava/lang/String;

    const-string v5, "IOException while writing event to disk"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "BOING"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_4
    invoke-static {v1}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 122
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    :catchall_1
    move-exception v4

    :goto_2
    monitor-exit p0

    throw v4

    .line 121
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 117
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 105
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public add(Lorg/mozilla/telemetry/event/TelemetryEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/mozilla/telemetry/event/TelemetryEvent;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->saveEventToDisk(Lorg/mozilla/telemetry/event/TelemetryEvent;)V

    .line 45
    return-void
.end method

.method public flush()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->readAndClearEventsFromDisk()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getEventCount()J
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "event_count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method getEventFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/mozilla/telemetry/measurement/EventsMeasurement;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "events1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

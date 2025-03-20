.class public Lorg/mozilla/telemetry/storage/FileTelemetryStorage;
.super Ljava/lang/Object;
.source "FileTelemetryStorage.java"

# interfaces
.implements Lorg/mozilla/telemetry/storage/TelemetryStorage;


# instance fields
.field private final configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

.field private final serializer:Lorg/mozilla/telemetry/serialize/TelemetryPingSerializer;

.field private final storageDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Lorg/mozilla/telemetry/config/TelemetryConfiguration;Lorg/mozilla/telemetry/serialize/TelemetryPingSerializer;)V
    .locals 3
    .param p1, "configuration"    # Lorg/mozilla/telemetry/config/TelemetryConfiguration;
    .param p2, "serializer"    # Lorg/mozilla/telemetry/serialize/TelemetryPingSerializer;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    .line 48
    iput-object p2, p0, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->serializer:Lorg/mozilla/telemetry/serialize/TelemetryPingSerializer;

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "storage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->storageDirectory:Ljava/io/File;

    .line 52
    iget-object v0, p0, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->storageDirectory:Ljava/io/File;

    invoke-static {v0}, Lorg/mozilla/telemetry/util/FileUtils;->assertDirectory(Ljava/io/File;)V

    .line 53
    return-void
.end method

.method private maybePrunePings(Ljava/lang/String;)V
    .locals 10
    .param p1, "pingType"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->listPingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 124
    .local v1, "files":[Ljava/io/File;
    array-length v5, v1

    iget-object v6, p0, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->configuration:Lorg/mozilla/telemetry/config/TelemetryConfiguration;

    invoke-virtual {v6}, Lorg/mozilla/telemetry/config/TelemetryConfiguration;->getMaximumNumberOfPingsPerType()I

    move-result v6

    sub-int v3, v5, v6

    .line 126
    .local v3, "pingsToRemove":I
    if-gtz v3, :cond_1

    .line 144
    :cond_0
    return-void

    .line 130
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    .local v4, "sortedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v5, Lorg/mozilla/telemetry/util/FileUtils$FileLastModifiedComparator;

    invoke-direct {v5}, Lorg/mozilla/telemetry/util/FileUtils$FileLastModifiedComparator;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 134
    .local v0, "file":Ljava/io/File;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 138
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 140
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 141
    const-string v5, "FileTelemetryStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t prune ping file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private storePing(Lorg/mozilla/telemetry/ping/TelemetryPing;)V
    .locals 9
    .param p1, "ping"    # Lorg/mozilla/telemetry/ping/TelemetryPing;

    .prologue
    .line 95
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->storageDirectory:Ljava/io/File;

    invoke-virtual {p1}, Lorg/mozilla/telemetry/ping/TelemetryPing;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v2, "pingStorageDirectory":Ljava/io/File;
    invoke-static {v2}, Lorg/mozilla/telemetry/util/FileUtils;->assertDirectory(Ljava/io/File;)V

    .line 98
    iget-object v7, p0, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->serializer:Lorg/mozilla/telemetry/serialize/TelemetryPingSerializer;

    invoke-interface {v7, p1}, Lorg/mozilla/telemetry/serialize/TelemetryPingSerializer;->serialize(Lorg/mozilla/telemetry/ping/TelemetryPing;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "serializedPing":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lorg/mozilla/telemetry/ping/TelemetryPing;->getDocumentId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v1, "pingFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 105
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 108
    .local v6, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {p1}, Lorg/mozilla/telemetry/ping/TelemetryPing;->getUploadPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 110
    invoke-virtual {v6, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 112
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 113
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    invoke-static {v5}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    move-object v4, v5

    .line 119
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v7, "FileTelemetryStorage"

    const-string v8, "IOException while writing event to disk"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    invoke-static {v4}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v4}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 118
    throw v7

    .line 117
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 114
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public countStoredPings(Ljava/lang/String;)I
    .locals 1
    .param p1, "pingType"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->listPingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method listPingFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 5
    .param p1, "pingType"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->storageDirectory:Ljava/io/File;

    invoke-direct {v1, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v1, "pingStorageDirectory":Ljava/io/File;
    const-string v4, "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 151
    .local v3, "uuidPattern":Ljava/util/regex/Pattern;
    new-instance v2, Lorg/mozilla/telemetry/util/FileUtils$FilenameRegexFilter;

    invoke-direct {v2, v3}, Lorg/mozilla/telemetry/util/FileUtils$FilenameRegexFilter;-><init>(Ljava/util/regex/Pattern;)V

    .line 152
    .local v2, "uuidFilenameFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 153
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 154
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/io/File;

    .line 156
    .end local v0    # "files":[Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method public process(Ljava/lang/String;Lorg/mozilla/telemetry/storage/TelemetryStorage$TelemetryStorageCallback;)Z
    .locals 13
    .param p1, "pingType"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/mozilla/telemetry/storage/TelemetryStorage$TelemetryStorageCallback;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->listPingFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_4

    aget-object v2, v9, v8

    .line 64
    .local v2, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 67
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 68
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "serializedPing":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-interface {p2, v3, v7}, Lorg/mozilla/telemetry/storage/TelemetryStorage$TelemetryStorageCallback;->onTelemetryPingLoaded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    const/4 v4, 0x1

    .line 73
    .local v4, "processed":Z
    :goto_1
    if-eqz v4, :cond_3

    .line 74
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_1

    .line 75
    const-string v11, "FileTelemetryStorage"

    const-string v12, "Could not delete local ping file after processing"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    :cond_1
    invoke-static {v6}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    move-object v5, v6

    .line 63
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "processed":Z
    .end local v6    # "reader":Ljava/io/FileReader;
    .end local v7    # "serializedPing":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 71
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "serializedPing":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 79
    .restart local v4    # "processed":Z
    :cond_3
    const/4 v8, 0x0

    .line 87
    invoke-static {v6}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 91
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "processed":Z
    .end local v6    # "reader":Ljava/io/FileReader;
    .end local v7    # "serializedPing":Ljava/lang/String;
    :goto_3
    return v8

    .line 81
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v11

    .line 87
    :goto_4
    invoke-static {v5}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    goto :goto_2

    .line 83
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    :goto_5
    const/4 v8, 0x0

    .line 87
    invoke-static {v5}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    invoke-static {v5}, Lorg/mozilla/telemetry/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 88
    throw v8

    .line 91
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_4
    const/4 v8, 0x1

    goto :goto_3

    .line 87
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_6

    .line 83
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 81
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v11

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_4
.end method

.method public declared-synchronized store(Lorg/mozilla/telemetry/ping/TelemetryPing;)V
    .locals 1
    .param p1, "ping"    # Lorg/mozilla/telemetry/ping/TelemetryPing;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->storePing(Lorg/mozilla/telemetry/ping/TelemetryPing;)V

    .line 58
    invoke-virtual {p1}, Lorg/mozilla/telemetry/ping/TelemetryPing;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/telemetry/storage/FileTelemetryStorage;->maybePrunePings(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

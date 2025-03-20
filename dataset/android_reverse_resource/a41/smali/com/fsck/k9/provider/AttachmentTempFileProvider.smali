.class public Lcom/fsck/k9/provider/AttachmentTempFileProvider;
.super Landroid/support/v4/content/FileProvider;
.source "AttachmentTempFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.fsck.k9.tempfileprovider"

.field private static final CACHE_DIRECTORY:Ljava/lang/String; = "temp"

.field private static final FILE_DELETE_THRESHOLD_MILLISECONDS:J = 0x2bf20L

.field private static cleanupReceiver:Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;

.field private static final cleanupReceiverMonitor:Ljava/lang/Object;

.field private static final tempFileWriteMonitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->tempFileWriteMonitor:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/content/FileProvider;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->unregisterFileCleanupReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public static createTempUriForContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {p1, v0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->getTempFileForUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 44
    .local v1, "tempFile":Ljava/io/File;
    invoke-static {p0, p1, v1}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->writeUriContentToTempFileIfNotExists(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    .line 45
    const-string v3, "com.fsck.k9.tempfileprovider"

    invoke-static {p0, v3, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 47
    .local v2, "tempFileUri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->registerFileCleanupReceiver(Landroid/content/Context;)V

    .line 49
    return-object v2
.end method

.method public static deleteOldTemporaryFiles(Landroid/content/Context;)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->getTempFileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    .line 96
    .local v8, "tempDirectory":Ljava/io/File;
    const/4 v2, 0x1

    .line 97
    .local v2, "allFilesDeleted":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v14, 0x2bf20

    sub-long v4, v12, v14

    .line 98
    .local v4, "deletionThreshold":J
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    array-length v13, v12

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v13, :cond_3

    aget-object v9, v12, v11

    .line 99
    .local v9, "tempFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 100
    .local v6, "lastModified":J
    cmp-long v14, v6, v4

    if-gez v14, :cond_1

    .line 101
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    .line 102
    .local v3, "fileDeleted":Z
    if-nez v3, :cond_0

    .line 103
    const-string v14, "Failed to delete temporary file"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const/4 v2, 0x0

    .line 98
    .end local v3    # "fileDeleted":Z
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 109
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v15, "%.2f"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sub-long v18, v6, v4

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    div-double v18, v18, v20

    .line 110
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    .line 109
    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, "timeLeftStr":Ljava/lang/String;
    const-string v14, "Not deleting temp file (for another %s minutes)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .end local v10    # "timeLeftStr":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 117
    .end local v6    # "lastModified":J
    .end local v9    # "tempFile":Ljava/io/File;
    :cond_3
    return v2
.end method

.method public static getMimeTypeUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, "com.fsck.k9.tempfileprovider"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only call this method for URIs within this authority!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    const-string v0, "mime_type"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only call this method for not yet typed URIs!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getTempFileDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string v1, "Error creating directory: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-object v0
.end method

.method private static getTempFileForUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {p0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->getTempFilenameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "tempFilename":Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->getTempFileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 58
    .local v1, "tempDirectory":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method

.method private static getTempFilenameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static registerFileCleanupReceiver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    sget-object v2, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_0
    sget-object v1, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;

    if-eqz v1, :cond_0

    .line 178
    monitor-exit v2

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v1, "Registering temp file cleanup receiver"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v1, Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;-><init>(Lcom/fsck/k9/provider/AttachmentTempFileProvider$1;)V

    sput-object v1, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    sget-object v1, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    monitor-exit v2

    goto :goto_0

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static unregisterFileCleanupReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    sget-object v1, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    sget-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;

    if-nez v0, :cond_0

    .line 166
    monitor-exit v1

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "Unregistering temp file cleanup receiver"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/AttachmentTempFileProvider$AttachmentTempFileProviderCleanupReceiver;

    .line 172
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static writeUriContentToTempFileIfNotExists(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "tempFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v3, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->tempFileWriteMonitor:Ljava/lang/Object;

    monitor-enter v3

    .line 68
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    monitor-exit v3

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 73
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 74
    .local v0, "inputStream":Ljava/io/InputStream;
    if-nez v0, :cond_1

    .line 75
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve content at uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 77
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_1
    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 79
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 80
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 81
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 134
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 144
    const/16 v1, 0x50

    if-ge p1, v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 152
    new-instance v1, Lcom/fsck/k9/provider/AttachmentTempFileProvider$1;

    invoke-direct {v1, p0, v0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider$1;-><init>(Lcom/fsck/k9/provider/AttachmentTempFileProvider;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 158
    invoke-virtual {v1, v2}, Lcom/fsck/k9/provider/AttachmentTempFileProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 160
    invoke-static {v0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->unregisterFileCleanupReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method

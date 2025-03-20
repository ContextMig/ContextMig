.class public Lcom/fsck/k9/provider/DecryptedFileProvider;
.super Landroid/support/v4/content/FileProvider;
.source "DecryptedFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.fsck.k9.decryptedfileprovider"

.field private static final DECRYPTED_CACHE_DIRECTORY:Ljava/lang/String; = "decrypted"

.field private static final FILE_DELETE_THRESHOLD_MILLISECONDS:J = 0x2bf20L

.field private static cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

.field private static final cleanupReceiverMonitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/content/FileProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/fsck/k9/provider/DecryptedFileProvider;->registerFileCleanupReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/fsck/k9/provider/DecryptedFileProvider;->getDecryptedTempDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/fsck/k9/provider/DecryptedFileProvider;->unregisterFileCleanupReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public static deleteOldTemporaryFiles(Landroid/content/Context;)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/provider/DecryptedFileProvider;->getDecryptedTempDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    .line 75
    .local v8, "tempDirectory":Ljava/io/File;
    const/4 v2, 0x1

    .line 76
    .local v2, "allFilesDeleted":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v14, 0x2bf20

    sub-long v4, v12, v14

    .line 77
    .local v4, "deletionThreshold":J
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    array-length v13, v12

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v13, :cond_3

    aget-object v9, v12, v11

    .line 78
    .local v9, "tempFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 79
    .local v6, "lastModified":J
    cmp-long v14, v6, v4

    if-gez v14, :cond_1

    .line 80
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v3

    .line 81
    .local v3, "fileDeleted":Z
    if-nez v3, :cond_0

    .line 82
    const-string v14, "Failed to delete temporary file"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const/4 v2, 0x0

    .line 77
    .end local v3    # "fileDeleted":Z
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 88
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

    .line 89
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    .line 88
    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "timeLeftStr":Ljava/lang/String;
    const-string v14, "Not deleting temp file (for another %s minutes)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .end local v10    # "timeLeftStr":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 96
    .end local v6    # "lastModified":J
    .end local v9    # "tempFile":Ljava/io/File;
    :cond_3
    return v2
.end method

.method private static getDecryptedTempDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "decrypted"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "Error creating directory: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_0
    return-object v0
.end method

.method public static getFileFactory(Landroid/content/Context;)Lcom/fsck/k9/mailstore/util/FileFactory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v1, Lcom/fsck/k9/provider/DecryptedFileProvider$1;

    invoke-direct {v1, v0}, Lcom/fsck/k9/provider/DecryptedFileProvider$1;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static getUriForProvidedFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "file"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mimeType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    const-string v2, "com.fsck.k9.decryptedfileprovider"

    invoke-static {p0, v2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 61
    .local v1, "uriBuilder":Landroid/net/Uri$Builder;
    if-eqz p3, :cond_0

    .line 62
    const-string v2, "mime_type"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    :cond_0
    if-eqz p2, :cond_1

    .line 65
    const-string v2, "encoding"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 69
    .end local v1    # "uriBuilder":Landroid/net/Uri$Builder;
    :goto_0
    return-object v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static registerFileCleanupReceiver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    sget-object v2, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 183
    :try_start_0
    sget-object v1, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    if-eqz v1, :cond_0

    .line 184
    monitor-exit v2

    .line 194
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v1, "Registering temp file cleanup receiver"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v1, Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;-><init>(Lcom/fsck/k9/provider/DecryptedFileProvider$1;)V

    sput-object v1, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    sget-object v1, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
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
    .line 170
    sget-object v1, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    sget-object v0, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    if-nez v0, :cond_0

    .line 172
    monitor-exit v1

    .line 179
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v0, "Unregistering temp file cleanup receiver"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    sget-object v0, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    const/4 v0, 0x0

    sput-object v0, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 178
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 113
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 150
    const/16 v1, 0x50

    if-ge p1, v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/provider/DecryptedFileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lcom/fsck/k9/provider/DecryptedFileProvider$2;

    invoke-direct {v1, p0, v0}, Lcom/fsck/k9/provider/DecryptedFileProvider$2;-><init>(Lcom/fsck/k9/provider/DecryptedFileProvider;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 164
    invoke-virtual {v1, v2}, Lcom/fsck/k9/provider/DecryptedFileProvider$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    invoke-static {v0}, Lcom/fsck/k9/provider/DecryptedFileProvider;->unregisterFileCleanupReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 123
    const-string v5, "r"

    invoke-super {p0, p1, v5}, Landroid/support/v4/content/FileProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 126
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    const-string v5, "encoding"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "encoding":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 129
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v0, "decodedInputStream":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-static {v0}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;->pipeFrom(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v0    # "decodedInputStream":Ljava/io/InputStream;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    return-object v4

    .line 130
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-static {v2}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 132
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 133
    .restart local v0    # "decodedInputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 134
    .end local v0    # "decodedInputStream":Ljava/io/InputStream;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 135
    const-string v5, "unsupported encoding, returning raw stream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 142
    .restart local v0    # "decodedInputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5
.end method

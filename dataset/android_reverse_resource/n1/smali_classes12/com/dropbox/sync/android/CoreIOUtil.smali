.class Lcom/dropbox/sync/android/CoreIOUtil;
.super Ljava/lang/Object;
.source "CoreIOUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreIOUtil$FileWriteException;,
        Lcom/dropbox/sync/android/CoreIOUtil$WriteException;,
        Lcom/dropbox/sync/android/CoreIOUtil$FileReadException;,
        Lcom/dropbox/sync/android/CoreIOUtil$ReadException;,
        Lcom/dropbox/sync/android/CoreIOUtil$WrappedException;,
        Lcom/dropbox/sync/android/CoreIOUtil$ProgressListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_COPY_BUFFER_SIZE:I = 0x10000

.field private static final MIN_MILLIS_BETWEEN_CALLBACKS:J = 0xaL

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/sync/android/CoreIOUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreIOUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    return-void
.end method

.method public static varargs closeAll([Ljava/io/Closeable;)V
    .locals 9
    .param p0, "toClose"    # [Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v6, 0x0

    .line 376
    .local v6, "ioe":Ljava/io/IOException;
    const/4 v8, 0x0

    .line 377
    .local v8, "rte":Ljava/lang/RuntimeException;
    const/4 v3, 0x0

    .line 378
    .local v3, "err":Ljava/lang/Error;
    const/4 v5, 0x0

    .line 380
    .local v5, "ignoreExceptions":Z
    move-object v0, p0

    .local v0, "arr$":[Ljava/io/Closeable;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v1, v0, v4

    .line 382
    .local v1, "c":Ljava/io/Closeable;
    if-eqz v1, :cond_0

    .line 383
    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 380
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/io/IOException;
    if-nez v5, :cond_0

    .line 387
    move-object v6, v2

    .line 388
    const/4 v5, 0x1

    goto :goto_1

    .line 390
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 391
    .local v2, "e":Ljava/lang/RuntimeException;
    if-nez v5, :cond_0

    .line 392
    move-object v8, v2

    .line 393
    const/4 v5, 0x1

    goto :goto_1

    .line 395
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 396
    .local v2, "e":Ljava/lang/Error;
    if-nez v5, :cond_0

    .line 397
    move-object v3, v2

    .line 398
    const/4 v5, 0x1

    goto :goto_1

    .line 403
    .end local v1    # "c":Ljava/io/Closeable;
    .end local v2    # "e":Ljava/lang/Error;
    :cond_1
    if-eqz v6, :cond_2

    throw v6

    .line 404
    :cond_2
    if-eqz v8, :cond_3

    throw v8

    .line 405
    :cond_3
    if-eqz v3, :cond_4

    throw v3

    .line 406
    :cond_4
    return-void
.end method

.method public static varargs closeAllLoggingErrors(Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;Ljava/lang/String;[Ljava/io/Closeable;)V
    .locals 6
    .param p0, "logger"    # Lcom/dropbox/sync/android/CoreLogger;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "logMsg"    # Ljava/lang/String;
    .param p3, "toClose"    # [Ljava/io/Closeable;

    .prologue
    const/4 v5, 0x1

    .line 416
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_4

    .line 418
    :try_start_0
    aget-object v3, p3, v2

    if-eqz v3, :cond_0

    .line 419
    aget-object v3, p3, v2

    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 416
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/io/IOException;
    array-length v3, p3

    if-le v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "extraMsg":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 422
    .end local v1    # "extraMsg":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_2

    .line 424
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/RuntimeException;
    array-length v3, p3

    if-le v3, v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    .restart local v1    # "extraMsg":Ljava/lang/String;
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 425
    .end local v1    # "extraMsg":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_3

    .line 427
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Error;
    array-length v3, p3

    if-le v3, v5, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .restart local v1    # "extraMsg":Ljava/lang/String;
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 428
    .end local v1    # "extraMsg":Ljava/lang/String;
    :cond_3
    const-string v1, ""

    goto :goto_4

    .line 432
    .end local v0    # "e":Ljava/lang/Error;
    :cond_4
    return-void
.end method

.method public static copyFileToStream(Ljava/io/File;Ljava/io/OutputStream;[BJJLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V
    .locals 9
    .param p0, "in"    # Ljava/io/File;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "copyBuffer"    # [B
    .param p3, "startOffset"    # J
    .param p5, "maxLength"    # J
    .param p7, "l"    # Lcom/dropbox/sync/android/CoreIOUtil$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/CoreIOUtil$FileReadException;,
            Lcom/dropbox/sync/android/CoreIOUtil$WriteException;
        }
    .end annotation

    .prologue
    .line 192
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "fin":Ljava/io/FileInputStream;
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 197
    :try_start_1
    invoke-static/range {v1 .. v8}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BJJLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V
    :try_end_1
    .catch Lcom/dropbox/sync/android/CoreIOUtil$ReadException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 207
    :goto_0
    return-void

    .line 193
    .end local v1    # "fin":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/dropbox/sync/android/CoreIOUtil$FileReadException;

    invoke-direct {v2, v0}, Lcom/dropbox/sync/android/CoreIOUtil$FileReadException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v2

    sget-object v3, Lcom/dropbox/sync/android/CoreIOUtil;->TAG:Ljava/lang/String;

    const-string v4, "Failed to close FileInputStream: "

    invoke-virtual {v2, v3, v4, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 199
    .local v0, "e":Lcom/dropbox/sync/android/CoreIOUtil$ReadException;
    :try_start_3
    new-instance v2, Lcom/dropbox/sync/android/CoreIOUtil$FileReadException;

    invoke-direct {v2, v0}, Lcom/dropbox/sync/android/CoreIOUtil$FileReadException;-><init>(Lcom/dropbox/sync/android/CoreIOUtil$ReadException;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    .end local v0    # "e":Lcom/dropbox/sync/android/CoreIOUtil$ReadException;
    :catchall_0
    move-exception v2

    .line 202
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 205
    :goto_1
    throw v2

    .line 203
    :catch_3
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v3

    sget-object v4, Lcom/dropbox/sync/android/CoreIOUtil;->TAG:Ljava/lang/String;

    const-string v5, "Failed to close FileInputStream: "

    invoke-virtual {v3, v4, v5, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;[BJJLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/File;
    .param p2, "copyBuffer"    # [B
    .param p3, "startOffset"    # J
    .param p5, "maxLength"    # J
    .param p7, "l"    # Lcom/dropbox/sync/android/CoreIOUtil$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/CoreIOUtil$ReadException;,
            Lcom/dropbox/sync/android/CoreIOUtil$FileWriteException;
        }
    .end annotation

    .prologue
    .line 246
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "fout":Ljava/io/FileOutputStream;
    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 251
    :try_start_1
    invoke-static/range {v1 .. v8}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BJJLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V
    :try_end_1
    .catch Lcom/dropbox/sync/android/CoreIOUtil$WriteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    :goto_0
    return-void

    .line 247
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/dropbox/sync/android/CoreIOUtil$FileWriteException;

    invoke-direct {v1, v0}, Lcom/dropbox/sync/android/CoreIOUtil$FileWriteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 258
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    sget-object v3, Lcom/dropbox/sync/android/CoreIOUtil;->TAG:Ljava/lang/String;

    const-string v4, "Failed to close FileInputStream: "

    invoke-virtual {v1, v3, v4, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 253
    .local v0, "e":Lcom/dropbox/sync/android/CoreIOUtil$WriteException;
    :try_start_3
    new-instance v1, Lcom/dropbox/sync/android/CoreIOUtil$FileWriteException;

    invoke-direct {v1, v0}, Lcom/dropbox/sync/android/CoreIOUtil$FileWriteException;-><init>(Lcom/dropbox/sync/android/CoreIOUtil$WriteException;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    .end local v0    # "e":Lcom/dropbox/sync/android/CoreIOUtil$WriteException;
    :catchall_0
    move-exception v1

    .line 256
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 259
    :goto_1
    throw v1

    .line 257
    :catch_3
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v3

    sget-object v4, Lcom/dropbox/sync/android/CoreIOUtil;->TAG:Ljava/lang/String;

    const-string v5, "Failed to close FileInputStream: "

    invoke-virtual {v3, v4, v5, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;[BLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/File;
    .param p2, "copyBuffer"    # [B
    .param p3, "l"    # Lcom/dropbox/sync/android/CoreIOUtil$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/CoreIOUtil$ReadException;,
            Lcom/dropbox/sync/android/CoreIOUtil$FileWriteException;
        }
    .end annotation

    .prologue
    .line 224
    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;[BJJLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V

    .line 225
    return-void
.end method

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BJJLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V
    .locals 21
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "copyBuffer"    # [B
    .param p3, "startOffset"    # J
    .param p5, "maxLength"    # J
    .param p7, "l"    # Lcom/dropbox/sync/android/CoreIOUtil$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/CoreIOUtil$ReadException;,
            Lcom/dropbox/sync/android/CoreIOUtil$WriteException;
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreIOUtil;->skip(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-wide/16 v6, 0x0

    .line 109
    .local v6, "bytesTotal":J
    const-wide/16 v10, 0x0

    .line 110
    .local v10, "lastCallbackMillis":J
    const-wide/16 v8, 0x0

    .line 114
    .local v8, "lastCallbackBytes":J
    :cond_0
    :goto_0
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p2

    array-length v15, v0

    int-to-long v0, v15

    move-wide/from16 v16, v0

    sub-long v18, p5, v6

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 118
    .local v4, "bytesRead":I
    if-gtz v4, :cond_2

    .line 141
    if-eqz p7, :cond_1

    .line 142
    cmp-long v14, v8, v6

    if-gez v14, :cond_1

    .line 143
    move-object/from16 v0, p7

    invoke-interface {v0, v6, v7}, Lcom/dropbox/sync/android/CoreIOUtil$ProgressListener;->onProgress(J)V

    .line 149
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 153
    return-void

    .line 103
    .end local v4    # "bytesRead":I
    .end local v6    # "bytesTotal":J
    .end local v8    # "lastCallbackBytes":J
    .end local v10    # "lastCallbackMillis":J
    :catch_0
    move-exception v5

    .line 104
    .local v5, "e":Ljava/io/IOException;
    new-instance v14, Lcom/dropbox/sync/android/CoreIOUtil$ReadException;

    invoke-direct {v14, v5}, Lcom/dropbox/sync/android/CoreIOUtil$ReadException;-><init>(Ljava/io/IOException;)V

    throw v14

    .line 115
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "bytesTotal":J
    .restart local v8    # "lastCallbackBytes":J
    .restart local v10    # "lastCallbackMillis":J
    :catch_1
    move-exception v5

    .line 116
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v14, Lcom/dropbox/sync/android/CoreIOUtil$ReadException;

    invoke-direct {v14, v5}, Lcom/dropbox/sync/android/CoreIOUtil$ReadException;-><init>(Ljava/io/IOException;)V

    throw v14

    .line 122
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "bytesRead":I
    :cond_2
    const/4 v14, 0x0

    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 126
    int-to-long v14, v4

    add-long/2addr v6, v14

    .line 129
    if-eqz p7, :cond_0

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 131
    .local v12, "systemMillis":J
    sub-long v14, v12, v10

    const-wide/16 v16, 0xa

    cmp-long v14, v14, v16

    if-ltz v14, :cond_0

    .line 132
    move-wide v10, v12

    .line 133
    move-wide v8, v6

    .line 134
    move-object/from16 v0, p7

    invoke-interface {v0, v6, v7}, Lcom/dropbox/sync/android/CoreIOUtil$ProgressListener;->onProgress(J)V

    goto :goto_0

    .line 123
    .end local v12    # "systemMillis":J
    :catch_2
    move-exception v5

    .line 124
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v14, Lcom/dropbox/sync/android/CoreIOUtil$WriteException;

    invoke-direct {v14, v5}, Lcom/dropbox/sync/android/CoreIOUtil$WriteException;-><init>(Ljava/io/IOException;)V

    throw v14

    .line 150
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 151
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v14, Lcom/dropbox/sync/android/CoreIOUtil$WriteException;

    invoke-direct {v14, v5}, Lcom/dropbox/sync/android/CoreIOUtil$WriteException;-><init>(Ljava/io/IOException;)V

    throw v14
.end method

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "copyBuffer"    # [B
    .param p3, "l"    # Lcom/dropbox/sync/android/CoreIOUtil$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/CoreIOUtil$ReadException;,
            Lcom/dropbox/sync/android/CoreIOUtil$WriteException;
        }
    .end annotation

    .prologue
    .line 48
    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BJJLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V

    .line 49
    return-void
.end method

.method public static skip(Ljava/io/InputStream;J)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "numBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 62
    cmp-long v4, p1, v6

    if-gtz v4, :cond_1

    .line 80
    :cond_0
    return-void

    .line 64
    :cond_1
    move-wide v0, p1

    .line 65
    .local v0, "remaining":J
    :goto_0
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    .line 66
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 70
    .local v2, "skipped":J
    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    .line 72
    cmp-long v4, v2, v6

    if-nez v4, :cond_2

    .line 74
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 75
    const-wide/16 v2, 0x1

    .line 78
    :cond_2
    sub-long/2addr v0, v2

    .line 79
    goto :goto_0
.end method

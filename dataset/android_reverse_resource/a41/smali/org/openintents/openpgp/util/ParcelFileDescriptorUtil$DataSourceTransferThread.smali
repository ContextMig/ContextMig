.class Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;
.super Ljava/lang/Thread;
.source "ParcelFileDescriptorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataSourceTransferThread"
.end annotation


# instance fields
.field final dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

.field final outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "dataSource"    # Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 109
    const-string v0, "IPC Transfer Thread (TO service)"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    .line 111
    iput-object p2, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->outputStream:Ljava/io/OutputStream;

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->setDaemon(Z)V

    .line 113
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    iget-object v2, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    iget-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 133
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    invoke-virtual {v1}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "OpenPgp API"

    const-string v2, "Stopped writing because operation was cancelled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v1

    goto :goto_0

    .line 122
    :cond_0
    :try_start_4
    invoke-static {v0}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;->access$000(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const-string v1, "OpenPgp API"

    const-string v2, "Stopped writing due to broken pipe (other end closed pipe?)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 129
    :try_start_5
    iget-object v2, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 131
    :goto_2
    throw v1

    .line 125
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_6
    const-string v1, "OpenPgp API"

    const-string v2, "IOException when writing to out"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_0
.end method

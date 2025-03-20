.class Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;
.super Ljava/lang/Thread;
.source "ParcelFileDescriptorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataSinkTransferThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# instance fields
.field final dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink",
            "<TT;>;"
        }
    .end annotation
.end field

.field final inputStream:Ljava/io/InputStream;

.field sinkResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Ljava/io/InputStream;)V
    .locals 1
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink",
            "<TT;>;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;, "Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread<TT;>;"
    .local p1, "dataSink":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink<TT;>;"
    const-string v0, "IPC Transfer Thread (FROM service)"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

    .line 153
    iput-object p2, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->inputStream:Ljava/io/InputStream;

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->setDaemon(Z)V

    .line 155
    return-void
.end method


# virtual methods
.method getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;, "Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread<TT;>;"
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "result must be accessed only *after* the thread finished execution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->sinkResult:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 160
    .local p0, "this":Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;, "Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

    iget-object v2, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->inputStream:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;->processData(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->sinkResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    iget-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 174
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v0}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;->access$000(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "OpenPgp API"

    const-string v2, "Stopped read due to broken pipe (other end closed pipe?)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->sinkResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :try_start_3
    iget-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 171
    :catch_1
    move-exception v1

    goto :goto_0

    .line 165
    :cond_0
    :try_start_4
    const-string v1, "OpenPgp API"

    const-string v2, "IOException while reading from in"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 170
    :try_start_5
    iget-object v2, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 172
    :goto_2
    throw v1

    .line 171
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_0
.end method

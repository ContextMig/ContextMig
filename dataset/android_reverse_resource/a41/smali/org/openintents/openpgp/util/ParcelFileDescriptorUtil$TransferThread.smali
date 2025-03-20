.class Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;
.super Ljava/lang/Thread;
.source "ParcelFileDescriptorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransferThread"
.end annotation


# instance fields
.field final mIn:Ljava/io/InputStream;

.field final mOut:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 65
    const-string v0, "IPC Transfer Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mIn:Ljava/io/InputStream;

    .line 67
    iput-object p2, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mOut:Ljava/io/OutputStream;

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->setDaemon(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 73
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 77
    .local v0, "buf":[B
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 78
    iget-object v3, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mOut:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "OpenPgp API"

    const-string v4, "IOException when writing to out"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    iget-object v3, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 88
    :goto_1
    :try_start_3
    iget-object v3, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 92
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 84
    .restart local v2    # "len":I
    :cond_0
    :try_start_4
    iget-object v3, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 88
    :goto_3
    :try_start_5
    iget-object v3, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 89
    :catch_1
    move-exception v3

    goto :goto_2

    .line 83
    .end local v2    # "len":I
    :catchall_0
    move-exception v3

    .line 84
    :try_start_6
    iget-object v4, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 88
    :goto_4
    :try_start_7
    iget-object v4, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 90
    :goto_5
    throw v3

    .line 89
    :catch_2
    move-exception v4

    goto :goto_5

    .line 85
    :catch_3
    move-exception v4

    goto :goto_4

    .line 89
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    goto :goto_2

    .line 85
    :catch_5
    move-exception v3

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "len":I
    :catch_6
    move-exception v3

    goto :goto_3
.end method

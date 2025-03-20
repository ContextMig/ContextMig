.class public Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;
.super Ljava/lang/Object;
.source "ParcelFileDescriptorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;,
        Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;,
        Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/IOException;)Z
    .locals 1
    .param p0, "x0"    # Ljava/io/IOException;

    .prologue
    .line 36
    invoke-static {p0}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil;->isIOExceptionCausedByEPIPE(Ljava/io/IOException;)Z

    move-result v0

    return v0
.end method

.method public static asyncPipeToDataSink(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Landroid/os/ParcelFileDescriptor;)Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;
    .locals 3
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink",
            "<TT;>;",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "dataSink":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink<TT;>;"
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;

    invoke-direct {v0, p0, v1}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Ljava/io/InputStream;)V

    .line 100
    .local v0, "dataSinkTransferThread":Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;, "Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread<TT;>;"
    invoke-virtual {v0}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->start()V

    .line 101
    return-object v0
.end method

.method private static isIOExceptionCausedByEPIPE(Ljava/io/IOException;)Z
    .locals 3
    .param p0, "e"    # Ljava/io/IOException;

    .prologue
    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 138
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EPIPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 142
    :goto_0
    return v1

    .line 141
    :cond_0
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 142
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Landroid/system/ErrnoException;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/system/ErrnoException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EPIPE:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pipeFrom(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 41
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 42
    .local v1, "readSide":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x1

    aget-object v2, v0, v3

    .line 44
    .local v2, "writeSide":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;

    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v3, p0, v4}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 45
    invoke-virtual {v3}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->start()V

    .line 47
    return-object v1
.end method

.method public static pipeTo(Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;)Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;
    .locals 2
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 54
    .local v0, "InputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    new-instance v1, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;

    invoke-direct {v1, v0, p0}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 56
    .local v1, "t":Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;
    invoke-virtual {v1}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->start()V

    .line 57
    return-object v1
.end method

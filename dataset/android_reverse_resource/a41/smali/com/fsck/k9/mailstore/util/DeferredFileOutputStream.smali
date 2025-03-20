.class public Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;
.super Lorg/apache/commons/io/output/ThresholdingOutputStream;
.source "DeferredFileOutputStream.java"


# instance fields
.field private currentOutputStream:Ljava/io/OutputStream;

.field private final fileFactory:Lcom/fsck/k9/mailstore/util/FileFactory;

.field private outputFile:Ljava/io/File;


# direct methods
.method public constructor <init>(ILcom/fsck/k9/mailstore/util/FileFactory;)V
    .locals 2
    .param p1, "threshold"    # I
    .param p2, "fileFactory"    # Lcom/fsck/k9/mailstore/util/FileFactory;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V

    .line 26
    iput-object p2, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->fileFactory:Lcom/fsck/k9/mailstore/util/FileFactory;

    .line 29
    const/16 v1, 0x400

    if-ge p1, v1, :cond_0

    const/16 v0, 0x100

    .line 30
    .local v0, "size":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 31
    return-void

    .line 29
    .end local v0    # "size":I
    :cond_0
    div-int/lit8 v0, p1, 0x4

    goto :goto_0
.end method

.method private isMemoryBacked()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    return v0
.end method


# virtual methods
.method public getData()[B
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->isMemoryBacked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getData must only be called in memory-backed state!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->isMemoryBacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getFile must only be called in file-backed state!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method protected getStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected thresholdReached()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v1, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "thresholdReached must not be called if we already have an output file!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->isMemoryBacked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "currentOutputStream must be memory-based at this point!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 52
    .local v0, "memoryOutputStream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->fileFactory:Lcom/fsck/k9/mailstore/util/FileFactory;

    invoke-interface {v1}, Lcom/fsck/k9/mailstore/util/FileFactory;->createFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    .line 53
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 55
    iget-object v1, p0, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 56
    return-void
.end method

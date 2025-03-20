.class public Lcom/fsck/k9/mailstore/DeferredFileBody;
.super Ljava/lang/Object;
.source "DeferredFileBody.java"

# interfaces
.implements Lcom/fsck/k9/mail/internet/RawDataBody;
.implements Lcom/fsck/k9/mail/internet/SizeAware;


# static fields
.field public static final DEFAULT_MEMORY_BACKED_THRESHOLD:I = 0x2000


# instance fields
.field private data:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final encoding:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private final fileFactory:Lcom/fsck/k9/mailstore/util/FileFactory;

.field private final memoryBackedThreshold:I


# direct methods
.method constructor <init>(ILcom/fsck/k9/mailstore/util/FileFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "memoryBackedThreshold"    # I
    .param p2, "fileFactory"    # Lcom/fsck/k9/mailstore/util/FileFactory;
    .param p3, "transferEncoding"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->fileFactory:Lcom/fsck/k9/mailstore/util/FileFactory;

    .line 49
    iput p1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->memoryBackedThreshold:I

    .line 50
    iput-object p3, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->encoding:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/util/FileFactory;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileFactory"    # Lcom/fsck/k9/mailstore/util/FileFactory;
    .param p2, "transferEncoding"    # Ljava/lang/String;

    .prologue
    .line 42
    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1, p2}, Lcom/fsck/k9/mailstore/DeferredFileBody;-><init>(ILcom/fsck/k9/mailstore/util/FileFactory;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/fsck/k9/mailstore/DeferredFileBody;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/DeferredFileBody;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$102(Lcom/fsck/k9/mailstore/DeferredFileBody;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/DeferredFileBody;
    .param p1, "x1"    # [B

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    return-object p1
.end method

.method private writeMemoryToFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Body is already file-backed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    if-nez v1, :cond_1

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Data must be fully written before it can be read!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_1
    const-string v1, "Writing body to file for attachment access"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->fileFactory:Lcom/fsck/k9/mailstore/util/FileFactory;

    invoke-interface {v1}, Lcom/fsck/k9/mailstore/util/FileFactory;->createFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    .line 116
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 117
    .local v0, "fos":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 118
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    .line 121
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/DeferredFileBody;->writeMemoryToFile()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "Decrypted data is file-backed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    :goto_0
    return-object v1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    if-eqz v1, :cond_1

    .line 76
    const-string v1, "Decrypted data is memory-backed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "Unable to open body"

    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Data must be fully written before it can be read!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;

    iget v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->memoryBackedThreshold:I

    iget-object v2, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->fileFactory:Lcom/fsck/k9/mailstore/util/FileFactory;

    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/mailstore/DeferredFileBody$1;-><init>(Lcom/fsck/k9/mailstore/DeferredFileBody;ILcom/fsck/k9/mailstore/util/FileFactory;)V

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 92
    :goto_0
    return-wide v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data must be fully written before it can be read!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot re-encode a DecryptedTempFileBody!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/DeferredFileBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 131
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 132
    return-void
.end method

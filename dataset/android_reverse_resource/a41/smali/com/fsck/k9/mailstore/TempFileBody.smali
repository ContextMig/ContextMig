.class public Lcom/fsck/k9/mailstore/TempFileBody;
.super Lcom/fsck/k9/mailstore/BinaryAttachmentBody;
.source "TempFileBody.java"

# interfaces
.implements Lcom/fsck/k9/mail/internet/SizeAware;


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/BinaryAttachmentBody;-><init>()V

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fsck/k9/mailstore/TempFileBody;->mFile:Ljava/io/File;

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/fsck/k9/mailstore/BinaryAttachmentBody;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/fsck/k9/mailstore/TempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lcom/fsck/k9/mailstore/LocalStore;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fsck/k9/mailstore/TempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/fsck/k9/mailstore/BinaryAttachmentBody;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/fsck/k9/mailstore/BinaryAttachmentBody;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

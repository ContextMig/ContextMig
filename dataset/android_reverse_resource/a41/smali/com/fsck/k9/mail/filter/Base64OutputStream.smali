.class public Lcom/fsck/k9/mail/filter/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# instance fields
.field private final base64:Lcom/fsck/k9/mail/filter/Base64;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/filter/Base64OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->singleByte:[B

    .line 68
    iput-boolean p2, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->doEncode:Z

    .line 69
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64;

    invoke-direct {v0}, Lcom/fsck/k9/mail/filter/Base64;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI[B)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z
    .param p3, "lineLength"    # I
    .param p4, "lineSeparator"    # [B

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->singleByte:[B

    .line 90
    iput-boolean p2, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->doEncode:Z

    .line 91
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64;

    invoke-direct {v0, p3, p4}, Lcom/fsck/k9/mail/filter/Base64;-><init>(I[B)V

    iput-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    .line 92
    return-void
.end method

.method private flush(Z)V
    .locals 5
    .param p1, "propagate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/filter/Base64;->avail()I

    move-result v0

    .line 145
    .local v0, "avail":I
    if-lez v0, :cond_0

    .line 146
    new-array v1, v0, [B

    .line 147
    .local v1, "buf":[B
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    invoke-virtual {v3, v1, v4, v0}, Lcom/fsck/k9/mail/filter/Base64;->readResults([BII)I

    move-result v2

    .line 148
    .local v2, "c":I
    if-lez v2, :cond_0

    .line 149
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 152
    .end local v1    # "buf":[B
    .end local v2    # "c":I
    :cond_0
    if-eqz p1, :cond_1

    .line 153
    iget-object v3, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 155
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 175
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->doEncode:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    iget-object v1, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->singleByte:[B

    invoke-virtual {v0, v1, v3, v2}, Lcom/fsck/k9/mail/filter/Base64;->encode([BII)V

    .line 180
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/Base64OutputStream;->flush()V

    .line 181
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    iget-object v1, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->singleByte:[B

    invoke-virtual {v0, v1, v3, v2}, Lcom/fsck/k9/mail/filter/Base64;->decode([BII)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/filter/Base64OutputStream;->flush(Z)V

    .line 166
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 100
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/fsck/k9/mail/filter/Base64OutputStream;->write([BII)V

    .line 101
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 120
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-gez v0, :cond_2

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 122
    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 123
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 124
    :cond_4
    if-lez p3, :cond_5

    .line 125
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->doEncode:Z

    if-eqz v0, :cond_6

    .line 126
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/mail/filter/Base64;->encode([BII)V

    .line 130
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/filter/Base64OutputStream;->flush(Z)V

    .line 132
    :cond_5
    return-void

    .line 128
    :cond_6
    iget-object v0, p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;->base64:Lcom/fsck/k9/mail/filter/Base64;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/mail/filter/Base64;->decode([BII)V

    goto :goto_0
.end method

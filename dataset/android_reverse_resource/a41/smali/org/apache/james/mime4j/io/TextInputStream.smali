.class Lorg/apache/james/mime4j/io/TextInputStream;
.super Ljava/io/InputStream;
.source "TextInputStream.java"


# instance fields
.field private final bbuf:Ljava/nio/ByteBuffer;

.field private final cbuf:Ljava/nio/CharBuffer;

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private mark:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bufferSize"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->mark:I

    .line 45
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 46
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 47
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 48
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    .line 49
    iget-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 50
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    .line 51
    return-void
.end method

.method private fillBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 55
    iget-object v1, p0, Lorg/apache/james/mime4j/io/TextInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 56
    .local v0, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 59
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 60
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->mark:I

    .line 137
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 107
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/TextInputStream;->fillBuffer()V

    .line 106
    iget-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/TextInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 67
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_2

    .line 68
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 70
    :cond_2
    iget-object v3, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v2

    .line 94
    :cond_3
    :goto_0
    return v0

    .line 73
    :cond_4
    const/4 v0, 0x0

    .line 74
    .local v0, "bytesRead":I
    :cond_5
    :goto_1
    if-lez p3, :cond_7

    .line 75
    iget-object v3, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 76
    iget-object v3, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 77
    .local v1, "chunk":I
    iget-object v3, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 78
    add-int/2addr p2, v1

    .line 79
    sub-int/2addr p3, v1

    .line 80
    add-int/2addr v0, v1

    .line 81
    goto :goto_1

    .line 82
    .end local v1    # "chunk":I
    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/TextInputStream;->fillBuffer()V

    .line 83
    iget-object v3, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_5

    .line 88
    :cond_7
    if-gtz v0, :cond_3

    .line 91
    iget-object v3, p0, Lorg/apache/james/mime4j/io/TextInputStream;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    .line 92
    goto :goto_0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 141
    iget v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->mark:I

    if-eq v0, v2, :cond_0

    .line 142
    iget-object v0, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/io/TextInputStream;->mark:I

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    iput v2, p0, Lorg/apache/james/mime4j/io/TextInputStream;->mark:I

    .line 145
    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "skipped":I
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lorg/apache/james/mime4j/io/TextInputStream;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    .line 123
    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method

.class public Lorg/apache/james/mime4j/util/ContentUtil;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# static fields
.field static final DEFAULT_COPY_BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static buffer(Ljava/io/Reader;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Reader may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 88
    .local v0, "buf":Ljava/io/StringWriter;
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/util/ContentUtil;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buffer(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input stream may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/util/ContentUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 55
    .local v0, "buffer":[B
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "inputLength":I
    if-eq v2, v1, :cond_0

    .line 56
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 3
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/16 v2, 0x400

    new-array v0, v2, [C

    .line 69
    .local v0, "buffer":[C
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "inputLength":I
    if-eq v2, v1, :cond_0

    .line 70
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public static decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "byteSequence"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;
    .locals 3
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "byteSequence"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    const/4 v2, 0x0

    .line 213
    :goto_0
    return-object v2

    .line 205
    :cond_0
    if-nez p0, :cond_1

    .line 206
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    .line 208
    :cond_1
    instance-of v2, p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 209
    check-cast v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 210
    .local v0, "bab":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 212
    .end local v0    # "bab":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    :cond_2
    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->toByteArray()[B

    move-result-object v1

    .line 213
    .local v1, "bytes":[B
    invoke-static {p0, v1, p2, p3}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static decode(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;
    .locals 1
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 219
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    return-object v0
.end method

.method public static decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "byteSequence"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 143
    if-nez p0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;
    .locals 3
    .param p0, "byteSequence"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v2, 0x0

    .line 183
    :goto_0
    return-object v2

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 180
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_1
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 181
    invoke-interface {p0, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static encode(Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 3
    .param p0, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    if-nez p0, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 108
    :cond_0
    return-object v0

    .line 104
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 105
    .local v0, "buf":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 106
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static encode(Ljava/nio/charset/Charset;Ljava/lang/CharSequence;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    .line 125
    :cond_0
    if-nez p0, :cond_1

    .line 126
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    .line 128
    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 129
    .local v1, "encoded":Ljava/nio/ByteBuffer;
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 130
    .local v0, "buf":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    goto :goto_0
.end method

.method public static toAsciiByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 236
    sget-object v0, Lorg/apache/james/mime4j/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/util/ContentUtil;->toByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toAsciiString(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .prologue
    .line 286
    sget-object v0, Lorg/apache/james/mime4j/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/util/ContentUtil;->toString(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 252
    sget-object v0, Lorg/apache/james/mime4j/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/util/ContentUtil;->toString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toAsciiString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 269
    sget-object v0, Lorg/apache/james/mime4j/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/james/mime4j/util/ContentUtil;->toString([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 228
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    return-object v1

    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    if-eqz p1, :cond_1

    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_1
    sget-object p1, Lorg/apache/james/mime4j/Charsets;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 229
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toString(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 274
    const/4 v1, 0x0

    .line 277
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    return-object v1

    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v4

    if-eqz p1, :cond_1

    .line 278
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :goto_1
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 277
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_1
    :try_start_1
    sget-object p1, Lorg/apache/james/mime4j/Charsets;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static toString([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 257
    const/4 v1, 0x0

    .line 260
    .end local p3    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    return-object v1

    .restart local p3    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 261
    .end local p3    # "charset":Ljava/nio/charset/Charset;
    :goto_1
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 260
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local p3    # "charset":Ljava/nio/charset/Charset;
    :cond_1
    :try_start_1
    sget-object p3, Lorg/apache/james/mime4j/Charsets;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static toString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 240
    if-nez p0, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 244
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    return-object v1

    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :goto_1
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 247
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 244
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_1
    :try_start_1
    sget-object p1, Lorg/apache/james/mime4j/Charsets;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

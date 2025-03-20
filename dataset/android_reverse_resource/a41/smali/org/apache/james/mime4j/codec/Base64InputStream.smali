.class public Lorg/apache/james/mime4j/codec/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BASE64_DECODE:[I

.field private static final BASE64_PAD:B = 0x3dt

.field private static final ENCODED_BUFFER_SIZE:I = 0x600

.field private static final EOF:I = -0x1


# instance fields
.field private closed:Z

.field private final decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private final encoded:[B

.field private eof:Z

.field private final in:Ljava/io/InputStream;

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private position:I

.field private final singleByte:[B

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 30
    const-class v1, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    .line 33
    new-array v1, v3, [I

    sput-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 37
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    .restart local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 39
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    aput v0, v1, v2

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40
    :cond_2
    return-void
.end method

.method protected constructor <init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 2
    .param p1, "bufsize"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    .line 52
    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 53
    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    .line 55
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    .line 68
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 69
    iput-object p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    .line 70
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 61
    const/16 v0, 0x600

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "strict"    # Z

    .prologue
    .line 78
    const/16 v1, 0x600

    if-eqz p2, :cond_0

    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 79
    return-void

    .line 78
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_0
.end method

.method private decodePad(II[BII)I
    .locals 5
    .param p1, "data"    # I
    .param p2, "sextets"    # I
    .param p3, "buffer"    # [B
    .param p4, "index"    # I
    .param p5, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 243
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 246
    ushr-int/lit8 v4, p1, 0x4

    int-to-byte v0, v4

    .line 247
    .local v0, "b":B
    if-ge p4, p5, :cond_0

    .line 248
    add-int/lit8 v3, p4, 0x1

    .end local p4    # "index":I
    .local v3, "index":I
    aput-byte v0, p3, p4

    move p4, v3

    .line 273
    .end local v0    # "b":B
    .end local v3    # "index":I
    .restart local p4    # "index":I
    :goto_0
    return p4

    .line 250
    .restart local v0    # "b":B
    :cond_0
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    .line 252
    .end local v0    # "b":B
    :cond_1
    const/4 v4, 0x3

    if-ne p2, v4, :cond_4

    .line 255
    ushr-int/lit8 v4, p1, 0xa

    int-to-byte v1, v4

    .line 256
    .local v1, "b1":B
    ushr-int/lit8 v4, p1, 0x2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 258
    .local v2, "b2":B
    add-int/lit8 v4, p5, -0x1

    if-ge p4, v4, :cond_2

    .line 259
    add-int/lit8 v3, p4, 0x1

    .end local p4    # "index":I
    .restart local v3    # "index":I
    aput-byte v1, p3, p4

    .line 260
    add-int/lit8 p4, v3, 0x1

    .end local v3    # "index":I
    .restart local p4    # "index":I
    aput-byte v2, p3, v3

    goto :goto_0

    .line 261
    :cond_2
    if-ge p4, p5, :cond_3

    .line 262
    add-int/lit8 v3, p4, 0x1

    .end local p4    # "index":I
    .restart local v3    # "index":I
    aput-byte v1, p3, p4

    .line 263
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    move p4, v3

    .end local v3    # "index":I
    .restart local p4    # "index":I
    goto :goto_0

    .line 265
    :cond_3
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 266
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    .line 270
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpecedPad(I)V

    goto :goto_0
.end method

.method private handleUnexpecedPad(I)V
    .locals 4
    .param p1, "sextets"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v1, "Unexpected padding character"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sextet(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected padding character"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    return-void
.end method

.method private handleUnexpectedEof(I)V
    .locals 4
    .param p1, "sextets"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v1, "Unexpected end of BASE64 stream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sextet(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end of BASE64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    return-void
.end method

.method private read0([BII)I
    .locals 17
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    add-int v6, p2, p3

    .line 137
    .local v6, "to":I
    move/from16 v5, p2

    .line 140
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    move/from16 v0, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 142
    .local v10, "chunk":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v4, v0, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v10}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->remove(II)V

    .line 144
    add-int/2addr v5, v10

    .line 149
    .end local v10    # "chunk":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    if-eqz v1, :cond_2

    .line 150
    move/from16 v0, p2

    if-ne v5, v0, :cond_1

    const/4 v1, -0x1

    .line 236
    :goto_0
    return v1

    .line 150
    :cond_1
    sub-int v1, v5, p2

    goto :goto_0

    .line 154
    :cond_2
    const/4 v2, 0x0

    .line 155
    .local v2, "data":I
    const/4 v3, 0x0

    .line 157
    .local v3, "sextets":I
    :cond_3
    if-ge v5, v6, :cond_10

    .line 160
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ne v1, v4, :cond_a

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    .line 162
    .local v13, "n":I
    const/4 v1, -0x1

    if-ne v13, v1, :cond_7

    .line 163
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 165
    if-eqz v3, :cond_5

    .line 167
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpectedEof(I)V

    .line 170
    :cond_5
    move/from16 v0, p2

    if-ne v5, v0, :cond_6

    const/4 v1, -0x1

    goto :goto_0

    :cond_6
    sub-int v1, v5, p2

    goto :goto_0

    .line 171
    :cond_7
    if-lez v13, :cond_8

    .line 172
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 173
    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    goto :goto_1

    .line 175
    :cond_8
    sget-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v13, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 198
    .end local v13    # "n":I
    .local v11, "decoded":I
    .local v14, "value":I
    :cond_9
    shl-int/lit8 v1, v2, 0x6

    or-int v2, v1, v11

    .line 199
    add-int/lit8 v3, v3, 0x1

    .line 201
    const/4 v1, 0x4

    if-ne v3, v1, :cond_a

    .line 202
    const/4 v3, 0x0

    .line 204
    ushr-int/lit8 v1, v2, 0x10

    int-to-byte v7, v1

    .line 205
    .local v7, "b1":B
    ushr-int/lit8 v1, v2, 0x8

    int-to-byte v8, v1

    .line 206
    .local v8, "b2":B
    int-to-byte v9, v2

    .line 208
    .local v9, "b3":B
    add-int/lit8 v1, v6, -0x2

    if-ge v5, v1, :cond_c

    .line 209
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "index":I
    .local v12, "index":I
    aput-byte v7, p1, v5

    .line 210
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "index":I
    .restart local v5    # "index":I
    aput-byte v8, p1, v12

    .line 211
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "index":I
    .restart local v12    # "index":I
    aput-byte v9, p1, v5

    move v5, v12

    .line 181
    .end local v7    # "b1":B
    .end local v8    # "b2":B
    .end local v9    # "b3":B
    .end local v11    # "decoded":I
    .end local v12    # "index":I
    .end local v14    # "value":I
    .restart local v5    # "index":I
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ge v1, v4, :cond_3

    if-ge v5, v6, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    add-int/lit8 v15, v4, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    aget-byte v1, v1, v4

    and-int/lit16 v14, v1, 0xff

    .line 184
    .restart local v14    # "value":I
    const/16 v1, 0x3d

    if-ne v14, v1, :cond_b

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    .line 185
    invoke-direct/range {v1 .. v6}, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodePad(II[BII)I

    move-result v5

    .line 186
    sub-int v1, v5, p2

    goto/16 :goto_0

    .line 189
    :cond_b
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    aget v11, v1, v14

    .line 190
    .restart local v11    # "decoded":I
    if-gez v11, :cond_9

    .line 191
    const/16 v1, 0xd

    if-eq v14, v1, :cond_a

    const/16 v1, 0xa

    if-eq v14, v1, :cond_a

    const/16 v1, 0x20

    if-eq v14, v1, :cond_a

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected base64 byte: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-byte v15, v14

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "ignoring."

    invoke-virtual {v1, v4, v15}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 193
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Unexpected base64 byte"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    .restart local v7    # "b1":B
    .restart local v8    # "b2":B
    .restart local v9    # "b3":B
    :cond_c
    add-int/lit8 v1, v6, -0x1

    if-ge v5, v1, :cond_d

    .line 214
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "index":I
    .restart local v12    # "index":I
    aput-byte v7, p1, v5

    .line 215
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "index":I
    .restart local v5    # "index":I
    aput-byte v8, p1, v12

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v9}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 227
    :goto_2
    sget-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_f

    if-eq v5, v6, :cond_f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 217
    :cond_d
    if-ge v5, v6, :cond_e

    .line 218
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "index":I
    .restart local v12    # "index":I
    aput-byte v7, p1, v5

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v8}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v9}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    move v5, v12

    .end local v12    # "index":I
    .restart local v5    # "index":I
    goto :goto_2

    .line 222
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v7}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v8}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v9}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_2

    .line 228
    :cond_f
    sub-int v1, v6, p2

    goto/16 :goto_0

    .line 234
    .end local v7    # "b1":B
    .end local v8    # "b2":B
    .end local v9    # "b3":B
    .end local v11    # "decoded":I
    .end local v14    # "value":I
    :cond_10
    sget-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_11

    if-eqz v3, :cond_11

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 235
    :cond_11
    sget-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_12

    if-eq v5, v6, :cond_12

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 236
    :cond_12
    sub-int v1, v6, p2

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    goto :goto_0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 83
    iget-boolean v2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v2, :cond_0

    .line 84
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream has been closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    .line 88
    .local v0, "bytes":I
    if-ne v0, v1, :cond_1

    .line 92
    :goto_0
    return v1

    .line 91
    :cond_1
    if-ne v0, v4, :cond_0

    .line 92
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez p1, :cond_1

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 104
    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    .line 107
    :goto_0
    return v0

    :cond_2
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    if-nez p1, :cond_1

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 118
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 121
    :cond_3
    if-nez p3, :cond_4

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_0
.end method

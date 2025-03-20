.class public Lorg/apache/james/mime4j/codec/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# static fields
.field private static final PATTERN_ENCODED_WORD:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "(.*?)=\\?(.+?)\\?(\\w)\\?(.+?)\\?="

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/DecoderUtil;->PATTERN_ENCODED_WORD:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeB(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;
    .locals 2
    .param p0, "encodedText"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p0, p2}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeBase64(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)[B

    move-result-object v0

    .line 107
    .local v0, "decodedBytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static decodeBase64(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)[B
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 75
    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/codec/Base64InputStream;

    .line 76
    invoke-static {p0}, Lorg/apache/james/mime4j/io/InputStreams;->createAscii(Ljava/lang/CharSequence;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v3, "is":Lorg/apache/james/mime4j/codec/Base64InputStream;
    :try_start_1
    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 80
    .local v1, "buf":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 81
    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "b":I
    .end local v1    # "buf":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .end local v3    # "is":Lorg/apache/james/mime4j/codec/Base64InputStream;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 83
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "b":I
    .restart local v1    # "buf":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .restart local v3    # "is":Lorg/apache/james/mime4j/codec/Base64InputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 85
    :try_start_4
    invoke-virtual {v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    return-object v4
.end method

.method static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "fallback"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 12
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .param p2, "fallback"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 175
    const/4 v8, 0x0

    .line 176
    .local v8, "tailIndex":I
    const/4 v3, 0x0

    .line 178
    .local v3, "lastMatchValid":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v6, "sb":Ljava/lang/StringBuilder;
    sget-object v11, Lorg/apache/james/mime4j/codec/DecoderUtil;->PATTERN_ENCODED_WORD:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .local v4, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 181
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "separator":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "mimeCharset":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "encoding":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "encodedText":Ljava/lang/String;
    invoke-static {v5, v2, v1, p1, p2}, Lorg/apache/james/mime4j/codec/DecoderUtil;->tryDecodeEncodedWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "decoded":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 189
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    .line 198
    if-eqz v0, :cond_3

    move v3, v9

    .line 199
    :goto_2
    goto :goto_0

    .line 191
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v7}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 192
    :cond_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move v3, v10

    .line 198
    goto :goto_2

    .line 201
    .end local v0    # "decoded":Ljava/lang/String;
    .end local v1    # "encodedText":Ljava/lang/String;
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v5    # "mimeCharset":Ljava/lang/String;
    .end local v7    # "separator":Ljava/lang/String;
    :cond_4
    if-nez v8, :cond_5

    .line 205
    .end local p0    # "body":Ljava/lang/String;
    :goto_3
    return-object p0

    .line 204
    .restart local p0    # "body":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method static decodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;
    .locals 2
    .param p0, "encodedText"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/DecoderUtil;->replaceUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-static {p0, p2}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeQuotedPrintable(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)[B

    move-result-object v0

    .line 125
    .local v0, "decodedBytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static decodeQuotedPrintable(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)[B
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .prologue
    .line 48
    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    .line 49
    invoke-static {p0}, Lorg/apache/james/mime4j/io/InputStreams;->createAscii(Ljava/lang/CharSequence;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v3, "is":Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
    :try_start_1
    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 53
    .local v1, "buf":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 54
    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    .end local v0    # "b":I
    .end local v1    # "buf":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .end local v3    # "is":Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 56
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "b":I
    .restart local v1    # "buf":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .restart local v3    # "is":Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 58
    :try_start_4
    invoke-virtual {v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 56
    return-object v4
.end method

.method private static varargs monitor(Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .param p1, "mimeCharset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "encodedText"    # Ljava/lang/String;
    .param p4, "dropDesc"    # Ljava/lang/String;
    .param p5, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->isListening()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    invoke-static {p1, p2, p3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->recombine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "encodedWord":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v3, "text":Ljava/lang/StringBuilder;
    array-length v5, p5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, p5, v4

    .line 257
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "exceptionDesc":Ljava/lang/String;
    invoke-virtual {p0, v1, p4}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 266
    .end local v0    # "encodedWord":Ljava/lang/String;
    .end local v1    # "exceptionDesc":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private static recombine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mimeCharset"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "encodedText"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceUnderscores(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 279
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 280
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 281
    .local v0, "c":C
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 282
    const-string v3, "=20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static tryDecodeEncodedWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 8
    .param p0, "mimeCharset"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "encodedText"    # Ljava/lang/String;
    .param p3, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .param p4, "fallback"    # Ljava/nio/charset/Charset;

    .prologue
    .line 212
    invoke-static {p0}, Lorg/apache/james/mime4j/util/CharsetUtil;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 213
    .local v6, "charset":Ljava/nio/charset/Charset;
    if-nez v6, :cond_1

    .line 214
    if-nez p4, :cond_0

    .line 215
    const-string v4, "leaving word encoded"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Mime charser \'"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    aput-object p0, v5, v0

    const/4 v0, 0x2

    const-string v1, "\' doesn\'t have a corresponding Java charset"

    aput-object v1, v5, v0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/DecoderUtil;->monitor(Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    .line 219
    :cond_0
    move-object v6, p4

    .line 223
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 224
    const-string v4, "leaving word encoded"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Missing encoded text in encoded word"

    aput-object v1, v5, v0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/DecoderUtil;->monitor(Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_2
    :try_start_0
    const-string v0, "Q"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_3
    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_4
    const-string v4, "leaving word encoded"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Warning: Unknown encoding in encoded word"

    aput-object v1, v5, v0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/DecoderUtil;->monitor(Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v7

    .line 241
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "leaving word encoded"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Unsupported encoding ("

    aput-object v1, v5, v0

    const/4 v0, 0x1

    .line 242
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, ") in encoded word"

    aput-object v1, v5, v0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 241
    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/DecoderUtil;->monitor(Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    .line 245
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v4, "leaving word encoded"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Could not decode ("

    aput-object v1, v5, v0

    const/4 v0, 0x1

    .line 246
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, ") encoded word"

    aput-object v1, v5, v0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 245
    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/DecoderUtil;->monitor(Lorg/apache/james/mime4j/codec/DecodeMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

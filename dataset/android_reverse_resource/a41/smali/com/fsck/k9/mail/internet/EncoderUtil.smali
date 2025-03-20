.class Lcom/fsck/k9/mail/internet/EncoderUtil;
.super Ljava/lang/Object;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;
    }
.end annotation


# static fields
.field private static final ENCODED_WORD_MAX_LENGTH:I = 0x4b

.field private static final ENC_WORD_PREFIX:Ljava/lang/String; = "=?"

.field private static final ENC_WORD_SUFFIX:Ljava/lang/String; = "?="

.field private static final Q_RESTRICTED_CHARS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/mail/internet/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static bEncodedLength([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 107
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, "ascii":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 159
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 160
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 161
    .local v1, "ch":C
    const/16 v4, 0xff

    if-le v1, v4, :cond_0

    .line 162
    sget-object v4, Lorg/apache/james/mime4j/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 168
    .end local v1    # "ch":C
    :goto_1
    return-object v4

    .line 164
    .restart local v1    # "ch":C
    :cond_0
    const/16 v4, 0x7f

    if-le v1, v4, :cond_1

    .line 165
    const/4 v0, 0x0

    .line 159
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "ch":C
    :cond_2
    if-eqz v0, :cond_3

    sget-object v4, Lorg/apache/james/mime4j/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_3
    sget-object v4, Lorg/apache/james/mime4j/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method private static determineEncoding([B)Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 172
    array-length v4, p0

    if-nez v4, :cond_0

    .line 173
    sget-object v4, Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;->Q:Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;

    .line 184
    :goto_0
    return-object v4

    .line 175
    :cond_0
    const/4 v2, 0x0

    .line 176
    .local v2, "qEncoded":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 177
    aget-byte v4, p0, v0

    and-int/lit16 v3, v4, 0xff

    .line 178
    .local v3, "v":I
    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/fsck/k9/mail/internet/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 176
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    .end local v3    # "v":I
    :cond_2
    mul-int/lit8 v4, v2, 0x64

    array-length v5, p0

    div-int v1, v4, v5

    .line 184
    .local v1, "percentage":I
    const/16 v4, 0x1e

    if-le v1, v4, :cond_3

    sget-object v4, Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;->B:Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;->Q:Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;

    goto :goto_0
.end method

.method private static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 148
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 149
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 150
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 151
    return-object v1
.end method

.method private static encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 10
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bytes"    # [B

    .prologue
    .line 87
    invoke-static {p3}, Lcom/fsck/k9/mail/internet/EncoderUtil;->bEncodedLength([B)I

    move-result v2

    .line 89
    .local v2, "encodedLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    const-string v9, "?="

    .line 90
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v5, v8, v9

    .line 91
    .local v5, "totalLength":I
    const/16 v8, 0x4b

    if-gt v5, v8, :cond_0

    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 102
    :goto_0
    return-object v8

    .line 94
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "part1":Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 96
    .local v0, "bytes1":[B
    invoke-static {p0, v3, p2, v0}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "word1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "part2":Ljava/lang/String;
    invoke-static {v4, p2}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 100
    .local v1, "bytes2":[B
    invoke-static {p0, v4, p2, v1}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "word2":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 68
    :cond_0
    if-nez p1, :cond_1

    .line 69
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/EncoderUtil;->determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/internet/CharsetSupport;->getExternalCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "mimeCharset":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 75
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/EncoderUtil;->determineEncoding([B)Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;

    move-result-object v1

    .line 77
    .local v1, "encoding":Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;
    sget-object v4, Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;->B:Lcom/fsck/k9/mail/internet/EncoderUtil$Encoding;

    if-ne v1, v4, :cond_2

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?B?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "prefix":Ljava/lang/String;
    invoke-static {v3, p0, p1, v0}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v4

    .line 82
    :goto_0
    return-object v4

    .line 81
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?Q?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .restart local v3    # "prefix":Ljava/lang/String;
    invoke-static {v3, p0, p1, v0}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 10
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bytes"    # [B

    .prologue
    .line 111
    invoke-static {p3}, Lcom/fsck/k9/mail/internet/EncoderUtil;->qEncodedLength([B)I

    move-result v2

    .line 113
    .local v2, "encodedLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    const-string v9, "?="

    .line 114
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v5, v8, v9

    .line 115
    .local v5, "totalLength":I
    const/16 v8, 0x4b

    if-gt v5, v8, :cond_0

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p3, v9}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 126
    :goto_0
    return-object v8

    .line 118
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "part1":Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 120
    .local v0, "bytes1":[B
    invoke-static {p0, v3, p2, v0}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "word1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "part2":Ljava/lang/String;
    invoke-static {v4, p2}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 124
    .local v1, "bytes2":[B
    invoke-static {p0, v4, p2, v1}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "word2":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private static initChars(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 4
    .param p0, "specials"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Ljava/util/BitSet;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 29
    .local v0, "bs":Ljava/util/BitSet;
    const/16 v1, 0x21

    .local v1, "ch":C
    :goto_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_1

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 29
    :cond_0
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method private static qEncodedLength([B)I
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "count":I
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-byte v0, p0, v3

    .line 134
    .local v0, "b":B
    and-int/lit16 v2, v0, 0xff

    .line 135
    .local v2, "v":I
    const/16 v5, 0x20

    if-ne v2, v5, :cond_0

    .line 136
    add-int/lit8 v1, v1, 0x1

    .line 133
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_0
    sget-object v5, Lcom/fsck/k9/mail/internet/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 138
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 140
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    .end local v0    # "b":B
    .end local v2    # "v":I
    :cond_2
    return v1
.end method

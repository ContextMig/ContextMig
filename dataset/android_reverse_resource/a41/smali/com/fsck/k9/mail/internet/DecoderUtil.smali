.class Lcom/fsck/k9/mail/internet/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "encodedWord"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 35
    .local v0, "bytes":[B
    new-instance v2, Lorg/apache/james/mime4j/codec/Base64InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    .local v2, "is":Lorg/apache/james/mime4j/codec/Base64InputStream;
    :try_start_0
    invoke-static {v2, p1}, Lcom/fsck/k9/mail/internet/CharsetSupport;->readToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 39
    :goto_0
    return-object v3

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static decodeEncodedWord(Ljava/lang/String;IILcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 12
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/16 v9, 0x3f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 150
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 151
    .local v5, "qm1":I
    add-int/lit8 v8, p2, -0x2

    if-ne v5, v8, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v7

    .line 154
    :cond_1
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 155
    .local v6, "qm2":I
    add-int/lit8 v8, p2, -0x2

    if-eq v6, v8, :cond_0

    .line 158
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "mimeCharset":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "encoding":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, p2, -0x2

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "encodedText":Ljava/lang/String;
    :try_start_0
    invoke-static {v4, p3}, Lcom/fsck/k9/mail/internet/CharsetSupport;->fixupCharset(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 170
    const-string v8, "Missing encoded text in encoded word: \'%s\'"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    .end local v0    # "charset":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    goto :goto_0

    .line 174
    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "charset":Ljava/lang/String;
    :cond_2
    const-string v8, "Q"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 175
    invoke-static {v2, v0}, Lcom/fsck/k9/mail/internet/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 176
    :cond_3
    const-string v8, "B"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 177
    invoke-static {v2, v0}, Lcom/fsck/k9/mail/internet/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 179
    :cond_4
    const-string v8, "Warning: Unknown encoding in encoded word \'%s\'"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 13
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/16 v12, 0x3f

    const/4 v11, -0x1

    .line 92
    const-string v9, "=?"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 126
    .end local p0    # "body":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 96
    .restart local p0    # "body":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 97
    .local v3, "previousEnd":I
    const/4 v4, 0x0

    .line 99
    .local v4, "previousWasEncoded":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v7, "sb":Ljava/lang/StringBuilder;
    :goto_1
    const-string v9, "=?"

    invoke-virtual {p0, v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, "begin":I
    if-ne v0, v11, :cond_1

    .line 104
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 111
    :cond_1
    add-int/lit8 v9, v0, 0x2

    invoke-virtual {p0, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 112
    .local v5, "qm1":I
    if-ne v5, v11, :cond_2

    .line 113
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 117
    :cond_2
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 118
    .local v6, "qm2":I
    if-ne v6, v11, :cond_3

    .line 119
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 123
    :cond_3
    const-string v9, "?="

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 124
    .local v2, "end":I
    if-ne v2, v11, :cond_4

    .line 125
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 128
    :cond_4
    add-int/lit8 v2, v2, 0x2

    .line 130
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "sep":Ljava/lang/String;
    invoke-static {p0, v0, v2, p1}, Lcom/fsck/k9/mail/internet/DecoderUtil;->decodeEncodedWord(Ljava/lang/String;IILcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "decoded":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 134
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_2
    move v3, v2

    .line 144
    if-eqz v1, :cond_8

    const/4 v4, 0x1

    .line 145
    :goto_3
    goto :goto_1

    .line 137
    :cond_5
    if-eqz v4, :cond_6

    invoke-static {v8}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 138
    :cond_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_7
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 144
    :cond_8
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "encodedWord"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 58
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 59
    .local v1, "c":C
    const/16 v6, 0x5f

    if-ne v1, v6, :cond_0

    .line 60
    const-string v6, "=20"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 66
    .end local v1    # "c":C
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "US-ASCII"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 68
    .local v0, "bytes":[B
    new-instance v4, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v4, "is":Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
    :try_start_0
    invoke-static {v4, p1}, Lcom/fsck/k9/mail/internet/CharsetSupport;->readToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 72
    :goto_2
    return-object v6

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_2
.end method

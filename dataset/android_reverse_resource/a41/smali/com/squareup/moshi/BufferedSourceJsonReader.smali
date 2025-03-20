.class final Lcom/squareup/moshi/BufferedSourceJsonReader;
.super Lcom/squareup/moshi/JsonReader;
.source "BufferedSourceJsonReader.java"


# static fields
.field private static final DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe

.field private static final SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final UNQUOTED_STRING_TERMINALS:Lokio/ByteString;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private failOnUnknown:Z

.field private lenient:Z

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private final source:Lokio/BufferedSource;

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "\'\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/BufferedSourceJsonReader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 28
    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/BufferedSourceJsonReader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 29
    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 30
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/BufferedSourceJsonReader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 31
    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/BufferedSourceJsonReader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;)V
    .locals 4
    .param p1, "source"    # Lokio/BufferedSource;

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/squareup/moshi/JsonReader;-><init>()V

    .line 65
    iput-boolean v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->lenient:Z

    .line 68
    iput-boolean v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->failOnUnknown:Z

    .line 74
    iput v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 98
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    .line 99
    iput v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    .line 101
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    iget v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 104
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathNames:[Ljava/lang/String;

    .line 105
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    .line 112
    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    .line 113
    return-void
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 990
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 992
    :cond_0
    return-void
.end method

.method private doPeek()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 239
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v6, v7

    .line 240
    .local v1, "peekStack":I
    if-ne v1, v4, :cond_2

    .line 241
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v3, v6, v7

    .line 327
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 328
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 360
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekKeyword()I

    move-result v2

    .line 361
    .local v2, "result":I
    if-eqz v2, :cond_10

    .line 375
    .end local v2    # "result":I
    :cond_1
    :goto_1
    return v2

    .line 242
    .end local v0    # "c":I
    :cond_2
    if-ne v1, v3, :cond_3

    .line 244
    invoke-direct {p0, v4}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 245
    .restart local v0    # "c":I
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    .line 246
    sparse-switch v0, :sswitch_data_1

    .line 254
    const-string v3, "Unterminated array"

    invoke-direct {p0, v3}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 248
    :sswitch_1
    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto :goto_1

    .line 250
    :sswitch_2
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    goto :goto_0

    .line 256
    .end local v0    # "c":I
    :cond_3
    const/4 v6, 0x3

    if-eq v1, v6, :cond_4

    if-ne v1, v8, :cond_8

    .line 257
    :cond_4
    iget-object v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    iget v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v2, v5, v6

    .line 259
    if-ne v1, v8, :cond_5

    .line 260
    invoke-direct {p0, v4}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 261
    .restart local v0    # "c":I
    iget-object v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    .line 262
    sparse-switch v0, :sswitch_data_2

    .line 270
    const-string v3, "Unterminated object"

    invoke-direct {p0, v3}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 264
    :sswitch_3
    iput v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 266
    :sswitch_4
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    .line 273
    .end local v0    # "c":I
    :cond_5
    :sswitch_5
    invoke-direct {p0, v4}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 274
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_3

    .line 290
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    .line 291
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/squareup/moshi/BufferedSourceJsonReader;->isLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 292
    const/16 v2, 0xe

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto :goto_1

    .line 276
    :sswitch_6
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 277
    const/16 v2, 0xd

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto :goto_1

    .line 279
    :sswitch_7
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 280
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    .line 281
    const/16 v2, 0xc

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto :goto_1

    .line 283
    :sswitch_8
    if-eq v1, v8, :cond_6

    .line 284
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 285
    iput v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 287
    :cond_6
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 294
    :cond_7
    const-string v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 297
    .end local v0    # "c":I
    :cond_8
    if-ne v1, v2, :cond_9

    .line 298
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v8, v6, v7

    .line 300
    invoke-direct {p0, v4}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 301
    .restart local v0    # "c":I
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    .line 302
    packed-switch v0, :pswitch_data_0

    .line 312
    :pswitch_1
    const-string v3, "Expected \':\'"

    invoke-direct {p0, v3}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 306
    :pswitch_2
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    .line 307
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    const-wide/16 v8, 0x1

    invoke-interface {v6, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v6

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_0

    .line 308
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    goto/16 :goto_0

    .line 314
    .end local v0    # "c":I
    :cond_9
    const/4 v6, 0x6

    if-ne v1, v6, :cond_a

    .line 315
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v5, v6, v7

    goto/16 :goto_0

    .line 316
    :cond_a
    if-ne v1, v5, :cond_c

    .line 317
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 318
    .restart local v0    # "c":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_b

    .line 319
    const/16 v2, 0x11

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto/16 :goto_1

    .line 321
    :cond_b
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    goto/16 :goto_0

    .line 323
    .end local v0    # "c":I
    :cond_c
    const/16 v6, 0x8

    if-ne v1, v6, :cond_0

    .line 324
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 330
    .restart local v0    # "c":I
    :sswitch_9
    if-ne v1, v4, :cond_d

    .line 331
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 332
    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto/16 :goto_1

    .line 338
    :cond_d
    :sswitch_a
    if-eq v1, v4, :cond_e

    if-ne v1, v3, :cond_f

    .line 339
    :cond_e
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    .line 340
    iput v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    move v2, v5

    goto/16 :goto_1

    .line 342
    :cond_f
    const-string v3, "Unexpected value"

    invoke-direct {p0, v3}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 345
    :sswitch_b
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    .line 346
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 347
    const/16 v2, 0x8

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto/16 :goto_1

    .line 349
    :sswitch_c
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 350
    const/16 v2, 0x9

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto/16 :goto_1

    .line 352
    :sswitch_d
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 353
    const/4 v2, 0x3

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto/16 :goto_1

    .line 355
    :sswitch_e
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 356
    iput v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    move v2, v4

    goto/16 :goto_1

    .line 365
    .restart local v2    # "result":I
    :cond_10
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekNumber()I

    move-result v2

    .line 366
    if-nez v2, :cond_1

    .line 370
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    invoke-direct {p0, v3}, Lcom/squareup/moshi/BufferedSourceJsonReader;->isLiteral(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 371
    const-string v3, "Expected value"

    invoke-direct {p0, v3}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 374
    :cond_11
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    .line 375
    const/16 v2, 0xa

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto/16 :goto_1

    .line 328
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 246
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 262
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 274
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 302
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isLiteral(I)Z
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    sparse-switch p1, :sswitch_data_0

    .line 531
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 517
    :sswitch_0
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    .line 529
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 8
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 932
    const/4 v1, 0x0

    .line 933
    .local v1, "p":I
    :goto_0
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    add-int/lit8 v5, v1, 0x1

    int-to-long v6, v5

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 934
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "p":I
    .local v2, "p":I
    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 935
    .local v0, "c":I
    const/16 v4, 0xa

    if-eq v0, v4, :cond_7

    const/16 v4, 0x20

    if-eq v0, v4, :cond_7

    const/16 v4, 0xd

    if-eq v0, v4, :cond_7

    const/16 v4, 0x9

    if-ne v0, v4, :cond_0

    move v1, v2

    .line 936
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_0

    .line 939
    .end local v1    # "p":I
    .restart local v2    # "p":I
    :cond_0
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    add-int/lit8 v5, v2, -0x1

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->skip(J)V

    .line 940
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_3

    .line 941
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    const-wide/16 v6, 0x2

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 984
    .end local v0    # "c":I
    .end local v2    # "p":I
    .restart local v1    # "p":I
    :goto_1
    return v0

    .line 945
    .end local v1    # "p":I
    .restart local v0    # "c":I
    .restart local v2    # "p":I
    :cond_1
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    .line 946
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v3

    .line 947
    .local v3, "peek":B
    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 969
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_1

    .line 950
    .end local v1    # "p":I
    .restart local v2    # "p":I
    :sswitch_0
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 951
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 952
    const-string v4, "*/"

    invoke-direct {p0, v4}, Lcom/squareup/moshi/BufferedSourceJsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 953
    const-string v4, "Unterminated comment"

    invoke-direct {p0, v4}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 955
    :cond_2
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 956
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 957
    const/4 v1, 0x0

    .line 958
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_0

    .line 962
    .end local v1    # "p":I
    .restart local v2    # "p":I
    :sswitch_1
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 963
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 964
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->skipToEndOfLine()V

    .line 965
    const/4 v1, 0x0

    .line 966
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto/16 :goto_0

    .line 971
    .end local v1    # "p":I
    .end local v3    # "peek":B
    .restart local v2    # "p":I
    :cond_3
    const/16 v4, 0x23

    if-ne v0, v4, :cond_4

    .line 974
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->checkLenient()V

    .line 975
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->skipToEndOfLine()V

    .line 976
    const/4 v1, 0x0

    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto/16 :goto_0

    .end local v1    # "p":I
    .restart local v2    # "p":I
    :cond_4
    move v1, v2

    .line 978
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_1

    .line 981
    .end local v0    # "c":I
    :cond_5
    if-eqz p1, :cond_6

    .line 982
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "End of input"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 984
    :cond_6
    const/4 v0, -0x1

    goto :goto_1

    .end local v1    # "p":I
    .restart local v0    # "c":I
    .restart local v2    # "p":I
    :cond_7
    move v1, v2

    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto/16 :goto_0

    .line 947
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;
    .locals 6
    .param p1, "runTerminator"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 749
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    invoke-interface {v4, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    .line 750
    .local v2, "index":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const-string v4, "Unterminated string"

    invoke-direct {p0, v4}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 753
    :cond_0
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 754
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 757
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->readEscapeCharacter()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 762
    :cond_2
    if-nez v0, :cond_3

    .line 763
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 769
    .end local v1    # "result":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 767
    :cond_3
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 769
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    sget-object v3, Lcom/squareup/moshi/BufferedSourceJsonReader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v2, v3}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 777
    .local v0, "i":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private peekKeyword()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 380
    iget-object v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 384
    .local v0, "c":B
    const/16 v7, 0x74

    if-eq v0, v7, :cond_0

    const/16 v7, 0x54

    if-ne v0, v7, :cond_1

    .line 385
    :cond_0
    const-string v2, "true"

    .line 386
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 387
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x5

    .line 401
    .local v5, "peeking":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 402
    .local v4, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_8

    .line 403
    iget-object v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    add-int/lit8 v8, v1, 0x1

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v7

    if-nez v7, :cond_6

    move v5, v6

    .line 418
    .end local v1    # "i":I
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "peeking":I
    :goto_2
    return v5

    .line 388
    :cond_1
    const/16 v7, 0x66

    if-eq v0, v7, :cond_2

    const/16 v7, 0x46

    if-ne v0, v7, :cond_3

    .line 389
    :cond_2
    const-string v2, "false"

    .line 390
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 391
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x6

    .restart local v5    # "peeking":I
    goto :goto_0

    .line 392
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_3
    const/16 v7, 0x6e

    if-eq v0, v7, :cond_4

    const/16 v7, 0x4e

    if-ne v0, v7, :cond_5

    .line 393
    :cond_4
    const-string v2, "null"

    .line 394
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 395
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x7

    .restart local v5    # "peeking":I
    goto :goto_0

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_5
    move v5, v6

    .line 397
    goto :goto_2

    .line 406
    .restart local v1    # "i":I
    .restart local v2    # "keyword":Ljava/lang/String;
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v5    # "peeking":I
    :cond_6
    iget-object v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 407
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    move v5, v6

    .line 408
    goto :goto_2

    .line 402
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_8
    iget-object v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    add-int/lit8 v8, v4, 0x1

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    invoke-direct {p0, v7}, Lcom/squareup/moshi/BufferedSourceJsonReader;->isLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_9

    move v5, v6

    .line 413
    goto :goto_2

    .line 417
    :cond_9
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    int-to-long v8, v4

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 418
    iput v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto :goto_2
.end method

.method private peekNumber()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    const-wide/16 v8, 0x0

    .line 423
    .local v8, "value":J
    const/4 v4, 0x0

    .line 424
    .local v4, "negative":Z
    const/4 v1, 0x1

    .line 425
    .local v1, "fitsInLong":Z
    const/4 v3, 0x0

    .line 427
    .local v3, "last":I
    const/4 v2, 0x0

    .line 431
    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    add-int/lit8 v10, v2, 0x1

    int-to-long v10, v10

    invoke-interface {v5, v10, v11}, Lokio/BufferedSource;->request(J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 497
    :cond_0
    const/4 v5, 0x2

    if-ne v3, v5, :cond_15

    if-eqz v1, :cond_15

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v5, v8, v10

    if-nez v5, :cond_1

    if-eqz v4, :cond_15

    .line 498
    :cond_1
    if-eqz v4, :cond_14

    .end local v8    # "value":J
    :goto_1
    iput-wide v8, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedLong:J

    .line 499
    iget-object v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Lokio/Buffer;->skip(J)V

    .line 500
    const/16 v5, 0xf

    iput v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 506
    :goto_2
    return v5

    .line 435
    .restart local v8    # "value":J
    :cond_2
    iget-object v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 436
    .local v0, "c":B
    sparse-switch v0, :sswitch_data_0

    .line 471
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_b

    .line 472
    :cond_3
    invoke-direct {p0, v0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->isLiteral(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    const/4 v5, 0x0

    goto :goto_2

    .line 438
    :sswitch_0
    if-nez v3, :cond_5

    .line 439
    const/4 v4, 0x1

    .line 440
    const/4 v3, 0x1

    .line 430
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    .line 443
    const/4 v3, 0x6

    .line 444
    goto :goto_3

    .line 446
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 449
    :sswitch_1
    const/4 v5, 0x5

    if-ne v3, v5, :cond_7

    .line 450
    const/4 v3, 0x6

    .line 451
    goto :goto_3

    .line 453
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 457
    :sswitch_2
    const/4 v5, 0x2

    if-eq v3, v5, :cond_8

    const/4 v5, 0x4

    if-ne v3, v5, :cond_9

    .line 458
    :cond_8
    const/4 v3, 0x5

    .line 459
    goto :goto_3

    .line 461
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 464
    :sswitch_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    .line 465
    const/4 v3, 0x3

    .line 466
    goto :goto_3

    .line 468
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 477
    :cond_b
    const/4 v5, 0x1

    if-eq v3, v5, :cond_c

    if-nez v3, :cond_d

    .line 478
    :cond_c
    add-int/lit8 v5, v0, -0x30

    neg-int v5, v5

    int-to-long v8, v5

    .line 479
    const/4 v3, 0x2

    goto :goto_3

    .line 480
    :cond_d
    const/4 v5, 0x2

    if-ne v3, v5, :cond_11

    .line 481
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_e

    .line 482
    const/4 v5, 0x0

    goto :goto_2

    .line 484
    :cond_e
    const-wide/16 v10, 0xa

    mul-long/2addr v10, v8

    add-int/lit8 v5, v0, -0x30

    int-to-long v12, v5

    sub-long v6, v10, v12

    .line 485
    .local v6, "newValue":J
    const-wide v10, -0xcccccccccccccccL

    cmp-long v5, v8, v10

    if-gtz v5, :cond_f

    const-wide v10, -0xcccccccccccccccL

    cmp-long v5, v8, v10

    if-nez v5, :cond_10

    cmp-long v5, v6, v8

    if-gez v5, :cond_10

    :cond_f
    const/4 v5, 0x1

    :goto_4
    and-int/2addr v1, v5

    .line 487
    move-wide v8, v6

    .line 488
    goto :goto_3

    .line 485
    :cond_10
    const/4 v5, 0x0

    goto :goto_4

    .line 488
    .end local v6    # "newValue":J
    :cond_11
    const/4 v5, 0x3

    if-ne v3, v5, :cond_12

    .line 489
    const/4 v3, 0x4

    goto :goto_3

    .line 490
    :cond_12
    const/4 v5, 0x5

    if-eq v3, v5, :cond_13

    const/4 v5, 0x6

    if-ne v3, v5, :cond_4

    .line 491
    :cond_13
    const/4 v3, 0x7

    goto :goto_3

    .line 498
    .end local v0    # "c":B
    :cond_14
    neg-long v8, v8

    goto/16 :goto_1

    .line 501
    :cond_15
    const/4 v5, 0x2

    if-eq v3, v5, :cond_16

    const/4 v5, 0x4

    if-eq v3, v5, :cond_16

    const/4 v5, 0x7

    if-ne v3, v5, :cond_17

    .line 503
    :cond_16
    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedNumberLength:I

    .line 504
    const/16 v5, 0x10

    iput v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    goto/16 :goto_2

    .line 506
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 436
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private push(I)V
    .locals 6
    .param p1, "newTop"    # I

    .prologue
    const/4 v5, 0x0

    .line 903
    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 904
    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 905
    .local v2, "newStack":[I
    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    .line 906
    .local v0, "newPathIndices":[I
    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 907
    .local v1, "newPathNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    iget v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathNames:[Ljava/lang/String;

    iget v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    iput-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    .line 911
    iput-object v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    .line 912
    iput-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathNames:[Ljava/lang/String;

    .line 914
    .end local v0    # "newPathIndices":[I
    .end local v1    # "newPathNames":[Ljava/lang/String;
    .end local v2    # "newStack":[I
    :cond_0
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    iget v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    aput p1, v3, v4

    .line 915
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x4

    .line 1037
    iget-object v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    const-wide/16 v6, 0x1

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1038
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1041
    :cond_0
    iget-object v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    move-result v2

    .line 1042
    .local v2, "escaped":B
    sparse-switch v2, :sswitch_data_0

    .line 1085
    int-to-char v4, v2

    :goto_0
    return v4

    .line 1044
    :sswitch_0
    iget-object v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    invoke-interface {v5, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1045
    new-instance v5, Ljava/io/EOFException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unterminated escape sequence at path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1048
    :cond_1
    const/4 v4, 0x0

    .line 1049
    .local v4, "result":C
    const/4 v3, 0x0

    .local v3, "i":I
    add-int/lit8 v1, v3, 0x4

    .local v1, "end":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 1050
    iget-object v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    int-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 1051
    .local v0, "c":B
    shl-int/lit8 v5, v4, 0x4

    int-to-char v4, v5

    .line 1052
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 1053
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v4, v5

    .line 1049
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1054
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x66

    if-gt v0, v5, :cond_3

    .line 1055
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_2

    .line 1056
    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x46

    if-gt v0, v5, :cond_4

    .line 1057
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_2

    .line 1059
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1062
    .end local v0    # "c":B
    :cond_5
    iget-object v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v5, v8, v9}, Lokio/Buffer;->skip(J)V

    goto/16 :goto_0

    .line 1066
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "result":C
    :sswitch_1
    const/16 v4, 0x9

    goto/16 :goto_0

    .line 1069
    :sswitch_2
    const/16 v4, 0x8

    goto/16 :goto_0

    .line 1072
    :sswitch_3
    const/16 v4, 0xa

    goto/16 :goto_0

    .line 1075
    :sswitch_4
    const/16 v4, 0xd

    goto/16 :goto_0

    .line 1078
    :sswitch_5
    const/16 v4, 0xc

    goto/16 :goto_0

    .line 1042
    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(Lokio/ByteString;)V
    .locals 8
    .param p1, "runTerminator"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    .line 782
    :goto_0
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 783
    .local v0, "index":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v2, "Unterminated string"

    invoke-direct {p0, v2}, Lcom/squareup/moshi/BufferedSourceJsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 785
    :cond_0
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1

    .line 786
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    add-long v4, v0, v6

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 787
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->readEscapeCharacter()C

    goto :goto_0

    .line 789
    :cond_1
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    add-long v4, v0, v6

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 790
    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    :goto_0
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1010
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1011
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    goto :goto_0

    .line 1010
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1016
    :cond_1
    const/4 v1, 0x1

    .line 1018
    .end local v0    # "c":I
    :goto_2
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    sget-object v3, Lcom/squareup/moshi/BufferedSourceJsonReader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    invoke-interface {v2, v3}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 1001
    .local v0, "index":J
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :goto_0
    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 1002
    return-void

    .line 1001
    :cond_0
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    sget-object v3, Lcom/squareup/moshi/BufferedSourceJsonReader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v2, v3}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 797
    .local v0, "i":J
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .end local v0    # "i":J
    :goto_0
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 798
    return-void

    .line 797
    .restart local v0    # "i":J
    :cond_0
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v0

    goto :goto_0
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 132
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 133
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 136
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 137
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/squareup/moshi/BufferedSourceJsonReader;->push(I)V

    .line 138
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput v3, v1, v2

    .line 139
    iput v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 144
    return-void

    .line 141
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 163
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 166
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 167
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/squareup/moshi/BufferedSourceJsonReader;->push(I)V

    .line 168
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 173
    return-void

    .line 170
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 171
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 856
    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 857
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 858
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    .line 859
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 860
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 861
    return-void
.end method

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 148
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 151
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 152
    iget v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    .line 153
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 154
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 159
    return-void

    .line 156
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 157
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 177
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 180
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 181
    iget v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    .line 182
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 183
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 184
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 189
    return-void

    .line 186
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 187
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public failOnUnknown()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->failOnUnknown:Z

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1026
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stack:[I

    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/moshi/JsonScope;->getPath(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 193
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 196
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 617
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 618
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 621
    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 622
    iput v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 623
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 624
    const/4 v1, 0x1

    .line 628
    :goto_0
    return v1

    .line 625
    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 626
    iput v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 627
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_0

    .line 630
    :cond_2
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    .line 648
    iget v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 649
    .local v1, "p":I
    if-nez v1, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v1

    .line 653
    :cond_0
    const/16 v4, 0xf

    if-ne v1, v4, :cond_1

    .line 654
    iput v8, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 655
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 656
    iget-wide v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedLong:J

    long-to-double v2, v4

    .line 686
    :goto_0
    return-wide v2

    .line 659
    :cond_1
    const/16 v4, 0x10

    if-ne v1, v4, :cond_4

    .line 660
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    iget v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedNumberLength:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    .line 671
    :cond_2
    :goto_1
    iput v9, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 674
    :try_start_0
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 679
    .local v2, "result":D
    iget-boolean v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->lenient:Z

    if-nez v4, :cond_8

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 680
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON forbids NaN and infinities: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 681
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 661
    .end local v2    # "result":D
    :cond_4
    const/16 v4, 0x9

    if-ne v1, v4, :cond_5

    .line 662
    sget-object v4, Lcom/squareup/moshi/BufferedSourceJsonReader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v4}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 663
    :cond_5
    const/16 v4, 0x8

    if-ne v1, v4, :cond_6

    .line 664
    sget-object v4, Lcom/squareup/moshi/BufferedSourceJsonReader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v4}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 665
    :cond_6
    const/16 v4, 0xa

    if-ne v1, v4, :cond_7

    .line 666
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 667
    :cond_7
    if-eq v1, v9, :cond_2

    .line 668
    new-instance v4, Lcom/squareup/moshi/JsonDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a double but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/squareup/moshi/JsonDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a double but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 677
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 683
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "result":D
    :cond_8
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    .line 684
    iput v8, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 685
    iget-object v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v5, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xb

    const/16 v7, 0x9

    const/4 v10, 0x0

    .line 801
    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 802
    .local v3, "p":I
    if-nez v3, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v3

    .line 807
    :cond_0
    const/16 v6, 0xf

    if-ne v3, v6, :cond_2

    .line 808
    iget-wide v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedLong:J

    long-to-int v4, v6

    .line 809
    .local v4, "result":I
    iget-wide v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedLong:J

    int-to-long v8, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 810
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected an int but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedLong:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 811
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 813
    :cond_1
    iput v10, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 814
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    move v5, v4

    .line 852
    .end local v4    # "result":I
    .local v5, "result":I
    :goto_0
    return v5

    .line 818
    .end local v5    # "result":I
    :cond_2
    const/16 v6, 0x10

    if-ne v3, v6, :cond_4

    .line 819
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedNumberLength:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    .line 836
    :cond_3
    :goto_1
    iput v11, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 839
    :try_start_0
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 844
    .local v0, "asDouble":D
    double-to-int v4, v0

    .line 845
    .restart local v4    # "result":I
    int-to-double v6, v4

    cmpl-double v6, v6, v0

    if-eqz v6, :cond_8

    .line 846
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected an int but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 847
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 820
    .end local v0    # "asDouble":D
    .end local v4    # "result":I
    :cond_4
    if-eq v3, v7, :cond_5

    const/16 v6, 0x8

    if-ne v3, v6, :cond_7

    .line 821
    :cond_5
    if-ne v3, v7, :cond_6

    sget-object v6, Lcom/squareup/moshi/BufferedSourceJsonReader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 822
    invoke-direct {p0, v6}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v6

    .line 823
    :goto_2
    iput-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    .line 825
    :try_start_1
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 826
    .restart local v4    # "result":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 827
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v4

    .line 828
    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto :goto_0

    .line 822
    .end local v5    # "result":I
    :cond_6
    sget-object v6, Lcom/squareup/moshi/BufferedSourceJsonReader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 823
    invoke-direct {p0, v6}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 832
    :cond_7
    if-eq v3, v11, :cond_3

    .line 833
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected an int but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 840
    :catch_0
    move-exception v2

    .line 841
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected an int but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 842
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 849
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "asDouble":D
    .restart local v4    # "result":I
    :cond_8
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    .line 850
    iput v10, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 851
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    move v5, v4

    .line 852
    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto/16 :goto_0

    .line 829
    .end local v0    # "asDouble":D
    .end local v5    # "result":I
    :catch_1
    move-exception v6

    goto/16 :goto_1
.end method

.method public nextLong()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xb

    const/16 v7, 0x9

    const/4 v10, 0x0

    .line 690
    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 691
    .local v3, "p":I
    if-nez v3, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v3

    .line 695
    :cond_0
    const/16 v6, 0xf

    if-ne v3, v6, :cond_1

    .line 696
    iput v10, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 697
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    .line 698
    iget-wide v4, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedLong:J

    .line 736
    :goto_0
    return-wide v4

    .line 701
    :cond_1
    const/16 v6, 0x10

    if-ne v3, v6, :cond_3

    .line 702
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedNumberLength:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    .line 720
    :cond_2
    :goto_1
    iput v11, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 723
    :try_start_0
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 728
    .local v0, "asDouble":D
    double-to-long v4, v0

    .line 729
    .local v4, "result":J
    long-to-double v6, v4

    cmpl-double v6, v6, v0

    if-eqz v6, :cond_7

    .line 730
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected a long but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 731
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 703
    .end local v0    # "asDouble":D
    .end local v4    # "result":J
    :cond_3
    if-eq v3, v7, :cond_4

    const/16 v6, 0x8

    if-ne v3, v6, :cond_6

    .line 704
    :cond_4
    if-ne v3, v7, :cond_5

    sget-object v6, Lcom/squareup/moshi/BufferedSourceJsonReader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 705
    invoke-direct {p0, v6}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v6

    .line 706
    :goto_2
    iput-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    .line 708
    :try_start_1
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 709
    .restart local v4    # "result":J
    const/4 v6, 0x0

    iput v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 710
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 712
    .end local v4    # "result":J
    :catch_0
    move-exception v6

    goto :goto_1

    .line 705
    :cond_5
    sget-object v6, Lcom/squareup/moshi/BufferedSourceJsonReader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 706
    invoke-direct {p0, v6}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 715
    :cond_6
    if-eq v3, v11, :cond_2

    .line 716
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected a long but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 717
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 724
    :catch_1
    move-exception v2

    .line 725
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected a long but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 726
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 733
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "asDouble":D
    .restart local v4    # "result":J
    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    .line 734
    iput v10, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 735
    iget-object v6, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v7, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    goto/16 :goto_0
.end method

.method public nextName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 537
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 541
    :cond_0
    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 551
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 552
    return-object v1

    .line 543
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 544
    sget-object v2, Lcom/squareup/moshi/BufferedSourceJsonReader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 545
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    .line 546
    sget-object v2, Lcom/squareup/moshi/BufferedSourceJsonReader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 548
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextNull()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 635
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 638
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 639
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 640
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 641
    const/4 v1, 0x0

    return-object v1

    .line 643
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 574
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 578
    :cond_0
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 579
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 595
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 596
    return-object v1

    .line 580
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    .line 581
    sget-object v2, Lcom/squareup/moshi/BufferedSourceJsonReader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 582
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 583
    sget-object v2, Lcom/squareup/moshi/BufferedSourceJsonReader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 584
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    .line 585
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    .line 586
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 587
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v2, 0xf

    if-ne v0, v2, :cond_5

    .line 588
    iget-wide v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 589
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    .line 590
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedNumberLength:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 592
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public peek()Lcom/squareup/moshi/JsonReader$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 201
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 205
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 234
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 207
    :pswitch_0
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    .line 232
    :goto_0
    return-object v1

    .line 209
    :pswitch_1
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 211
    :pswitch_2
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 213
    :pswitch_3
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 217
    :pswitch_4
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NAME:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 220
    :pswitch_5
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BOOLEAN:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 222
    :pswitch_6
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 227
    :pswitch_7
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->STRING:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 230
    :pswitch_8
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 232
    :pswitch_9
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method promoteNameToValue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedString:Ljava/lang/String;

    .line 1100
    const/16 v0, 0xb

    iput v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 1102
    :cond_0
    return-void
.end method

.method selectName(Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 5
    .param p1, "options"    # Lcom/squareup/moshi/JsonReader$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 556
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 557
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 560
    :cond_0
    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    move v1, v2

    .line 569
    :cond_1
    :goto_0
    return v1

    .line 564
    :cond_2
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    iget-object v4, p1, Lcom/squareup/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v3, v4}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v1

    .line 565
    .local v1, "result":I
    if-eq v1, v2, :cond_1

    .line 566
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 567
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p1, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    goto :goto_0
.end method

.method selectString(Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 5
    .param p1, "options"    # Lcom/squareup/moshi/JsonReader$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 600
    iget v0, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 601
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v0

    .line 604
    :cond_0
    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    move v1, v2

    .line 613
    :cond_1
    :goto_0
    return v1

    .line 608
    :cond_2
    iget-object v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    iget-object v4, p1, Lcom/squareup/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v3, v4}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v1

    .line 609
    .local v1, "result":I
    if-eq v1, v2, :cond_1

    .line 610
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 611
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_0
.end method

.method public setFailOnUnknown(Z)V
    .locals 0
    .param p1, "failOnUnknown"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->failOnUnknown:Z

    .line 125
    return-void
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->lenient:Z

    .line 117
    return-void
.end method

.method public skipValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 864
    iget-boolean v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->failOnUnknown:Z

    if-eqz v2, :cond_0

    .line 865
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot skip unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 867
    :cond_0
    const/4 v0, 0x0

    .line 869
    .local v0, "count":I
    :cond_1
    iget v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 870
    .local v1, "p":I
    if-nez v1, :cond_2

    .line 871
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->doPeek()I

    move-result v1

    .line 874
    :cond_2
    if-ne v1, v7, :cond_4

    .line 875
    invoke-direct {p0, v6}, Lcom/squareup/moshi/BufferedSourceJsonReader;->push(I)V

    .line 876
    add-int/lit8 v0, v0, 0x1

    .line 895
    :cond_3
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peeked:I

    .line 896
    if-nez v0, :cond_1

    .line 898
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 899
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    const-string v4, "null"

    aput-object v4, v2, v3

    .line 900
    return-void

    .line 877
    :cond_4
    if-ne v1, v6, :cond_5

    .line 878
    invoke-direct {p0, v7}, Lcom/squareup/moshi/BufferedSourceJsonReader;->push(I)V

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 881
    iget v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    .line 882
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 883
    :cond_6
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 884
    iget v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->stackSize:I

    .line 885
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 886
    :cond_7
    const/16 v2, 0xe

    if-eq v1, v2, :cond_8

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 887
    :cond_8
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSourceJsonReader;->skipUnquotedValue()V

    goto :goto_0

    .line 888
    :cond_9
    const/16 v2, 0x9

    if-eq v1, v2, :cond_a

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    .line 889
    :cond_a
    sget-object v2, Lcom/squareup/moshi/BufferedSourceJsonReader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/BufferedSourceJsonReader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_0

    .line 890
    :cond_b
    const/16 v2, 0x8

    if-eq v1, v2, :cond_c

    const/16 v2, 0xc

    if-ne v1, v2, :cond_d

    .line 891
    :cond_c
    sget-object v2, Lcom/squareup/moshi/BufferedSourceJsonReader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/BufferedSourceJsonReader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_0

    .line 892
    :cond_d
    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 893
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->buffer:Lokio/Buffer;

    iget v3, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->peekedNumberLength:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonReader("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/moshi/BufferedSourceJsonReader;->source:Lokio/BufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
